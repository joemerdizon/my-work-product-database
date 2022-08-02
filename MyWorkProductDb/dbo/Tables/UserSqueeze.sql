CREATE TABLE [dbo].[UserSqueeze] (
    [SqueezeId]     INT           IDENTITY (1, 1) NOT NULL,
    [UserId]        INT           NOT NULL,
    [TaskId]        INT           NULL,
    [Safety]        INT           NOT NULL,
    [Quality]       INT           NOT NULL,
    [Efficiency]    INT           NOT NULL,
    [Effectiveness] INT           NOT NULL,
    [Zest]          INT           NOT NULL,
    [Processed]     BIT           NOT NULL,
    [Description]   VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_UserSqueeze] PRIMARY KEY CLUSTERED ([SqueezeId] ASC),
    CONSTRAINT [FK_UserSqueeze_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserSqueeze_UserTasks] FOREIGN KEY ([TaskId]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

