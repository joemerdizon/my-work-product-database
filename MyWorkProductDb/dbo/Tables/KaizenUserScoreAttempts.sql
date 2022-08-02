CREATE TABLE [dbo].[KaizenUserScoreAttempts] (
    [KaizenScoreAttempts] INT IDENTITY (1, 1) NOT NULL,
    [UserID]              INT NULL,
    [VoteTypeID]          INT NULL,
    [KaizenID]            INT NULL,
    CONSTRAINT [PK__KaizenUs__C7927EDCE9380CEF] PRIMARY KEY CLUSTERED ([KaizenScoreAttempts] ASC),
    CONSTRAINT [FK_KaizenUserScoreAttempts_Kaizen] FOREIGN KEY ([KaizenID]) REFERENCES [dbo].[Kaizen] ([KaizenID]),
    CONSTRAINT [FK_KaizenUserScoreAttempts_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

