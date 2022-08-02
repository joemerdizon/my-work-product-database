CREATE TABLE [dbo].[UserProfileChangeTraces] (
    [TraceRowID] INT              IDENTITY (1, 1) NOT NULL,
    [UserID]     INT              NULL,
    [TraceID]    UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_UserProfileChangeTraces] PRIMARY KEY CLUSTERED ([TraceRowID] ASC),
    CONSTRAINT [FK_UserProfileChangeTraces_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

