CREATE TABLE [dbo].[ProductUpdates] (
    [ProductUpdateID]         INT            IDENTITY (1, 1) NOT NULL,
    [Title]                   NVARCHAR (100) NULL,
    [Description]             NVARCHAR (MAX) NOT NULL,
    [Version]                 NVARCHAR (30)  NULL,
    [PreviousProductUpdateID] INT            NULL,
    [CreationDate]            DATETIME       NOT NULL,
    [Active]                  BIT            CONSTRAINT [DF__ProductUp__Activ__73501C2F] DEFAULT ('true') NOT NULL,
    CONSTRAINT [PK__ProductU__2EE49661C5464CD2] PRIMARY KEY CLUSTERED ([ProductUpdateID] ASC),
    CONSTRAINT [FK__ProductUp__Activ__74444068] FOREIGN KEY ([PreviousProductUpdateID]) REFERENCES [dbo].[ProductUpdates] ([ProductUpdateID])
);

