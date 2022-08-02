CREATE TABLE [dbo].[NotificationSuscriptions] (
    [NotificationSuscriptionId] INT IDENTITY (1, 1) NOT NULL,
    [NotificationItemId]        INT NOT NULL,
    [UserId]                    INT NOT NULL,
    CONSTRAINT [PK_NotificationSuscriptions] PRIMARY KEY CLUSTERED ([NotificationSuscriptionId] ASC),
    CONSTRAINT [FK_NotificationSuscriptions_NotificationItems] FOREIGN KEY ([NotificationItemId]) REFERENCES [dbo].[NotificationItems] ([NotificationItemId]),
    CONSTRAINT [FK_NotificationSuscriptions_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

