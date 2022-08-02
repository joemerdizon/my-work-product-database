CREATE TABLE [dbo].[AuditTrailMaster] (
    [AuditTrailID]    INT            IDENTITY (1, 1) NOT NULL,
    [TaskID]          INT            NULL,
    [TaskDescription] NVARCHAR (500) NULL,
    [UserID]          INT            NULL,
    [Notes]           NVARCHAR (MAX) NULL,
    [TimeStamp]       DATETIME       NULL,
    CONSTRAINT [PK__AuditTra__41B2DDD3EC20BF37] PRIMARY KEY CLUSTERED ([AuditTrailID] ASC)
);

