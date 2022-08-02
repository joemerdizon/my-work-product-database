CREATE TABLE [dbo].[ReportTemplateAssignments] (
    [ReportTemplateAssignmentID] INT            IDENTITY (1, 1) NOT NULL,
    [ReportTemplateID]           INT            NOT NULL,
    [Name]                       NVARCHAR (250) NULL,
    [AssignmentDate]             DATETIME       NOT NULL,
    [DueDate]                    DATETIME       NOT NULL,
    [AssignedBy]                 INT            NULL,
    [Archived]                   BIT            CONSTRAINT [Archived_def_ReportTemplateAssignments] DEFAULT ('false') NOT NULL,
    [Status]                     INT            NULL,
    [StatusLastUpdateDate]       DATETIME       NOT NULL,
    CONSTRAINT [PK_ReportTemplateAssignments] PRIMARY KEY CLUSTERED ([ReportTemplateAssignmentID] ASC),
    CONSTRAINT [FK_ReportTemplateAssignments_ReportTemplates] FOREIGN KEY ([ReportTemplateID]) REFERENCES [dbo].[ReportTemplates] ([ReportTemplateID]),
    CONSTRAINT [FK_ReportTemplateAssignments_Users] FOREIGN KEY ([AssignedBy]) REFERENCES [dbo].[Users] ([UserID])
);

