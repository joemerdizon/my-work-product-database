CREATE TABLE [dbo].[VoteType] (
    [VoteTypeID] INT          NOT NULL,
    [Title]      VARCHAR (50) NULL,
    [Score]      INT          NULL,
    CONSTRAINT [PK_VoteType] PRIMARY KEY CLUSTERED ([VoteTypeID] ASC)
);

