CREATE TABLE [dbo].[PlaybookLinks] (
    [LinkId]             INT            IDENTITY (1, 1) NOT NULL,
    [URL]                NVARCHAR (250) NOT NULL,
    [PlaybookDocumentID] INT            NOT NULL,
    [Name]               VARCHAR (MAX)  NULL,
    CONSTRAINT [PK__Playbook__2D122135D6D9861C] PRIMARY KEY CLUSTERED ([LinkId] ASC),
    CONSTRAINT [FK_PlaybookLinks_ToPlaybookDocuments] FOREIGN KEY ([PlaybookDocumentID]) REFERENCES [dbo].[PlaybookDocuments] ([DocumentID]) ON DELETE CASCADE
);

