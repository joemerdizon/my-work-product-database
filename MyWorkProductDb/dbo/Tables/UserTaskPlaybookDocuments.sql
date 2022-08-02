CREATE TABLE [dbo].[UserTaskPlaybookDocuments] (
    [TaskID]     INT NOT NULL,
    [DocumentID] INT NOT NULL,
    CONSTRAINT [PK__UserTask__9DC2A72721061748] PRIMARY KEY CLUSTERED ([TaskID] ASC, [DocumentID] ASC),
    CONSTRAINT [FK__UserTaskP__Docum__7BE56230] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[PlaybookDocuments] ([DocumentID]),
    CONSTRAINT [FK__UserTaskP__TaskI__7AF13DF7] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

