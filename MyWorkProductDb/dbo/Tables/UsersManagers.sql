CREATE TABLE [dbo].[UsersManagers] (
    [RowID]     INT IDENTITY (1, 1) NOT NULL,
    [UserID]    INT NOT NULL,
    [ManagerID] INT NOT NULL,
    CONSTRAINT [PK__UsersMan__FFEE7451DEF0E984] PRIMARY KEY CLUSTERED ([RowID] ASC),
    CONSTRAINT [FK_UsersManagers_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UsersManagers_Users_1] FOREIGN KEY ([ManagerID]) REFERENCES [dbo].[Users] ([UserID])
);

