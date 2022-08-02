CREATE TABLE [dbo].[ReportTemplateLogs] (
    [ReportTemplateLogID] INT          IDENTITY (1, 1) NOT NULL,
    [ReportTemplateID]    INT          NOT NULL,
    [UserID]              INT          NOT NULL,
    [Action]              VARCHAR (50) NOT NULL,
    [TimeStamp]           DATETIME     NOT NULL,
    CONSTRAINT [PK_ReportTemplateLogs] PRIMARY KEY CLUSTERED ([ReportTemplateLogID] ASC),
    CONSTRAINT [FK_ReportTemplateLogs_ReportTemplateID] FOREIGN KEY ([ReportTemplateID]) REFERENCES [dbo].[ReportTemplates] ([ReportTemplateID]),
    CONSTRAINT [FK_ReportTemplateLogs_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

