USE [dotazioni2022]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_EventLog_INSERT]
		@Event_data = '1999/12/31',
		@Event_description = 'slash'
SELECT	'Return Value' = @return_value
GO

select COUNT(*) from eventLog
select * from eventLog

select * from dotazioni2022.dbo.SIM_BBT
where numero like '331%6063607'
='3665612640'

where beneficiario like '%francesc%'

select * from dotazioni2022.dbo.SIM_BBT
where note like '%100Gb%'

select * from dotazioni2022.dbo.SIM_BBT
where servizio like '%M2M%'
