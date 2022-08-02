CREATE TABLE [dbo].[Tip] (
    [tipID]         INT            NULL,
    [title]         NVARCHAR (100) NULL,
    [description]   NVARCHAR (500) NULL,
    [previousTipID] NVARCHAR (500) NULL,
    [creationDate]  NVARCHAR (500) NULL,
    [active]        BIT            NULL
);

