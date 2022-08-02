CREATE TABLE [dbo].[ClientProviders] (
    [ProviderID] INT NOT NULL,
    [ClientID]   INT NOT NULL,
    CONSTRAINT [PK_ClientProviders] PRIMARY KEY CLUSTERED ([ProviderID] ASC, [ClientID] ASC),
    CONSTRAINT [FK_ClientProviders_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_ClientProviders_Providers] FOREIGN KEY ([ProviderID]) REFERENCES [dbo].[Providers] ([ProviderID])
);

