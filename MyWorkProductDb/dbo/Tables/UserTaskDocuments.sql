CREATE TABLE [dbo].[UserTaskDocuments] (
    [DocumentID]               INT            IDENTITY (1, 1) NOT NULL,
    [UserID]                   INT            NULL,
    [DocumentName]             NVARCHAR (MAX) NOT NULL,
    [DocumentPath]             NVARCHAR (MAX) NOT NULL,
    [BoxDocumentID]            NVARCHAR (MAX) NOT NULL,
    [TaskID]                   INT            NULL,
    [DocumentUploadedOn]       DATETIME       NOT NULL,
    [LastAccessedOn]           DATETIME       NOT NULL,
    [ProviderParentFolderId]   NVARCHAR (50)  NULL,
    [ProviderStorageAccountID] INT            NOT NULL,
    [TemplateTaskID]           INT            NULL,
    [TempTimeStamp]            DATETIME       NULL,
    [TempActionItemID]         INT            NULL,
    CONSTRAINT [PK__UserTask__1ABEEF6FAF23ED4B] PRIMARY KEY CLUSTERED ([DocumentID] ASC),
    CONSTRAINT [fk_TemplateTaskNew_UserTaskDocuments] FOREIGN KEY ([TemplateTaskID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID]),
    CONSTRAINT [fk_UserTasks_UserTaskDocuments] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

