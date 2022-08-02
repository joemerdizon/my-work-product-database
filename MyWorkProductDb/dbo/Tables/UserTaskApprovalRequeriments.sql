CREATE TABLE [dbo].[UserTaskApprovalRequeriments] (
    [ApprovalRequerimentID]    INT            IDENTITY (1, 1) NOT NULL,
    [TaskID]                   INT            NULL,
    [Review]                   NVARCHAR (MAX) NULL,
    [UserID]                   INT            NOT NULL,
    [ChangeDate]               DATETIME       NOT NULL,
    [IsHistory]                BIT            NULL,
    [ProviderStorageAccountID] INT            NULL,
    [BoxDocumentID]            VARCHAR (20)   NULL,
    [DocumentName]             NVARCHAR (100) NULL,
    [DocumentPath]             NVARCHAR (100) NULL,
    [Archived]                 BIT            NULL,
    CONSTRAINT [PK__UserTaskApprovalRequeriments__1CBEEF6FAF23ED4B] PRIMARY KEY CLUSTERED ([ApprovalRequerimentID] ASC),
    CONSTRAINT [FK_UserTaskApprovalRequeriments_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]),
    CONSTRAINT [FK_UserTaskApprovalRequeriments_UserTasks] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

