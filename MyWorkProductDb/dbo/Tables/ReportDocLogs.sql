CREATE TABLE [dbo].[ReportDocLogs] (
    [ReportDocID]          INT            IDENTITY (1, 1) NOT NULL,
    [ReportDocName]        NVARCHAR (MAX) NOT NULL,
    [ReportDocFullPath]    NVARCHAR (MAX) NOT NULL,
    [ReportDocGeneratedBy] INT            NOT NULL,
    [ReportDocBelongsTo]   INT            NOT NULL,
    [ReportDocDateTime]    DATETIME       NOT NULL,
    [Archive]              BIT            NULL,
    CONSTRAINT [PK_ReportDocLogs] PRIMARY KEY CLUSTERED ([ReportDocID] ASC),
    CONSTRAINT [FK_ReportDocLogs_GeneratedBy] FOREIGN KEY ([ReportDocGeneratedBy]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_ReportDocLogs_ReportDocBelongsTo] FOREIGN KEY ([ReportDocBelongsTo]) REFERENCES [dbo].[Users] ([UserID])
);

