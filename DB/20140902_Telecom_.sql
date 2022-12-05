exec reportCostiNonSpecificati
exec reportAggregati

select top 5 * from mobileIt

--update mobileIt
--set tipoServizio = 'SERVIZIO SUPPLEMENTARE: email su terminale BlackBerry'
--where servizio = 'BLACKBERRY TOP MAIL'

 



select * from mobileIt
	where servizio = 'BLACKBERRY TOP MAIL'

select COUNT(id) from mobileIt
	where servizio = 'BLACKBERRY TOP MAIL'
