CREATE TABLE [dbo].[ResetAudits] (
    [ResetAuditID]   INT      IDENTITY (1, 1) NOT NULL,
    [ResetStartTime] DATETIME NULL,
    [ResetEndTime]   DATETIME NULL,
    [ResetStatus]    INT      NULL,
    [UserID]         INT      NULL,
    CONSTRAINT [PK_ResetAudits] PRIMARY KEY CLUSTERED ([ResetAuditID] ASC),
    CONSTRAINT [FK_ResetAudits_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

