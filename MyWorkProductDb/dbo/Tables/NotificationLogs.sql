CREATE TABLE [dbo].[NotificationLogs] (
    [NotificationLogId]  INT           IDENTITY (1, 1) NOT NULL,
    [EventDate]          DATETIME      NOT NULL,
    [EventDescription]   VARCHAR (MAX) NOT NULL,
    [UserId]             INT           NOT NULL,
    [ObjectId]           INT           NOT NULL,
    [ObjectType]         CHAR (2)      NOT NULL,
    [NotificationItemId] INT           NULL,
    CONSTRAINT [PK_NotificationLogs] PRIMARY KEY CLUSTERED ([NotificationLogId] ASC),
    CONSTRAINT [FK_NotificationLogs_NotificationItems] FOREIGN KEY ([NotificationItemId]) REFERENCES [dbo].[NotificationItems] ([NotificationItemId]),
    CONSTRAINT [FK_NotificationLogs_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

