CREATE TABLE [dbo].[ScheduleItemsDetails] (
    [ScheduleItemDetailID] INT           IDENTITY (1, 1) NOT NULL,
    [ScheduleStartFrom]    DATETIME      NULL,
    [ScheduleStartTo]      DATETIME      NULL,
    [ScheduleItemType]     NVARCHAR (50) NULL,
    [ScheduleID]           INT           NULL,
    CONSTRAINT [PK__Schedule__98D865CB75213C5D] PRIMARY KEY CLUSTERED ([ScheduleItemDetailID] ASC),
    CONSTRAINT [FK_ScheduleItemsDetails_ScheduleItems] FOREIGN KEY ([ScheduleID]) REFERENCES [dbo].[ScheduleItems] ([ScheduleItemID])
);

