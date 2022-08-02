CREATE TABLE [dbo].[PlaybookDocuments] (
    [DocumentID]          INT            IDENTITY (1, 1) NOT NULL,
    [DocumentName]        NVARCHAR (MAX) NULL,
    [DocumentDescription] NVARCHAR (MAX) NULL,
    [PlaybookCategoryID]  INT            NULL,
    [DocumentLink]        NVARCHAR (MAX) NULL,
    [DocumentTypeID]      INT            NULL,
    [DocumentBoxId]       VARCHAR (20)   NULL,
    [Active]              BIT            NULL,
    CONSTRAINT [PK_PlaybookDocuments] PRIMARY KEY CLUSTERED ([DocumentID] ASC),
    CONSTRAINT [FK_PlaybookDocuments_Playbook] FOREIGN KEY ([PlaybookCategoryID]) REFERENCES [dbo].[Playbook] ([CategoryID])
);

