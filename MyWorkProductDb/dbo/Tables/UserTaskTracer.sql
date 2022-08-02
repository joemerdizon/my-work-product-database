CREATE TABLE [dbo].[UserTaskTracer] (
    [TraceID]    INT            IDENTITY (1, 1) NOT NULL,
    [TaskID]     INT            NOT NULL,
    [Comment]    NVARCHAR (MAX) NULL,
    [StatusFrom] INT            NOT NULL,
    [StatusTo]   INT            NOT NULL,
    [UserID]     INT            NOT NULL,
    [Read]       BIT            NULL,
    [ChangeDate] DATETIME       NOT NULL,
    [UserIDTo]   INT            NULL,
    CONSTRAINT [PK__UserTaskTracer__7C6949D116DC2CD3] PRIMARY KEY CLUSTERED ([TraceID] ASC),
    CONSTRAINT [FK_UserTaskTracer_StatusFrom] FOREIGN KEY ([StatusFrom]) REFERENCES [dbo].[TaskStatuses] ([TaskStatusID]),
    CONSTRAINT [FK_UserTaskTracer_StatusTo] FOREIGN KEY ([StatusTo]) REFERENCES [dbo].[TaskStatuses] ([TaskStatusID]),
    CONSTRAINT [FK_UserTaskTracer_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTaskTracer_UsersTo] FOREIGN KEY ([UserIDTo]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTaskTracer_UserTasks] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

