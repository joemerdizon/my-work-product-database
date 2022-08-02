CREATE TABLE [dbo].[TaskStatuses] (
    [TaskStatusID]          INT           IDENTITY (1, 1) NOT NULL,
    [TaskStatusDescription] NVARCHAR (50) NULL,
    CONSTRAINT [PK__TaskStat__C023DD0C7AAB77BE] PRIMARY KEY CLUSTERED ([TaskStatusID] ASC)
);

