CREATE TABLE [dbo].[log] (
    [logID]           INT            NOT NULL,
    [studentID]       INT            NULL,
    [dateTimeChanged] NVARCHAR (1)   NULL,
    [dbUser]          NVARCHAR (100) NULL,
    [oldLastName]     NVARCHAR (100) NULL,
    [newLastName]     NVARCHAR (100) NULL,
    [oldFirstName]    NVARCHAR (100) NULL,
    [newFirstName]    NVARCHAR (100) NULL,
    [oldMobile]       INT            NULL,
    [newMobile]       INT            NULL,
    PRIMARY KEY CLUSTERED ([logID] ASC),
    FOREIGN KEY ([studentID]) REFERENCES [dbo].[student] ([studentID])
);

