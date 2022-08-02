CREATE TABLE [dbo].[SiteNavigations] (
    [NavID]      INT            NOT NULL,
    [NavTitle]   NVARCHAR (50)  NULL,
    [NavLink]    NVARCHAR (MAX) NULL,
    [NavImage]   NVARCHAR (50)  NULL,
    [NavOrder]   INT            NULL,
    [NavSection] NVARCHAR (30)  NULL,
    [Beta]       BIT            NULL,
    PRIMARY KEY CLUSTERED ([NavID] ASC)
);

