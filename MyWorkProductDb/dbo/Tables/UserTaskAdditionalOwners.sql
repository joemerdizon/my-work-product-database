CREATE TABLE [dbo].[UserTaskAdditionalOwners] (
    [AdditionalOwnerID] INT IDENTITY (1, 1) NOT NULL,
    [TaskID]            INT NULL,
    [TaskOwnerLookupID] INT NULL,
    [UserID]            INT NULL,
    CONSTRAINT [PK__UserTask__FD7C76DFCFBDFD8F] PRIMARY KEY CLUSTERED ([AdditionalOwnerID] ASC),
    CONSTRAINT [FK_UserTaskAdditionalOwners_TaskOwnerLookup] FOREIGN KEY ([TaskOwnerLookupID]) REFERENCES [dbo].[TaskOwnerLookup] ([TaskOwnerID]),
    CONSTRAINT [FK_UserTaskAdditionalOwners_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTaskAdditionalOwners_UserTasks] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID]) ON DELETE CASCADE
);

