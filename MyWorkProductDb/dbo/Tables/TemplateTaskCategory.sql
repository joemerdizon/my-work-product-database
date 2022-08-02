CREATE TABLE [dbo].[TemplateTaskCategory] (
    [CategoryID]          INT            IDENTITY (1, 1) NOT NULL,
    [CategoryName]        NVARCHAR (MAX) NULL,
    [CategoryTypeID]      INT            NULL,
    [ClientID]            INT            NULL,
    [ParentID]            INT            NULL,
    [SafetyPoints]        INT            CONSTRAINT [DF__TemplateT__Safet__5BAD9CC8] DEFAULT ((0)) NOT NULL,
    [QualityPoints]       INT            CONSTRAINT [DF__TemplateT__Quali__5CA1C101] DEFAULT ((0)) NOT NULL,
    [EffectivenessPoints] INT            CONSTRAINT [DF__TemplateT__Effec__5D95E53A] DEFAULT ((0)) NOT NULL,
    [EfficiencyPoints]    INT            CONSTRAINT [DF__TemplateT__Effic__5E8A0973] DEFAULT ((0)) NOT NULL,
    [ZestPoints]          INT            CONSTRAINT [DF__TemplateT__ZestP__5F7E2DAC] DEFAULT ((0)) NOT NULL,
    [Archived]            BIT            CONSTRAINT [DF__TemplateT__Archi__7073AF84] DEFAULT ('false') NOT NULL,
    CONSTRAINT [PK_TemplateTaskCategory] PRIMARY KEY CLUSTERED ([CategoryID] ASC),
    CONSTRAINT [FK_TemplateTaskCategory_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_TemplateTaskCategory_TemplateTaskCategory] FOREIGN KEY ([ParentID]) REFERENCES [dbo].[TemplateTaskCategory] ([CategoryID]),
    CONSTRAINT [FK_TemplateTaskCategory_TemplateTaskCategoryType] FOREIGN KEY ([CategoryTypeID]) REFERENCES [dbo].[TemplateTaskCategoryType] ([CategoryTypeID])
);

