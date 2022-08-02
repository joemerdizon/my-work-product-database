CREATE TABLE [dbo].[TemplateTaskPlaybookDocuments] (
    [TaskID]     INT NOT NULL,
    [DocumentID] INT NOT NULL,
    CONSTRAINT [PK__Template__9DC2A7272BE55DB0] PRIMARY KEY CLUSTERED ([TaskID] ASC, [DocumentID] ASC),
    CONSTRAINT [FK__TemplateT__Docum__7814D14C] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[PlaybookDocuments] ([DocumentID]),
    CONSTRAINT [FK__TemplateT__TaskI__7720AD13] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID])
);

