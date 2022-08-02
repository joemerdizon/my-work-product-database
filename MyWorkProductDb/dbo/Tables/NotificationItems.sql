CREATE TABLE [dbo].[NotificationItems] (
    [NotificationItemId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (MAX)  NOT NULL,
    [Icon]               VARCHAR (50)   NULL,
    [Color]              VARCHAR (10)   NULL,
    [DefaultDevices]     VARCHAR (100)  NULL,
    [Link]               VARCHAR (100)  CONSTRAINT [DF__Notificati__Link__57DD0BE4] DEFAULT ('') NULL,
    [notificationKey]    VARCHAR (100)  NULL,
    [Description2]       VARCHAR (1000) NULL,
    [tooltip]            VARCHAR (100)  NULL,
    [Default]            BIT            NULL,
    CONSTRAINT [PK_NotificationItems] PRIMARY KEY CLUSTERED ([NotificationItemId] ASC)
);

