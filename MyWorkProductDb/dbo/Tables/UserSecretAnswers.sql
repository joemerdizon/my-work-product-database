CREATE TABLE [dbo].[UserSecretAnswers] (
    [UserSecretAnswerID] INT            IDENTITY (1, 1) NOT NULL,
    [SecretQuestionID]   INT            NULL,
    [SecretAnswer]       NVARCHAR (500) NULL,
    [UserID]             INT            NULL,
    CONSTRAINT [PK_UserSecretAnswers] PRIMARY KEY CLUSTERED ([UserSecretAnswerID] ASC),
    CONSTRAINT [FK_UserSecretAnswers_SecretQuestions] FOREIGN KEY ([SecretQuestionID]) REFERENCES [dbo].[SecretQuestions] ([SecretQuestionID]),
    CONSTRAINT [FK_UserSecretAnswers_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

