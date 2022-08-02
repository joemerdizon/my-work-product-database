CREATE TABLE [dbo].[PlaybookNew] (
    [PlaybookID]     INT            IDENTITY (1, 1) NOT NULL,
    [ClientID]       INT            NULL,
    [Category1]      NVARCHAR (MAX) NULL,
    [Category2]      NVARCHAR (MAX) NULL,
    [Category3]      NVARCHAR (MAX) NULL,
    [Description]    NVARCHAR (MAX) NULL,
    [DocumentCat3]   NVARCHAR (MAX) NULL,
    [MultimediaCat3] NVARCHAR (MAX) NULL,
    [Category4]      NVARCHAR (MAX) NULL,
    [DocumentCat4]   NVARCHAR (MAX) NULL,
    [MultimediaCat4] NVARCHAR (MAX) NULL,
    [IsArchive]      BIT            NULL,
    [DateCreated]    DATE           NULL,
    [DateModified]   DATETIME       NULL,
    [ModifiedByUser] INT            NULL,
    CONSTRAINT [PK_PlaybookNew] PRIMARY KEY CLUSTERED ([PlaybookID] ASC)
);

