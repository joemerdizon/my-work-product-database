CREATE TABLE [dbo].[KaizenVoteScore] (
    [ID]           INT IDENTITY (1, 1) NOT NULL,
    [userIdVoting] INT NOT NULL,
    [kaizenItemId] INT NOT NULL,
    [vote]         INT NOT NULL,
    [userIdVoted]  INT NOT NULL,
    [score]        INT NOT NULL,
    CONSTRAINT [PK_KaizenVoteScore] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_KaizenVoteScore_KaizenItems] FOREIGN KEY ([kaizenItemId]) REFERENCES [dbo].[KaizenItems] ([ID]),
    CONSTRAINT [FK_KaizenVoteScore_Users] FOREIGN KEY ([userIdVoting]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_KaizenVoteScore_Users1] FOREIGN KEY ([userIdVoted]) REFERENCES [dbo].[Users] ([UserID])
);

