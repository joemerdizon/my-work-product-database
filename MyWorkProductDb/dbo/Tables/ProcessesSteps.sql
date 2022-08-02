CREATE TABLE [dbo].[ProcessesSteps] (
    [ProcessStepID]          INT            IDENTITY (1, 1) NOT NULL,
    [ProcessStepName]        NVARCHAR (250) NULL,
    [ProcessStepDescription] NVARCHAR (MAX) NULL,
    [ProcessID]              INT            NULL,
    [ProgressStatus]         BIT            NULL,
    CONSTRAINT [PK__Processe__7EA45C4D688C2885] PRIMARY KEY CLUSTERED ([ProcessStepID] ASC),
    CONSTRAINT [FK_ProcessesSteps_ProcessesMaster] FOREIGN KEY ([ProcessID]) REFERENCES [dbo].[ProcessesMaster] ([ProcessID])
);

