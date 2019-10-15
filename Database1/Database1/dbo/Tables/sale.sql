CREATE TABLE [dbo].[sale] (
    [saleID]   INT   NOT NULL,
    [custID]   INT   NULL,
    [prodID]   INT   NULL,
    [qty]      INT   NULL,
    [price]    MONEY NULL,
    [saleDate] DATE  NULL,
    PRIMARY KEY CLUSTERED ([saleID] ASC),
    FOREIGN KEY ([custID]) REFERENCES [dbo].[customer] ([custID]),
    FOREIGN KEY ([prodID]) REFERENCES [dbo].[product] ([prodID])
);

