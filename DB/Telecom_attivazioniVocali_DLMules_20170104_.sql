
select top 5 * from Telecom.dbo.lottoDue_produzione
order by attivazione desc

--insert into Telecom.dbo.lottoDue_produzione(
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
--'xxx'
--,GETDATE()
--,'Vocale Open Standard'
--,'Lanconelli'
--,'17 euro/mese' 
--,'4858' 
--,'05026685' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758818 - R56C''. Attivata il 2017.01.04 per Lanconelli.'
--)


--insert into Telecom.dbo.lottoDue_produzione(
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
--'xxx'
--,GETDATE()
--,'Vocale Open Standard'
--,'Rughetti'
--,'17 euro/mese' 
--,'6175' 
--,'91129480' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758800 - R56C''. Attivata il 2017.01.04 per Rughetti.'
--)


--insert into Telecom.dbo.lottoDue_produzione(
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
--'xxx'
--,GETDATE()
--,'Vocale Open Standard'
--,'Egger'
--,'17 euro/mese' 
--,'0724' 
--,'35151047' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758792 - R56C''. Attivata il 2017.01.04 per Egger.'
--)


--insert into Telecom.dbo.lottoDue_produzione(
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
--'xxx'
--,GETDATE()
--,'Vocale Open Standard'
--,'Barnabei'
--,'17 euro/mese' 
--,'2065' 
--,'98074985' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758784 - R56C''. Attivata il 2017.01.04 per Barnabei.'
--)



select * from Telecom.dbo.lottoDue_produzione
where 
Beneficiario  like '%Gian%' 
and Beneficiario  not like '%M2M%'





--insert into Telecom.dbo.lottoDue_produzione(
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
--'xxx'
--,GETDATE()
--,'Vocale Open Standard'
--,'Casale'
--,'17 euro/mese' 
--,'8389' 
--,'47159604' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758776 - R56C''. Attivata il 2017.01.04 per Casale.'
--)



ICCID='8939010001980907956 - L56C'. Attivata il 2016.10.05 per GPS Cappelletto. Consegnata il 2016.dicembre.13.

update Telecom.dbo.lottoDue_produzione
set note='ICCID=''8939010001980907956 - L56C''. Attivata il 2016.10.05 per GPS Cappelletto. Consegnata il 2016.dicembre.13.'
where id=58

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%zzz   M2M%Lo%'

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%capp%'


select * from Telecom.dbo.lottoDue_produzione
where numero='3667578215'  ---- Fedele di Catrano

select * from Telecom.dbo.lottoDue_produzione
where numero='3371283365'   --Pichierri



select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%M2M%'

select * from Telecom.dbo.lottoDue_produzione
where numero='3316134499'

select * from Telecom.dbo.lottoDue_produzione
where numero='3667578215'


366.75.78.215  Fedele Agosto.21


335 7459585  Zanforlin  Agosto.17
select * from Telecom.dbo.lottoDue_produzione
where numero='3357459585'



select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%iracus%'

--update Telecom.dbo.lottoDue_produzione
--set PIN='7247'
--where id=43



select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%arover%'

-- FAST ALERT LINEA FONIA : Schivari
select * from Telecom.dbo.lottoDue_produzione
where numero='3371425945'


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
--'3387807399'
--,GETDATE()
--,'zzz m2M Dati Top    '
--,'zzz   M2M  GPS Cappelletto'
--,'11 euro/mese' 
--,'8489' 
--,'95041486' 
--,'dati 20Gb/mese M2M' 
--,'ICCID=''8939010001980907956 - L56C''. Attivata il 2016.10.05 per GPS Cappelletto.'
--)


select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%M2M%'

-- id==58	3387807399	2016-10-05 10:43:17.450	zzz m2M Dati Top    	zzz   M2M  GPS Cappelletto	11 euro/mese	8489	95041486	dati 20Gb/mese M2M	ICCID='8939010001980907956 - L56C'. Attivata il 2016.10.05 per GPS Cappelletto.

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%M2M%cappell%'
