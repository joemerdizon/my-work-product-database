CREATE TABLE [dbo].[ClientTitles] (
    [TitleID]   INT            IDENTITY (1, 1) NOT NULL,
    [ClientID]  INT            NOT NULL,
    [TitleName] NVARCHAR (100) NULL,
    [ColorFrom] NVARCHAR (12)  NULL,
    [ColorTo]   NVARCHAR (12)  NULL,
    [Archived]  BIT            CONSTRAINT [DF__ClientTit__Archi__0662F0A3] DEFAULT ('false') NOT NULL,
    CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED ([TitleID] ASC),
    CONSTRAINT [FK_ClientTitles_Clients] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID])
);

