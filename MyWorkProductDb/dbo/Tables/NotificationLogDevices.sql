CREATE TABLE [dbo].[NotificationLogDevices] (
    [NotificationLogDeviceId] INT      IDENTITY (1, 1) NOT NULL,
    [NotificationLogId]       INT      NOT NULL,
    [DeviceId]                CHAR (2) NOT NULL,
    [Sent]                    BIT      NOT NULL,
    [DentDate]                DATETIME NOT NULL,
    CONSTRAINT [PK_NotificationLogDevices] PRIMARY KEY CLUSTERED ([NotificationLogDeviceId] ASC),
    CONSTRAINT [FK_NotificationLogDevices_NotificationLogs] FOREIGN KEY ([NotificationLogId]) REFERENCES [dbo].[NotificationLogs] ([NotificationLogId])
);

