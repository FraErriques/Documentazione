USE [RealizzazioniItalia]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_statoUso_LOAD]
		@sintesiStrumento = N'lampad'

SELECT	'Return Value' = @return_value

GO
