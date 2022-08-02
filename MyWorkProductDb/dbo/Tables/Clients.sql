CREATE TABLE [dbo].[Clients] (
    [ClientID]       INT             IDENTITY (1, 1) NOT NULL,
    [ClientName]     NVARCHAR (1000) NOT NULL,
    [AddressLine1]   NVARCHAR (500)  NULL,
    [AddressLine2]   NVARCHAR (500)  NULL,
    [City]           NVARCHAR (500)  NULL,
    [StateID]        INT             NULL,
    [ZipCode]        NVARCHAR (10)   NULL,
    [CreatedOn]      DATETIME        NULL,
    [ClientTitle]    NVARCHAR (250)  NULL,
    [ClientBranding] NVARCHAR (500)  NULL,
    [EndDate]        DATETIME        NULL,
    [TotalLicenses]  INT             NULL,
    [IsActive]       BIT             NULL,
    [LogoPath]       NVARCHAR (2500) NULL,
    CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED ([ClientID] ASC)
);

