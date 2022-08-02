CREATE TABLE [dbo].[CalendarEvents] (
    [CalendarEventID] INT           IDENTITY (1, 1) NOT NULL,
    [BelongsToUser]   INT           NULL,
    [Name]            VARCHAR (50)  NULL,
    [Description]     VARCHAR (255) NULL,
    [StartDate]       DATETIME      NULL,
    [EndDate]         DATETIME      NULL,
    [TimeZone]        VARCHAR (35)  NULL,
    [Repeat]          VARCHAR (10)  NULL,
    [RepeatOptions]   VARCHAR (100) NULL,
    [RepeatUntil]     DATETIME      NULL,
    [Enabled]         BIT           NULL,
    [AllDay]          BIT           NULL,
    [UserTaskID]      INT           NULL,
    CONSTRAINT [PK_CalendarEvents] PRIMARY KEY CLUSTERED ([CalendarEventID] ASC),
    CONSTRAINT [FK_CalendarEvents_Users] FOREIGN KEY ([BelongsToUser]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_CalendarEvents_UserTaskID] FOREIGN KEY ([UserTaskID]) REFERENCES [dbo].[UserTasks] ([TaskID]) ON DELETE CASCADE ON UPDATE CASCADE
);

