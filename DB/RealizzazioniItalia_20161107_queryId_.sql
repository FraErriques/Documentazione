USE [RealizzazioniItalia]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_id_LOAD]
		@id = 4

SELECT	'Return Value' = @return_value

GO
