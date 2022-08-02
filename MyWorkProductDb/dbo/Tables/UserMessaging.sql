CREATE TABLE [dbo].[UserMessaging] (
    [MessageID]        INT            IDENTITY (1, 1) NOT NULL,
    [FromUserID]       INT            NULL,
    [ToUserID]         INT            NULL,
    [MessageTitle]     NVARCHAR (MAX) NULL,
    [MessageBody]      NVARCHAR (MAX) NULL,
    [MessageTimestamp] DATETIME       NULL,
    [ReadStatus]       BIT            NULL,
    [Archived]         BIT            NULL,
    [ParentID]         INT            NULL,
    CONSTRAINT [PK__UserMess__C87C037CD589ED20] PRIMARY KEY CLUSTERED ([MessageID] ASC),
    CONSTRAINT [FK_UserMessaging_UsersFrom] FOREIGN KEY ([FromUserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserMessaging_UsersTo] FOREIGN KEY ([ToUserID]) REFERENCES [dbo].[Users] ([UserID])
);

