CREATE TABLE [dbo].[TemplateTaskCategoryType] (
    [CategoryTypeID]   INT             IDENTITY (1, 1) NOT NULL,
    [CategoryTypeName] NVARCHAR (1000) NULL,
    CONSTRAINT [PK_TemplateTaskCategoryType] PRIMARY KEY CLUSTERED ([CategoryTypeID] ASC)
);

