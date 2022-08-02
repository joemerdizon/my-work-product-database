CREATE TABLE [dbo].[ResourceAvailStatuses] (
    [ResourceAvailabityStatusID] INT            IDENTITY (1, 1) NOT NULL,
    [StatusDescription]          NVARCHAR (MAX) NULL,
    [StatusCategory]             NVARCHAR (MAX) NULL,
    [ResourceID]                 INT            NULL,
    [ImageID]                    INT            NULL,
    CONSTRAINT [PK__Resource__59CA979F684404F3] PRIMARY KEY CLUSTERED ([ResourceAvailabityStatusID] ASC)
);

