CREATE TABLE [dbo].[NotificationGlobalSubscriptions] (
    [NotificationGlobalSuscriptionId] INT IDENTITY (1, 1) NOT NULL,
    [NotificationItemId]              INT NOT NULL,
    [ClientId]                        INT NOT NULL,
    CONSTRAINT [PK__Notifica__97BF713EB7F63932] PRIMARY KEY CLUSTERED ([NotificationGlobalSuscriptionId] ASC),
    CONSTRAINT [FK__Notificat__Clien__038683F8] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK__Notificat__Notif__02925FBF] FOREIGN KEY ([NotificationItemId]) REFERENCES [dbo].[NotificationItems] ([NotificationItemId])
);

