
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
--'3386933797'
--,GETDATE()
--,'zzz m2M Dati Top    '
--,'zzz   M2M  Zurlo'
--,'11 euro/mese' 
--,'7338' 
--,'28535618' 
--,'dati 20Gb/mese M2M' 
--,'ICCID=''8939010001964608463''. Attivata il 2016.03.02 per router wifi Zurlo. Il roaming con l''Austria e'' aperto. La matricola del router e'' IMEI 862891011757407.'
--)

select * from lottoDue_produzione
where Beneficiario like '%zurl%'

select * from lottoDue_produzione
where servizio like '%dati%'

select * from lottoDue_produzione
where id=49

--update lottoDue_produzione
--set 
--PIN='2332'
--,PUK='15452125'
--where id=49
