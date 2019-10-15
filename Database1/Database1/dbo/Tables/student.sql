CREATE TABLE [dbo].[student] (
    [studentID] INT           NOT NULL,
    [lastName]  NVARCHAR (50) NULL,
    [firstName] NVARCHAR (50) NULL,
    [mobile]    INT           NULL,
    PRIMARY KEY CLUSTERED ([studentID] ASC)
);


GO
create trigger insert_student
on student
for insert
not for replication
as
begin
insert into [log] (logID, studentId, dateTimeChanged, dbUser, oldLastName, newLastName, 
                  oldFirstName, newFirstName, oldMobile, newMobile)
select Next value for logIDSeq, i.studentID, GETDATE(), CURRENT_USER, null, i.lastName, null,
                  i.firstName, null, i.mobile
from inserted i
end
