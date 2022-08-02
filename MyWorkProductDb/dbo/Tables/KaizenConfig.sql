CREATE TABLE [dbo].[KaizenConfig] (
    [ID]                          INT IDENTITY (1, 1) NOT NULL,
    [AutomaticScoreForNewEntries] INT NOT NULL,
    [ScoreForReplies]             INT NULL,
    [ScoreUnitForVotes]           INT NULL,
    [scoreForTitle]               INT NULL,
    [scoreForDescription]         INT NULL,
    [scoreForQuestion1]           INT NULL,
    [scoreForQuestion2]           INT NULL,
    [scoreForQuestion3]           INT NULL,
    [scoreForEachWhy]             INT NULL,
    [scoreForEachAttach]          INT NULL,
    CONSTRAINT [PK_KaizenConfig] PRIMARY KEY CLUSTERED ([ID] ASC)
);

