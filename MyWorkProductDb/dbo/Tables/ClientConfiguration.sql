CREATE TABLE [dbo].[ClientConfiguration] (
    [ClientConfigID] INT             IDENTITY (1, 1) NOT NULL,
    [ClientID]       INT             NULL,
    [EntityID]       INT             NULL,
    [EntityValue]    NVARCHAR (1000) NULL,
    CONSTRAINT [PK_ClientConfiguration] PRIMARY KEY CLUSTERED ([ClientConfigID] ASC),
    CONSTRAINT [FK_ClientConfiguration_Client] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_ClientConfiguration_ClientConfigEntities] FOREIGN KEY ([EntityID]) REFERENCES [dbo].[ClientConfigEntities] ([ClientConfigEntityID])
);

