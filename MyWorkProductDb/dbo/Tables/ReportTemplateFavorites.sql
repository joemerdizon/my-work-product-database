CREATE TABLE [dbo].[ReportTemplateFavorites] (
    [ReportTemplateFavoriteID] INT IDENTITY (1, 1) NOT NULL,
    [ReportTemplateID]         INT NOT NULL,
    [UserID]                   INT NOT NULL,
    CONSTRAINT [PK_ReportTemplateFavorites] PRIMARY KEY CLUSTERED ([ReportTemplateFavoriteID] ASC),
    CONSTRAINT [FK_ReportTemplateFavorites_ReportTemplateID] FOREIGN KEY ([ReportTemplateID]) REFERENCES [dbo].[ReportTemplates] ([ReportTemplateID]),
    CONSTRAINT [FK_ReportTemplateFavorites_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

