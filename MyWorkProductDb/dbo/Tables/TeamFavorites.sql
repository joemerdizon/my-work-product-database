CREATE TABLE [dbo].[TeamFavorites] (
    [TeamFavoriteId] INT IDENTITY (1, 1) NOT NULL,
    [TeamId]         INT NOT NULL,
    [UserId]         INT NOT NULL,
    CONSTRAINT [PK_TeamFavorites] PRIMARY KEY CLUSTERED ([TeamFavoriteId] ASC),
    CONSTRAINT [FK_TeamFavorites_Teams] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Teams] ([TeamId]),
    CONSTRAINT [FK_TeamFavorites_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

