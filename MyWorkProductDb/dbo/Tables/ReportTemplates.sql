CREATE TABLE [dbo].[ReportTemplates] (
    [ReportTemplateID] INT              IDENTITY (1, 1) NOT NULL,
    [TemplateKey]      NVARCHAR (50)    NULL,
    [DocumentName]     NVARCHAR (1000)  NULL,
    [ClientID]         INT              NULL,
    [UserTitleID]      INT              NULL,
    [TemplateReport]   BIT              NULL,
    [Archive]          BIT              CONSTRAINT [Archive_def_ReportTemplates] DEFAULT ('false') NOT NULL,
    [CreatedDate]      DATETIME         NULL,
    [CreatedBy]        UNIQUEIDENTIFIER NOT NULL,
    [LastUpdatedDate]  DATETIME         NOT NULL,
    [LastUpdatedBy]    UNIQUEIDENTIFIER NOT NULL,
    [Status]           INT              NOT NULL,
    CONSTRAINT [PK_ReportTemplates] PRIMARY KEY CLUSTERED ([ReportTemplateID] ASC),
    CONSTRAINT [FK_ReportTemplates_UserTitles] FOREIGN KEY ([UserTitleID]) REFERENCES [dbo].[UserTitles] ([TitleID])
);

