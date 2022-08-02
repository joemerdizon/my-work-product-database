CREATE TABLE [dbo].[NotificationMaster] (
    [NotificationID]               INT           IDENTITY (1, 1) NOT NULL,
    [ActionItemID]                 INT           NULL,
    [NotificationFromUserID]       INT           NULL,
    [NotificationToUserID]         INT           NULL,
    [NotificationStartDate]        DATETIME      NULL,
    [NotificationEndDate]          SMALLDATETIME NULL,
    [IsNotificationAssigned]       BIT           NULL,
    [NotificationRegistrationDate] DATETIME      NULL,
    [NotificationAcceptanceDate]   DATETIME      NULL,
    CONSTRAINT [PK__Notifica__20CF2E32AAA8CCE8] PRIMARY KEY CLUSTERED ([NotificationID] ASC),
    CONSTRAINT [FK_NotificationMaster_ActionList] FOREIGN KEY ([ActionItemID]) REFERENCES [dbo].[ActionList] ([ActionItemID]),
    CONSTRAINT [FK_NotificationMaster_FromUser] FOREIGN KEY ([NotificationFromUserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_NotificationMaster_ToUser] FOREIGN KEY ([NotificationToUserID]) REFERENCES [dbo].[Users] ([UserID])
);

