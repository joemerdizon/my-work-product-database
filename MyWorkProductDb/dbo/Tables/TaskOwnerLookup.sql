CREATE TABLE [dbo].[TaskOwnerLookup] (
    [TaskOwnerID] INT           IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK__TaskOwne__29071C56FD440FDB] PRIMARY KEY CLUSTERED ([TaskOwnerID] ASC)
);

