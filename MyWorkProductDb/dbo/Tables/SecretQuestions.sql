CREATE TABLE [dbo].[SecretQuestions] (
    [SecretQuestionID] INT            IDENTITY (1, 1) NOT NULL,
    [SecretQuestion]   NVARCHAR (500) NULL,
    [IsActive]         BIT            NULL,
    CONSTRAINT [PK_SecretQuestions] PRIMARY KEY CLUSTERED ([SecretQuestionID] ASC)
);

