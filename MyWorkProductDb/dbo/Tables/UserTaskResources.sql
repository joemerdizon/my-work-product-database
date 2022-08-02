CREATE TABLE [dbo].[UserTaskResources] (
    [ResourceID]   INT            IDENTITY (1, 1) NOT NULL,
    [TaskID]       INT            NULL,
    [ResourceName] NVARCHAR (MAX) NULL,
    [ResourceLink] NVARCHAR (MAX) NULL,
    [Question]     INT            NULL,
    CONSTRAINT [PK__UserTask__4ED1814F8BD61B20] PRIMARY KEY CLUSTERED ([ResourceID] ASC),
    CONSTRAINT [FK_UserTaskResources_UserTasks] FOREIGN KEY ([TaskID]) REFERENCES [dbo].[UserTasks] ([TaskID])
);

