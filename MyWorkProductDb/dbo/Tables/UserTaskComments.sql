CREATE TABLE [dbo].[UserTaskComments] (
    [CommentID]      INT            IDENTITY (1, 1) NOT NULL,
    [TaskID]         INT            NULL,
    [UserID]         INT            NOT NULL,
    [Comment]        NVARCHAR (MAX) NULL,
    [Moment]         DATETIME       NOT NULL,
    [TemplateTaskID] INT            NULL,
    CONSTRAINT [PK__UserTask__C3B4DFAAEF8F4ED8] PRIMARY KEY CLUSTERED ([CommentID] ASC),
    CONSTRAINT [FK_UserTaskComments_TemplateTaskNews] FOREIGN KEY ([TemplateTaskID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID]),
    CONSTRAINT [FK_UserTaskComments_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTaskComments_UserTasks1] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

