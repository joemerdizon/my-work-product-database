CREATE TABLE [dbo].[TemplateTaskResources] (
    [ResourceID]   INT            IDENTITY (1, 1) NOT NULL,
    [ResourceName] NVARCHAR (MAX) NULL,
    [ResourceURL]  NVARCHAR (MAX) NULL,
    [TaskID]       INT            NULL,
    [Question]     INT            NULL,
    CONSTRAINT [PK_TemplateTaskResources] PRIMARY KEY CLUSTERED ([ResourceID] ASC),
    CONSTRAINT [FK_TemplateTaskResources_TemplateTaskNew] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID])
);

