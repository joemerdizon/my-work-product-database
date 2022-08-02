CREATE TABLE [dbo].[UserTitlePermissions] (
    [PermissionId] INT NOT NULL,
    [UserTitleId]  INT NOT NULL,
    [Id]           INT IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_UserTitlePermissions2] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserTitlePermissions2_Permissions] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permissions] ([PermissionID]),
    CONSTRAINT [FK_UserTitlePermissions2_UserTitles] FOREIGN KEY ([UserTitleId]) REFERENCES [dbo].[UserTitles] ([TitleID])
);

