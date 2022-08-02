CREATE TABLE [dbo].[UserTasks] (
    [TaskID]                 INT              IDENTITY (1, 1) NOT NULL,
    [BelongsToUser]          INT              NULL,
    [TaskName]               NVARCHAR (250)   NULL,
    [TaskDescription]        NVARCHAR (MAX)   NULL,
    [TaskGroupID]            INT              NULL,
    [TaskStatusID]           INT              NULL,
    [TaskAssignedDate]       DATE             NULL,
    [TaskEndDate]            DATE             NULL,
    [TaskCompletedDate]      DATE             NULL,
    [HeadsUpDays]            INT              NULL,
    [HeadsUpHours]           INT              NULL,
    [HeadsUpMinutes]         INT              NULL,
    [TaskSubGroupID]         INT              NULL,
    [LinkToChart]            INT              NULL,
    [ParentID]               INT              NULL,
    [IsNew]                  BIT              NULL,
    [IsPrivate]              BIT              NULL,
    [AddToCal]               BIT              NULL,
    [BatchID]                UNIQUEIDENTIFIER NULL,
    [TaskAssignedBy]         INT              NULL,
    [TaskCreatedBy]          INT              NULL,
    [TaskType]               INT              NULL,
    [HeadsUp]                INT              NULL,
    [Urgent]                 INT              NULL,
    [Approver]               INT              NULL,
    [ApprovalDate]           DATE             NULL,
    [TemplateTaskID]         INT              NULL,
    [TemplateTaskApprovable] BIT              NULL,
    [ApprovalCondition]      INT              NULL,
    [RecurrenceID]           UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK__UserTask__7C6949D116DC2CD3] PRIMARY KEY CLUSTERED ([TaskID] ASC),
    CONSTRAINT [FK_dbo.UserTasks_dbo.UserTasks_ParentID] FOREIGN KEY ([ParentID]) REFERENCES [dbo].[UserTasks] ([TaskID]),
    CONSTRAINT [FK_UserTasks_Approver] FOREIGN KEY ([Approver]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTasks_AssigneeUser] FOREIGN KEY ([TaskAssignedBy]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTasks_TaskCreatedBy] FOREIGN KEY ([TaskCreatedBy]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTasks_TaskStatus] FOREIGN KEY ([TaskStatusID]) REFERENCES [dbo].[TaskStatuses] ([TaskStatusID]),
    CONSTRAINT [FK_UserTasks_TaskType] FOREIGN KEY ([TaskType]) REFERENCES [dbo].[TaskType] ([TaskTypeID]),
    CONSTRAINT [FK_UserTasks_TemplateTaskCategory] FOREIGN KEY ([TaskGroupID]) REFERENCES [dbo].[TemplateTaskCategory] ([CategoryID]),
    CONSTRAINT [FK_UserTasks_TemplateTaskNew] FOREIGN KEY ([TemplateTaskID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID]),
    CONSTRAINT [FK_UserTasks_TemplateTaskSubCategory] FOREIGN KEY ([TaskSubGroupID]) REFERENCES [dbo].[TemplateTaskCategory] ([CategoryID]),
    CONSTRAINT [FK_UserTasks_Users] FOREIGN KEY ([BelongsToUser]) REFERENCES [dbo].[Users] ([UserID])
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20150418-172847]
    ON [dbo].[UserTasks]([BelongsToUser] ASC);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20150418-173029]
    ON [dbo].[UserTasks]([ParentID] ASC);

