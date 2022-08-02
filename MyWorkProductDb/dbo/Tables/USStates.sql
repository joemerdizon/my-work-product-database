CREATE TABLE [dbo].[USStates] (
    [StateID]   INT            IDENTITY (1, 1) NOT NULL,
    [StateName] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_USStates] PRIMARY KEY CLUSTERED ([StateID] ASC)
);

