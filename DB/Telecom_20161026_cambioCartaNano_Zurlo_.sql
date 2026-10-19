
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
--'3351240459'
--,GETDATE()
--,'Vocale Open Standard'
--,'Zurlo'
--,'17 euro/mese' 
--,'1720' 
--,'16256522' 
--,'INFORMATIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010001873438796''. Attivata il 2016.ottobre.26 per cambio carta da Micro a Nano per cambio telefono ing. Zurlo.'
--)
 

select * from lottoDue_produzione
where Beneficiario like '%zurl%'

select id, attivazione, note from lottoDue_produzione
where Beneficiario like '%zurl%'

--update lottoDue_produzione
--set note='disattivata il 2016.ottobre.27 per cambio carta, finalizzato a prendere nuovo hardware con NanoSIM.'
--where id=49
