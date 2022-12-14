CREATE TABLE [dbo].[Users] (
    [UserID]                 INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]              NVARCHAR (500) NULL,
    [LastName]               NVARCHAR (500) NULL,
    [Email]                  NVARCHAR (500) NULL,
    [Address1]               NVARCHAR (500) NULL,
    [Address2]               NVARCHAR (500) NULL,
    [City]                   NVARCHAR (500) NULL,
    [StateID]                INT            NULL,
    [Zip]                    NVARCHAR (200) NULL,
    [Username]               NVARCHAR (100) NULL,
    [Password]               NVARCHAR (100) NULL,
    [IsActive]               BIT            NULL,
    [LastLogin]              DATETIME       NULL,
    [DateOfBirth]            DATE           NULL,
    [ProfilePicURL]          NVARCHAR (100) NULL,
    [ClientID]               INT            NULL,
    [EmpStartDate]           DATETIME       NULL,
    [Telephone]              NVARCHAR (50)  NULL,
    [Country]                INT            NULL,
    [AvailablityID]          INT            NULL,
    [DepartmentID]           INT            NULL,
    [RoleID]                 INT            NULL,
    [TitleID]                INT            NULL,
    [UserTitleID]            INT            NULL,
    [Password1]              NVARCHAR (MAX) NULL,
    [AcceptedTermsOfUse]     BIT            CONSTRAINT [AcceptedTermsOfUse_default_users] DEFAULT ('false') NOT NULL,
    [LastPasswordUpdateDate] DATETIME       NULL,
    [ShowTips]               BIT            NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserID] ASC),
    CONSTRAINT [FK_Users_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_Users_ClientTitles] FOREIGN KEY ([TitleID]) REFERENCES [dbo].[ClientTitles] ([TitleID]),
    CONSTRAINT [FK_Users_Departments] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Departments] ([DepartmentID]),
    CONSTRAINT [FK_Users_Roles] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([RoleID]),
    CONSTRAINT [FK_Users_UserAvailableStatus] FOREIGN KEY ([AvailablityID]) REFERENCES [dbo].[UserAvailableStatus] ([AvailabilityID]),
    CONSTRAINT [FK_Users_UsersTitles] FOREIGN KEY ([UserTitleID]) REFERENCES [dbo].[UserTitles] ([TitleID]),
    CONSTRAINT [FK_Users_USStates] FOREIGN KEY ([StateID]) REFERENCES [dbo].[USStates] ([StateID])
);

