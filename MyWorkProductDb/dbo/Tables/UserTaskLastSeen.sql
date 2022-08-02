CREATE TABLE [dbo].[UserTaskLastSeen] (
    [UserTaskLastSeenID] INT      IDENTITY (1, 1) NOT NULL,
    [TaskID]             INT      NOT NULL,
    [UserID]             INT      NOT NULL,
    [Date]               DATETIME NOT NULL,
    CONSTRAINT [PK__UserTask__0658F82CD9840B92] PRIMARY KEY CLUSTERED ([UserTaskLastSeenID] ASC),
    CONSTRAINT [FK__UserTaskL__TaskI__7EC1CEDB] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID]),
    CONSTRAINT [FK__UserTaskL__UserI__7FB5F314] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

