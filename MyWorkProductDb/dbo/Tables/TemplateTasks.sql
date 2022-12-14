CREATE TABLE [dbo].[TemplateTasks] (
    [TemplateTaskID]    INT            IDENTITY (1, 1) NOT NULL,
    [ParentID]          INT            NULL,
    [TaskName]          NVARCHAR (MAX) NULL,
    [TaskDescription]   NVARCHAR (MAX) NULL,
    [TaskCategoryID]    INT            NOT NULL,
    [TaskSubCategory]   INT            NULL,
    [ArchiveTask]       BIT            NULL,
    [LinkToChart]       BIT            NULL,
    [ClientID]          INT            NULL,
    [TaskCreated]       DATETIME       NULL,
    [HeadsUp]           INT            NULL,
    [Urgent]            INT            NULL,
    [Approvable]        BIT            NULL,
    [TemplateApprover]  INT            NULL,
    [Creator]           INT            NULL,
    [Approved]          BIT            NULL,
    [ApprovalCondition] INT            NULL,
    [Auditable]         BIT            NULL,
    [Archive]           BIT            CONSTRAINT [Archive_def_templatetasknew] DEFAULT ('false') NOT NULL,
    [Assignable]        BIT            CONSTRAINT [DF__TemplateT__Assig__607251E5] DEFAULT ('false') NOT NULL,
    CONSTRAINT [PK_TemplateTask] PRIMARY KEY CLUSTERED ([TemplateTaskID] ASC),
    CONSTRAINT [FK_TemplateTask_ActionItems] FOREIGN KEY ([ParentID]) REFERENCES [dbo].[TemplateTasks] ([TemplateTaskID]),
    CONSTRAINT [FK_TemplateTaskCategory] FOREIGN KEY ([TaskCategoryID]) REFERENCES [dbo].[TemplateTaskCategory] ([CategoryID])
);

