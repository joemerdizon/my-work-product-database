CREATE TABLE [dbo].[StorageAccountTypes] (
    [AccountTypeID] INT            IDENTITY (1, 1) NOT NULL,
    [AccountName]   NVARCHAR (MAX) NOT NULL,
    [ProviderID]    INT            NULL,
    CONSTRAINT [PK_StorageAccountTypes] PRIMARY KEY CLUSTERED ([AccountTypeID] ASC),
    CONSTRAINT [FK_dbo.ProviderID_dbo.StorageAccountTypes] FOREIGN KEY ([ProviderID]) REFERENCES [dbo].[Providers] ([ProviderID])
);

