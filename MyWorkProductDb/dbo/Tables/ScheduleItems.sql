CREATE TABLE [dbo].[ScheduleItems] (
    [ScheduleItemID]    INT            IDENTITY (1, 1) NOT NULL,
    [ScheduleItemName]  NVARCHAR (500) NULL,
    [ScheduleItemFrom]  DATETIME       NULL,
    [SchedlueItemTo]    DATETIME       NULL,
    [ScheduledByUserID] INT            NULL,
    [ResourceID]        INT            NULL,
    [ScheduledUser]     INT            NULL,
    CONSTRAINT [PK__Schedule__DBAE6CE32BE433DC] PRIMARY KEY CLUSTERED ([ScheduleItemID] ASC),
    CONSTRAINT [FK_ScheduleItems_Resources] FOREIGN KEY ([ResourceID]) REFERENCES [dbo].[Resources] ([ResourceID]),
    CONSTRAINT [FK_ScheduleItems_ScheduledUser] FOREIGN KEY ([ScheduledUser]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_ScheduleItems_Users] FOREIGN KEY ([ScheduledByUserID]) REFERENCES [dbo].[Users] ([UserID])
);

