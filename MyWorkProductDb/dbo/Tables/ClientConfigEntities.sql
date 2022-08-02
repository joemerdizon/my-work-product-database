CREATE TABLE [dbo].[ClientConfigEntities] (
    [ClientConfigEntityID] INT             IDENTITY (1, 1) NOT NULL,
    [EntityName]           NVARCHAR (2000) NULL,
    [EntityDescription]    NVARCHAR (MAX)  NULL,
    [DefaultValue]         VARCHAR (300)   NULL,
    CONSTRAINT [PK_ClientConfigEntities] PRIMARY KEY CLUSTERED ([ClientConfigEntityID] ASC)
);

