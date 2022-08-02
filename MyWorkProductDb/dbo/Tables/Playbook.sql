CREATE TABLE [dbo].[Playbook] (
    [CategoryID]          INT            IDENTITY (1, 1) NOT NULL,
    [CategoryName]        NVARCHAR (MAX) NULL,
    [CategoryDescription] NVARCHAR (MAX) NULL,
    [CreatedOn]           DATETIME       NULL,
    [ClientID]            INT            NULL,
    [DepartmentID]        INT            NULL,
    [ParentID]            INT            NULL,
    [Active]              BIT            NULL,
    CONSTRAINT [PK_playbook] PRIMARY KEY CLUSTERED ([CategoryID] ASC),
    CONSTRAINT [FK_playbook_playbook] FOREIGN KEY ([ParentID]) REFERENCES [dbo].[Playbook] ([CategoryID])
);

