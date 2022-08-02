CREATE TABLE [dbo].[ActionList] (
    [ActionItemID]      INT            IDENTITY (1, 1) NOT NULL,
    [ActionName]        NVARCHAR (100) NULL,
    [ActionDescription] NVARCHAR (500) NULL,
    [IsActive]          BIT            NULL,
    CONSTRAINT [PK__ActionLi__56285AD2685CA4C6] PRIMARY KEY CLUSTERED ([ActionItemID] ASC)
);

