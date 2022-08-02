CREATE TABLE [dbo].[ProviderStorageAccountType] (
    [AccountTypeID]                INT NOT NULL,
    [ProviderStorageAccountTypeID] INT IDENTITY (1, 1) NOT NULL,
    [UserID]                       INT NULL,
    CONSTRAINT [PK_ProviderStorageAccountType_1] PRIMARY KEY CLUSTERED ([ProviderStorageAccountTypeID] ASC),
    CONSTRAINT [FK_ProviderStorageAccountType_StorageAccountTypes] FOREIGN KEY ([AccountTypeID]) REFERENCES [dbo].[StorageAccountTypes] ([AccountTypeID]),
    CONSTRAINT [FK_ProviderStorageAccountType_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

