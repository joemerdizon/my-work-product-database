CREATE TABLE [dbo].[Providers] (
    [ProviderID]   INT            IDENTITY (1, 1) NOT NULL,
    [ProviderName] NVARCHAR (MAX) NULL,
    [IsActive]     NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED ([ProviderID] ASC)
);

