CREATE TABLE [dbo].[ReportTemplateTasks] (
    [ReportTemplateTaskID]    INT             IDENTITY (1, 1) NOT NULL,
    [TaskDocRef]              DECIMAL (18, 3) NULL,
    [TemplateKey]             NVARCHAR (50)   NULL,
    [Roles]                   NVARCHAR (1000) NULL,
    [TemplateTaskID]          INT             NULL,
    [ReportTemplateSectionID] INT             NOT NULL,
    [ClientID]                INT             NULL,
    [DueDate]                 VARCHAR (20)    NULL,
    [TimeRemaining]           INT             NULL,
    [TimeUnit]                VARCHAR (20)    NULL,
    [Order]                   INT             NULL,
    [RowID]                   INT             NULL,
    CONSTRAINT [PK_TaskReportTemplates] PRIMARY KEY CLUSTERED ([ReportTemplateTaskID] ASC),
    CONSTRAINT [FK_dbo.ReportTemplateSections_dbo.ReportTemplateSections] FOREIGN KEY ([ReportTemplateSectionID]) REFERENCES [dbo].[ReportTemplateSections] ([ReportTemplateSectionID]),
    CONSTRAINT [FK_dbo.ReportTemplateTasks_dbo.TemplateTasks] FOREIGN KEY ([TemplateTaskID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID])
);

