CREATE TABLE [dbo].[Log] (
    [LogID]      INT              IDENTITY (1, 1) NOT NULL,
    [Date]       DATETIME         NOT NULL,
    [Thread]     VARCHAR (255)    NOT NULL,
    [Level]      VARCHAR (50)     NOT NULL,
    [Logger]     VARCHAR (255)    NOT NULL,
    [Message]    VARCHAR (4000)   NOT NULL,
    [Exception]  VARCHAR (2000)   NULL,
    [UserID]     INT              NULL,
    [GUID]       UNIQUEIDENTIFIER NOT NULL,
    [RequestURL] VARCHAR (500)    NULL
);

