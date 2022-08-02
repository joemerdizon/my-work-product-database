CREATE TABLE [dbo].[ClientUserRoles] (
    [RowID]    INT IDENTITY (1, 1) NOT NULL,
    [ClientID] INT NULL,
    [UserID]   INT NULL,
    [RoleID]   INT NULL,
    CONSTRAINT [PK_ClientUserRoles] PRIMARY KEY CLUSTERED ([RowID] ASC),
    CONSTRAINT [FK_ClientUserRoles_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_ClientUserRoles_Roles] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([RoleID]),
    CONSTRAINT [FK_ClientUserRoles_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

