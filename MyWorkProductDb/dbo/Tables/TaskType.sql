CREATE TABLE [dbo].[TaskType] (
    [TaskTypeID]          INT           IDENTITY (1, 1) NOT NULL,
    [TaskTypeDescription] NVARCHAR (50) NULL,
    CONSTRAINT [PK__TaskType__66B23E53E8BB772C] PRIMARY KEY CLUSTERED ([TaskTypeID] ASC)
);

