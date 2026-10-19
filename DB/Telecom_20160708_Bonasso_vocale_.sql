select top 2 * from lottoDue_produzione

--Buongiorno sig. Erriques
--alla sim sotto riportata e' stata assegnata la numerazione 3371102803 configurata come richiesto.
--saluti
--Marcella Tessarin



--insert into lottoDue_produzione(
----id------
--numero
--,attivazione
--,servizio
--,Beneficiario
--,costoMensile
--,PIN
--,PUK
--,soglie
--,note
--)values(
-----id----
--'3371102803'
--,GETDATE()
--,'Vocale Open Standard'
--,'Bonasso'
--,'17 euro/mese' 
--,'1544' 
--,'68163321' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'abbinata a cellulare Samsung IMEI=''355922/07/065391/6''. Attivata il 2016.07.08 per Bonasso.'
--)

select  * from lottoDue_produzione
where Beneficiario like '%bonasso%'
