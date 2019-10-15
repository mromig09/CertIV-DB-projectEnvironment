CREATE TABLE [dbo].[assignment] (
dateAssigned				date,
staffID						int,
locCode						int
primary key (dateassigned),
foreign key (staffID) references employee,
foreign key (locCode) references office
);