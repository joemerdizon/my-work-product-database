CREATE TABLE [dbo].[Resources] (
    [ResourceID]                 INT            IDENTITY (1, 1) NOT NULL,
    [ResourceName]               NVARCHAR (500) NULL,
    [ResourceDescription]        NVARCHAR (MAX) NULL,
    [ResourceAvailabityStatusID] INT            NULL,
    [DepartmentID]               INT            NULL,
    [DepartmentBranchID]         INT            NULL,
    CONSTRAINT [PK__Resource__4ED1814F9C354CCA] PRIMARY KEY CLUSTERED ([ResourceID] ASC),
    CONSTRAINT [FK_Resources_DepartmentBranches] FOREIGN KEY ([DepartmentBranchID]) REFERENCES [dbo].[DepartmentBranches] ([DepartmentBranchID]),
    CONSTRAINT [FK_Resources_Departments] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Departments] ([DepartmentID]),
    CONSTRAINT [FK_Resources_ResourceAvailStatuses] FOREIGN KEY ([ResourceAvailabityStatusID]) REFERENCES [dbo].[ResourceAvailStatuses] ([ResourceAvailabityStatusID])
);

