CREATE TABLE [dbo].[UserTitles] (
    [TitleID]          INT            IDENTITY (1, 1) NOT NULL,
    [TitleName]        NVARCHAR (500) NULL,
    [TitleDescription] NVARCHAR (500) NULL,
    [ClientID]         INT            NULL,
    [DepartmentID]     INT            NULL,
    [IsAvailable]      BIT            CONSTRAINT [IsAvailable_def_UserTitles] DEFAULT ('false') NOT NULL,
    CONSTRAINT [PK__UserTitl__757589E6B978920C] PRIMARY KEY CLUSTERED ([TitleID] ASC),
    CONSTRAINT [FK_UserTitles_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_UserTitles_Departments] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Departments] ([DepartmentID])
);

