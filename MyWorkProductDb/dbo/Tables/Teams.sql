CREATE TABLE [dbo].[Teams] (
    [TeamId]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (200) NOT NULL,
    [Manager]     INT           NULL,
    [Client]      INT           NOT NULL,
    [archive]     BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED ([TeamId] ASC),
    CONSTRAINT [FK_Teams_Clients] FOREIGN KEY ([Client]) REFERENCES [dbo].[Clients] ([ClientID]),
    CONSTRAINT [FK_Teams_Users] FOREIGN KEY ([Manager]) REFERENCES [dbo].[Users] ([UserID])
);

