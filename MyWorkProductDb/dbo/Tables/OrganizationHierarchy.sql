CREATE TABLE [dbo].[OrganizationHierarchy] (
    [RelationshipID] INT IDENTITY (1, 1) NOT NULL,
    [ManagerUserID]  INT NULL,
    [EmployeeID]     INT NULL,
    [ClientID]       INT NULL,
    [UserLevel]      INT NULL,
    CONSTRAINT [PK__Organiza__31FEB861A3BE2B09] PRIMARY KEY CLUSTERED ([RelationshipID] ASC),
    CONSTRAINT [FK_OrganizationHierarchy_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_OrganizationHierarchy_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_OrganizationHierarchy_Managers] FOREIGN KEY ([ManagerUserID]) REFERENCES [dbo].[Users] ([UserID])
);

