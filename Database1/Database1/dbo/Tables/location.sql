CREATE TABLE [dbo].[location] (
    [locID]  NVARCHAR (5) NOT NULL,
    [minQty] INT          NULL,
    [maxQty] INT          NULL,
    PRIMARY KEY CLUSTERED ([locID] ASC),
    CONSTRAINT [check_locID_length] CHECK (len([locId])=(5)),
    CONSTRAINT [check_maxQty_greater_mixQty] CHECK ([maxQty]>=[minQty]),
    CONSTRAINT [check_maxQty_range] CHECK ([maxQty]>=(0) AND [maxQty]<=(999)),
    CONSTRAINT [check_minQty_range] CHECK ([minQty]>=(0) AND [minQty]<=(999))
);

