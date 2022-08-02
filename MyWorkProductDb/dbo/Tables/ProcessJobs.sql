CREATE TABLE [dbo].[ProcessJobs] (
    [JobId]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (100) NOT NULL,
    [Namespace]  VARCHAR (100) NOT NULL,
    [Class]      VARCHAR (100) NOT NULL,
    [Minutes]    INT           NOT NULL,
    [NotBefore]  INT           NOT NULL,
    [NotAfter]   INT           NOT NULL,
    [Monday]     BIT           NOT NULL,
    [Tuesday]    BIT           NOT NULL,
    [Wednesday]  BIT           NOT NULL,
    [Thursday]   BIT           NOT NULL,
    [Friday]     BIT           NOT NULL,
    [Saturday]   BIT           NOT NULL,
    [Sunday]     BIT           NOT NULL,
    [EmailOwner] VARCHAR (100) NOT NULL,
    [lastRun]    INT           CONSTRAINT [DF__ProcessJo__lastR__58D1301D] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ProcessJobs] PRIMARY KEY CLUSTERED ([JobId] ASC)
);

