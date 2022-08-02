CREATE TABLE [dbo].[UserDocumentPermissions] (
    [PermissionID]         INT            IDENTITY (1, 1) NOT NULL,
    [UserStorageAccountID] INT            NOT NULL,
    [ProviderDocumentID]   NVARCHAR (MAX) NOT NULL,
    [UserID]               INT            NOT NULL,
    CONSTRAINT [PK_UserDocumentPermissions] PRIMARY KEY CLUSTERED ([PermissionID] ASC),
    CONSTRAINT [FK_dbo.Users_dbo.UserDocumentPermissions] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserDocumentPermissions_UserStorageAccountTypes] FOREIGN KEY ([UserStorageAccountID]) REFERENCES [dbo].[UserStorageAccountTypes] ([UserStorageAccountID])
);

