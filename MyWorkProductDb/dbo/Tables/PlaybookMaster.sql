CREATE TABLE [dbo].[PlaybookMaster] (
    [PlaybookID]   INT            IDENTITY (1, 1) NOT NULL,
    [Deaprtment]   NVARCHAR (MAX) NULL,
    [Category]     NVARCHAR (MAX) NULL,
    [Name]         NVARCHAR (MAX) NULL,
    [Description]  NVARCHAR (MAX) NULL,
    [DocumentName] NVARCHAR (MAX) NULL,
    [Multimedia1]  NVARCHAR (MAX) NULL,
    [Multimedia2]  NVARCHAR (MAX) NULL,
    [Multimedia3]  NVARCHAR (MAX) NULL,
    [Users]        NVARCHAR (MAX) NULL,
    [Viewers]      NVARCHAR (MAX) NULL,
    CONSTRAINT [PK__Playbook__89CFA26A9CFE8AB7] PRIMARY KEY CLUSTERED ([PlaybookID] ASC)
);

