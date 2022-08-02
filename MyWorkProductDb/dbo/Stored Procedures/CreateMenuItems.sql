





CREATE PROCEDURE [dbo].[CreateMenuItems]
	@ClientId Int
AS

	DECLARE @NavTitle NVARCHAR(50)
	DECLARE @NavLink NVARCHAR(max)
	DECLARE @NavImage NVARCHAR(50)
	DECLARE @NavOrder INT
	DECLARE @NavSection nvarchar(30)
	DECLARE @Beta BIT
	

	DECLARE site_cursor CURSOR FOR
	SELECT NavTitle, NavLink, NavImage, NavOrder, NavSection, Beta FROM SiteNavigations ORDER BY NavOrder

	OPEN site_cursor

	FETCH NEXT FROM site_cursor INTO @NavTitle, @NavLink, @NavImage, @NavOrder, @NavSection, @Beta

	BEGIN TRANSACTION

	BEGIN TRY

		WHILE @@FETCH_STATUS = 0

			BEGIN

				INSERT INTO SiteLinks Values(@NavTitle, @NavLink, @NavImage, NULL, @ClientId, @NavOrder, @NavSection, @Beta)
			
				FETCH NEXT FROM site_cursor INTO @NavTitle, @NavLink, @NavImage, @NavOrder, @NavSection, @Beta

			END
	
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
			PRINT 'Error while inserting site links '
		END CATCH

		IF @@TranCount>0 -- Transaction still open, so must have succeeded. If rolled back, trancount would be 0
		BEGIN
			COMMIT TRANSACTION
			PRINT 'All Site Links has successfully inserted.'
		END

	CLOSE site_cursor
	DEALLOCATE site_cursor

