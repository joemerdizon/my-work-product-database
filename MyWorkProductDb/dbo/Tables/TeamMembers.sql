CREATE TABLE [dbo].[TeamMembers] (
    [TeamMemberId]        INT           IDENTITY (1, 1) NOT NULL,
    [TeamId]              INT           NOT NULL,
    [UserId]              INT           NOT NULL,
    [BossId]              INT           NULL,
    [PositionName]        VARCHAR (50)  NOT NULL,
    [PositionDescription] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_TeamMembers] PRIMARY KEY CLUSTERED ([TeamMemberId] ASC),
    CONSTRAINT [FK_TeamMembers_TeamMembers] FOREIGN KEY ([BossId]) REFERENCES [dbo].[TeamMembers] ([TeamMemberId]),
    CONSTRAINT [FK_TeamMembers_Teams] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Teams] ([TeamId]),
    CONSTRAINT [FK_TeamMembers_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
);

