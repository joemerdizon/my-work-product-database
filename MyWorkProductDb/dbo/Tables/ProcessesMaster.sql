CREATE TABLE [dbo].[ProcessesMaster] (
    [ProcessID]          INT            IDENTITY (1, 1) NOT NULL,
    [ProcessName]        NVARCHAR (250) NULL,
    [ProcessDescription] NVARCHAR (MAX) NULL,
    [UserID]             INT            NULL,
    CONSTRAINT [PK__Processe__1B39A976AA8FCA58] PRIMARY KEY CLUSTERED ([ProcessID] ASC),
    CONSTRAINT [FK_ProcessesMaster_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

