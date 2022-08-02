CREATE TABLE [dbo].[Roles] (
    [RoleID]          INT            IDENTITY (1, 1) NOT NULL,
    [RoleDescription] NVARCHAR (200) NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([RoleID] ASC)
);

