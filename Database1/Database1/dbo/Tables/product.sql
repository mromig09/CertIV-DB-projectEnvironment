CREATE TABLE [dbo].[product] (
    [prodID]       INT            NOT NULL,
    [prodName]     NVARCHAR (100) NULL,
    [sellingPrice] MONEY          NULL,
    [sales_ytd]    MONEY          NULL,
    PRIMARY KEY CLUSTERED ([prodID] ASC)
);

