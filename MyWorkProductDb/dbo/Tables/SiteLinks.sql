CREATE TABLE [dbo].[SiteLinks] (
    [NavID]      INT            IDENTITY (1, 1) NOT NULL,
    [NavTitle]   NVARCHAR (50)  NULL,
    [NavLink]    NVARCHAR (MAX) NULL,
    [NavImage]   NVARCHAR (50)  NULL,
    [UserID]     INT            NULL,
    [ClientID]   INT            NULL,
    [NavOrder]   INT            NULL,
    [NavSection] VARCHAR (30)   NULL,
    [Beta]       BIT            CONSTRAINT [Beta_default_SiteLinks] DEFAULT ('false') NOT NULL,
    CONSTRAINT [PK__SiteLink__67283A734A725783] PRIMARY KEY CLUSTERED ([NavID] ASC)
);

