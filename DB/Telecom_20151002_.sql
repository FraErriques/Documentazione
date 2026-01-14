select * from lottoDue_produzione
order by Beneficiario asc

select * from lottoDue_produzione
order by id asc

select * from lottoDue_produzione
where servizio like '%m2m%'

select * from lottoDue_produzione
order by soglie asc


--update lottoDue_produzione
--set costoMensile = '17 euro/mese'
--where servizio = 'Vocale Open Standard'

--update lottoDue_produzione
--set costoMensile = '11 euro/mese'
--where servizio like '%M2M%'

-----------------vocale
--update lottoDue_produzione
--set soglie = 'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; '
--where servizio = 'Vocale Open Standard'

--update lottoDue_produzione
--set soglie = 'INFORMATIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; '
--where servizio = 'Vocale Open Standard'
--and Beneficiario in (
--'Francesconi'
--,'Lombardi'
--,'Mazzucato'
--,'Rea'
--,'Voza'
--,'Zurlo'
--)

select * from lottoDue_produzione
where servizio = 'Vocale Open Standard'
and Beneficiario in (
'Francesconi'
,'Lombardi'
,'Mazzucato'
,'Rea'
,'Voza'
,'Zurlo'
)
