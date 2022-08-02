CREATE TABLE [dbo].[PasswordChangeRequest] (
    [PasswordChangeRequestID] VARCHAR (300) NOT NULL,
    [UserId]                  INT           NOT NULL,
    [Time]                    DATETIME      NULL,
    CONSTRAINT [PK__Password__541810D94777D918] PRIMARY KEY CLUSTERED ([PasswordChangeRequestID] ASC)
);

