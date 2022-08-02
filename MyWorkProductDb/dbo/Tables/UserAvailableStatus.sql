CREATE TABLE [dbo].[UserAvailableStatus] (
    [AvailabilityID]          INT            IDENTITY (1, 1) NOT NULL,
    [AvailabilityDescription] NVARCHAR (50)  NULL,
    [ImagePath]               NVARCHAR (MAX) NULL,
    [ClientID]                INT            NULL,
    [ColorCode]               NVARCHAR (50)  NULL,
    CONSTRAINT [PK__UserAvai__DA3979916C22BC5E] PRIMARY KEY CLUSTERED ([AvailabilityID] ASC)
);

