CREATE TABLE [dbo].[ReportTemplateAssignmentAssignees] (
    [ReportTemplateAssignmentAssigneeID] INT IDENTITY (1, 1) NOT NULL,
    [ReportTemplateAssignmentID]         INT NOT NULL,
    [UserID]                             INT NOT NULL,
    CONSTRAINT [PK_ReportTemplateAssignmentAssignees] PRIMARY KEY CLUSTERED ([ReportTemplateAssignmentAssigneeID] ASC),
    CONSTRAINT [FK_ReportTemplateAssignmentAssignees_ReportTemplateAssignments] FOREIGN KEY ([ReportTemplateAssignmentID]) REFERENCES [dbo].[ReportTemplateAssignments] ([ReportTemplateAssignmentID]),
    CONSTRAINT [FK_ReportTemplateAssignmentAssignees_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

