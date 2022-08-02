CREATE TABLE [dbo].[TemplateTaskNewFavorites] (
    [TemplateTaskNewFavoriteId] INT IDENTITY (1, 1) NOT NULL,
    [TemplateTaskNewId]         INT NOT NULL,
    [UserId]                    INT NOT NULL,
    CONSTRAINT [PK_TemplateTaskNewsFavorites] PRIMARY KEY CLUSTERED ([TemplateTaskNewFavoriteId] ASC),
    CONSTRAINT [FK_Favorite_TemplateTaskId] FOREIGN KEY ([TemplateTaskNewId]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID]),
    CONSTRAINT [FK_FavoriteTemplateTask_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

