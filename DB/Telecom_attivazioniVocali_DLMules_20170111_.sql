select * from RealizzazioniItalia.dbo.strumento

exec RealizzazioniItalia.dbo.usp_id_LOAD 3

--insert RealizzazioniItalia.dbo.strumento(
---- id
--sintesi
--,dettaglio
--,id_responsabile
--)values(
----id
--'fotocamera compatta Nikon rossa'
--,'matricola==41016432. Fotocamera compatta Nikon Coolpix AW 130 rossa, per il lotto dell’Isarco;acquisto in data 2018#maggio#30.'
--,7 -- i.e. 'Pozzati'
--)


select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP

select id,Beneficiario, numero , note
from  Telecom.dbo.lottoDue_produzione
where numero='3667578215'


select * 
from  Telecom.dbo.lottoDue_produzione
where Beneficiario like '%schiv%'

select id,Beneficiario, numero , note
from  Telecom.dbo.lottoDue_produzione
where numero='3669010498'

select * 
from  Telecom.dbo.lottoDue_produzione
where numero='3669010498'

--update  Telecom.dbo.lottoDue_produzione
--set soglie='20 GigaByte/mese'
--where numero='3669010498'




select Beneficiario, numero 
from  Telecom.dbo.lottoDue_produzione
where Beneficiario like '%ibill%'
order by attivazione desc

select id,Beneficiario, numero , note
from  Telecom.dbo.lottoDue_produzione
where Beneficiario like '%ibill%'
order by attivazione desc

select *
from  Telecom.dbo.lottoDue_produzione
where Beneficiario like '%ibill%'
order by attivazione desc


select Beneficiario, numero 
from  Telecom.dbo.lottoDue_produzione
where id between 60 and 64
order by attivazione desc


select TOP 11 * 
from  Telecom.dbo.lottoDue_produzione
--where id between 60 and 64
order by attivazione desc

select * 
from  Telecom.dbo.lottoDue_produzione
where id in (66, 68) 

select Beneficiario, note
from  Telecom.dbo.lottoDue_produzione
where id in (66, 68) 


--update Telecom.dbo.lottoDue_produzione
----set Beneficiario='Pappalardo'
--set note='ICCID=''8939010002033758842 - R56C''. Attivata il 2017.01.11 per Pappalardo.'
--where id=68



--DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; 

select Beneficiario, numero 
from  Telecom.dbo.lottoDue_produzione
where
 Beneficiario like '%toro%'
 or Beneficiario like '%%'
order by attivazione desc

select TOP 9 Beneficiario, numero
from  Telecom.dbo.lottoDue_produzione
order by attivazione desc

select id, numero, Beneficiario, note
from  Telecom.dbo.lottoDue_produzione
where id between 60 and 64
order by attivazione desc


select id, numero, Beneficiario, note
from  Telecom.dbo.lottoDue_produzione
where Beneficiario like '%pozz%'

select top 18 * from Telecom.dbo.lottoDue_produzione
order by attivazione desc

--update Telecom.dbo.lottoDue_produzione
--set note='cambio macchina cellulare in data 2017.gennaio.13; riceve un Samsung J5 Android. Conserva la MicroSIM. Non ne ricorda il PIN, ma lo ha disabilitato.'
--where id=39

select top 8 * from Telecom.dbo.lottoDue_produzione
order by attivazione desc

select top 8 
id, numero, Beneficiario,PIN, PUK, note
from Telecom.dbo.lottoDue_produzione
order by attivazione desc


--update Telecom.dbo.lottoDue_produzione
--set
--	note=  'ICCID=''8939010002033758842 - R56C''. Attivata il 2017.01.11 per ''Muletto Trr'
--where id=68


--update Telecom.dbo.lottoDue_produzione
--set
--	note='ICCID=''8939010002033758834 - R56C''. Attivata il 2017.01.11 per Benucci.'
--where id=67


--update Telecom.dbo.lottoDue_produzione
--set numero='3666164619'
--where id=68


--update Telecom.dbo.lottoDue_produzione
--set numero='3666164614'
--where id=67


--update Telecom.dbo.lottoDue_produzione
--set numero='3666161658'
--where id=66

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
--,'Muletto Trr'
--,'17 euro/mese' 
--,'2210' 
--,'03211056' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758826 - R56C''. Attivata il 2017.01.11 per ''Muletto Trr''.'
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
--,'Benucci'
--,'17 euro/mese' 
--,'0204' 
--,'49753062' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002033758826 - R56C''. Attivata il 2017.01.11 per Benucci.'
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
--,'Toro'
--,'17 euro/mese' 
--,'4920' 
--,'92474787' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID='8939010002033758826 - R56C'. Attivata il 2017.01.11 per Toro.'
--)

--update Telecom.dbo.lottoDue_produzione
--set note ='ICCID=''8939010002033758826 - R56C''. Attivata il 2017.01.11 per Toro.'
--where id=66

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
