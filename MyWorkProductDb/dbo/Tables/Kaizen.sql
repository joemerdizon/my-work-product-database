CREATE TABLE [dbo].[Kaizen] (
    [KaizenID]          INT            IDENTITY (1, 1) NOT NULL,
    [KaizenTitle]       NVARCHAR (MAX) NOT NULL,
    [TotalPoints]       INT            NULL,
    [KaizenTopCat]      INT            NULL,
    [KaizenSecondCat]   INT            NULL,
    [SubmittedByUserID] INT            NULL,
    [ParentID]          INT            NULL,
    [DateCreated]       SMALLDATETIME  NULL,
    [why1]              NVARCHAR (MAX) NULL,
    [why2]              NVARCHAR (MAX) NULL,
    [why3]              NVARCHAR (MAX) NULL,
    [why4]              NVARCHAR (MAX) NULL,
    [why5]              NVARCHAR (MAX) NULL,
    [what1]             NVARCHAR (MAX) NULL,
    [what2]             NVARCHAR (MAX) NULL,
    [how]               NVARCHAR (MAX) NULL,
    CONSTRAINT [PK__Kaizen__3B64DCFA46B817EE] PRIMARY KEY CLUSTERED ([KaizenID] ASC),
    CONSTRAINT [FK_Kaizen_Kaizen] FOREIGN KEY ([ParentID]) REFERENCES [dbo].[Kaizen] ([KaizenID]),
    CONSTRAINT [FK_Kaizen_KaizenSecondCat] FOREIGN KEY ([KaizenSecondCat]) REFERENCES [dbo].[KaizenSecondCat] ([KaizenSecondCatID]),
    CONSTRAINT [FK_Kaizen_KaizenTopCat] FOREIGN KEY ([KaizenTopCat]) REFERENCES [dbo].[KaizenTopCat] ([KaizenTopCatID]),
    CONSTRAINT [FK_Kaizen_Users] FOREIGN KEY ([SubmittedByUserID]) REFERENCES [dbo].[Users] ([UserID])
);

