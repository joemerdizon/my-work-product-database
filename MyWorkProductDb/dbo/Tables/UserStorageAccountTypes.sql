CREATE TABLE [dbo].[UserStorageAccountTypes] (
    [UserStorageAccountID] INT            IDENTITY (1, 1) NOT NULL,
    [AccessToken]          NVARCHAR (MAX) NOT NULL,
    [RefreshToken]         NVARCHAR (MAX) NOT NULL,
    [LastRefresh]          DATETIME       NULL,
    [AccessTokenExpireIn]  INT            NOT NULL,
    [ProviderTempFolderID] NVARCHAR (MAX) NOT NULL,
    [UserID]               INT            NULL,
    [StorageAccountTypeID] INT            NULL,
    [ClientID]             INT            NULL,
    CONSTRAINT [PK_UserStorageAccountTypes] PRIMARY KEY CLUSTERED ([UserStorageAccountID] ASC),
    CONSTRAINT [FK_dbo.ClientID_dbo.UserStorageAccountTypes] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_dbo.Clients_dbo.UserStorageAccountTypes] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_dbo.StorageAccountTypeID_dbo.UserStorageAccountTypes] FOREIGN KEY ([StorageAccountTypeID]) REFERENCES [dbo].[StorageAccountTypes] ([AccountTypeID])
);

