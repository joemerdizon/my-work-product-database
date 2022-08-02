CREATE TABLE [dbo].[MultiUserReports] (
    [ReportID]    INT            IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (200)  NOT NULL,
    [Users]       VARCHAR (1000) NULL,
    [Url]         VARCHAR (1000) NULL,
    [GeneratedBy] INT            NOT NULL,
    [Time]        DATETIME       NOT NULL,
    [Archived]    BIT            NOT NULL,
    CONSTRAINT [PK_MultiUserReports] PRIMARY KEY CLUSTERED ([ReportID] ASC),
    CONSTRAINT [FK_MultiUserReports_Users] FOREIGN KEY ([GeneratedBy]) REFERENCES [dbo].[Users] ([UserID])
);

