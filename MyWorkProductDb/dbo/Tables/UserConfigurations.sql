CREATE TABLE [dbo].[UserConfigurations] (
    [UserConfigurationID] INT          IDENTITY (1, 1) NOT NULL,
    [BelongsToUser]       INT          NOT NULL,
    [TimeZone]            VARCHAR (35) NULL,
    [TaskEventStartTime]  INT          NULL,
    [TaskEventEndTime]    INT          NULL,
    [EventCharacterLimit] INT          NULL,
    CONSTRAINT [PK_UserConfigurations] PRIMARY KEY CLUSTERED ([UserConfigurationID] ASC),
    CONSTRAINT [FK_UserConfigurations_Users] FOREIGN KEY ([BelongsToUser]) REFERENCES [dbo].[Users] ([UserID])
);

