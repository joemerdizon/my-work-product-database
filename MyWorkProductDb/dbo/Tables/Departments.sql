CREATE TABLE [dbo].[Departments] (
    [DepartmentID]          INT            IDENTITY (1, 1) NOT NULL,
    [DepartmentName]        NVARCHAR (500) NULL,
    [DepartmentDescription] NVARCHAR (MAX) NULL,
    [ClientID]              INT            NULL,
    [BusinessStartTime]     INT            NULL,
    [BusinessEndTime]       INT            NULL,
    CONSTRAINT [PK__Departme__B2079BCD3A55B145] PRIMARY KEY CLUSTERED ([DepartmentID] ASC),
    CONSTRAINT [FK_Departments_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID])
);

