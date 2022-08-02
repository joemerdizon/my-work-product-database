CREATE TABLE [dbo].[SqueezeAggregate] (
    [SqueezeId]     INT IDENTITY (1, 1) NOT NULL,
    [UserId]        INT NOT NULL,
    [Safety]        INT NOT NULL,
    [Quality]       INT NOT NULL,
    [Efficiency]    INT NOT NULL,
    [Effectiveness] INT NOT NULL,
    [Zest]          INT NOT NULL,
    CONSTRAINT [PK_SqueezeAggregate] PRIMARY KEY CLUSTERED ([SqueezeId] ASC),
    CONSTRAINT [FK_SqueezeAggregate_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

