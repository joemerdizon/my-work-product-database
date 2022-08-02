CREATE TABLE [dbo].[UserPermissions] (
    [PermissionID] INT NOT NULL,
    [UserID]       INT NOT NULL,
    CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED ([PermissionID] ASC, [UserID] ASC),
    CONSTRAINT [FK_UserPermissions_Permissions] FOREIGN KEY ([PermissionID]) REFERENCES [dbo].[Permissions] ([PermissionID]),
    CONSTRAINT [FK_UserPermissions_Users1] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

