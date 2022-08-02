CREATE TABLE [dbo].[Permissions] (
    [PermissionID]  INT           IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50)  NOT NULL,
    [Description]   VARCHAR (150) NOT NULL,
    [section]       VARCHAR (20)  NULL,
    [PermissionKey] VARCHAR (20)  NULL,
    CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED ([PermissionID] ASC)
);

