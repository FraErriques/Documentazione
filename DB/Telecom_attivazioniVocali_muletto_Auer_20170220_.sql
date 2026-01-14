
select *
from lottoDue_produzione
where Beneficiario like '%casal%'

DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; 

select *
from lottoDue_produzione
where Beneficiario like '%auer%'

--update Telecom.dbo.lottoDue_produzione
--set Beneficiario='Auer' 
--where id=69


select TOP 5 *
from lottoDue_produzione
where
 Beneficiario not like  '%M2M%'
 and Beneficiario like 'a%'

select note, id, PIN, PUK
from lottoDue_produzione
where 
	Beneficiario like '%auer%'
	and Beneficiario not like '%M2M%'

-- cellulare Samsung Galaxy J5 per fonia ed email, Serial Number=356372087703966
  'SIM vocale ICCID=''8939010002088015528 - L44C'' ; cellulare Samsung Galaxy J5 per fonia ed email, Serial Number=''356372087703966'' .'

--update Telecom.dbo.lottoDue_produzione
--set note='SIM vocale ICCID=''8939010002088015528 - L44C'' ; cellulare Samsung Galaxy J5 per fonia ed email, Serial Number=''356372087703966'' .'
--where id=69

 --SIM vocale ICCID='8939010002088015528 - L44C' ; cellulare Samsung Galaxy J5 per fonia ed email, Serial Number='356372087703966' .

select *
from lottoDue_produzione
where Beneficiario like '%errer%'

select *
from lottoDue_produzione
where id=70


select note from lottoDue_produzione
where id=70


--ICCID='8939010002088015544 - L44C'. Attivata il 2017.02.27 per 'ronda Mules'.Cessazione del servizio di reperibilita', per utilizzo in GPS-pocket.

--update lottoDue_produzione
--set note='ICCID=''8939010002088015544 - L44C''. Attivata il 2017.02.27 per ''ronda Mules''.Cessazione del servizio di reperibilita'', per utilizzo in GPS-pocket.'
--where id=70

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
--'3389384484' -- ing. Ferrero
--,GETDATE()
--,'Vocale Open Standard'
--,'Ferrero'
--,'17 euro/mese' 
--,'5139' 
--,'16489337' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015551 - L44C''. Attivata il 2017.02.28 per ''ing. Ferrero''.'
--)



select *
from Telecom.dbo.lottoDue_produzione
where Beneficiario not like '%M2M%'
order by attivazione desc

select *
from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%lomb%'
order by attivazione desc

-- PIN Lombardi M2M 6004

select *
from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%fuoc%'
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
--'3668344901' -- Fuoco dispositivo sicurezza guardia Mules
--,GETDATE()
--,'Vocale Open Standard'
--,'Fuoco :ronda Mules'
--,'17 euro/mese' 
--,'1725' 
--,'12214867' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015544 - L44C''. Attivata il 2017.02.27 per ''ronda Mules''.'
--)



select *
from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%Giann%'
order by attivazione desc

select * 
from  Telecom.dbo.lottoDue_produzione
where numero='3667578215'

select id,Beneficiario, numero , note
from  Telecom.dbo.lottoDue_produzione
where numero='3667578215'
              3667578215

--DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; 


select top 3 *
from Telecom.dbo.lottoDue_produzione
order by attivazione desc


select top 3 *
from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%Toro%'
order by attivazione desc


select *
from Telecom.dbo.lottoDue_produzione
where id in (66, 68, 69)
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
--'3357995188' -- NB. aspettare numero
--,GETDATE()
--,'Vocale Open Standard'
--,'Muletto Auer'
--,'17 euro/mese' 
--,'9043' 
--,'49408750' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015528 - L44C''. Attivata il 2017.02.20 per ''Muletto Auer''.'
--)

-- 8939010002088015528    L44C  Muletto Auer


select id,Beneficiario, numero , note
from  Telecom.dbo.lottoDue_produzione
where numero='3665668061'


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
