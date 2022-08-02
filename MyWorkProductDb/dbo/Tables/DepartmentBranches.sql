CREATE TABLE [dbo].[DepartmentBranches] (
    [DepartmentBranchID] INT            IDENTITY (1, 1) NOT NULL,
    [BranchName]         NVARCHAR (500) NULL,
    [BranchAddressLine1] NVARCHAR (50)  NULL,
    [BranchAddressLine2] NVARCHAR (50)  NULL,
    [City]               NVARCHAR (50)  NULL,
    [State]              INT            NULL,
    [Zip]                NVARCHAR (50)  NULL,
    [BranchDescription]  NVARCHAR (MAX) NULL,
    [DepartmentID]       INT            NULL,
    CONSTRAINT [PK__Departme__BC146D80B3B7E8EF] PRIMARY KEY CLUSTERED ([DepartmentBranchID] ASC),
    CONSTRAINT [FK_DepartmentBranches_Departments] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Departments] ([DepartmentID]),
    CONSTRAINT [FK_DepartmentBranches_USStates] FOREIGN KEY ([State]) REFERENCES [dbo].[USStates] ([StateID])
);

