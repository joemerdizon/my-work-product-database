CREATE TABLE [dbo].[PlaybookFavorites] (
    [FavoriteId]         INT IDENTITY (1, 1) NOT NULL,
    [UserId]             INT NOT NULL,
    [PlaybookDocumentId] INT NOT NULL,
    CONSTRAINT [PK_PlaybookFavorites] PRIMARY KEY CLUSTERED ([FavoriteId] ASC),
    CONSTRAINT [FK_PlaybookFavorites_PlaybookDocuments] FOREIGN KEY ([PlaybookDocumentId]) REFERENCES [dbo].[PlaybookDocuments] ([DocumentID]),
    CONSTRAINT [FK_PlaybookFavorites_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

