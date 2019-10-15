CREATE TABLE [dbo].[customer] (
    [custID]    INT            NOT NULL,
    [custName]  NVARCHAR (100) NULL,
    [sales_ytd] INT            NULL,
    [status]    NVARCHAR (7)   NULL,
    PRIMARY KEY CLUSTERED ([custID] ASC)
);

