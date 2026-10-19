select * from lottoDue_produzione
order by Beneficiario asc

--insert into lottoDue_produzione(
----id
--numero
--,attivazione
--,servizio
--,Beneficiario,costoMensile
--,PIN
--,PUK
--,soglie
--) values(
----id
--'3371425945'
--,GETDATE()
--,'Vocale Open Standard'
--,'Schivari'
--,'17 euro/mese'
--,'4272'
--,'53539931'
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; '
--)

select * from lottoDue_produzione
where Beneficiario like '%pedr%'
order by Beneficiario asc

select * from lottoDue_produzione
where Beneficiario like '%sch%'
order by Beneficiario asc


--update lottoDue_produzione
--set
--	PIN = '5091'
--	,PUK = '08435406'
--where id = 37	
