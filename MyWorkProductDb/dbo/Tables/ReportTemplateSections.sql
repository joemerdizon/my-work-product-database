CREATE TABLE [dbo].[ReportTemplateSections] (
    [ReportTemplateSectionID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]                    VARCHAR (100) NULL,
    [Description]             VARCHAR (MAX) NULL,
    [ReportTemplateID]        INT           NULL,
    [Order]                   INT           NULL,
    CONSTRAINT [PK_ReportTemplateSections] PRIMARY KEY CLUSTERED ([ReportTemplateSectionID] ASC),
    CONSTRAINT [FK_dbo.ReportTemplateSections_dbo.ReportTemplates] FOREIGN KEY ([ReportTemplateID]) REFERENCES [dbo].[ReportTemplates] ([ReportTemplateID])
);

