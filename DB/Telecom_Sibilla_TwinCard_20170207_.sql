select * from Telecom.dbo.lottoDue_produzione
where
numero='3316143179'
3316142592

select * from Telecom.dbo.cellulare
where id>=4


--insert into Telecom.dbo.cellulare(
------id------
--matricola
--,attivazione
--,Beneficiario
--,note
--   )values(
---- ---id----
--'352986101091118' -- matricola
--,GETDATE()
--,'Fornari'  -- Beneficiario
--,'Cambio macchina richiesto da Fornari, in data martedì 30 luglio 2019.'
--)


--insert into Telecom.dbo.cellulare(
------id------
--matricola
--,attivazione
--,Beneficiario
--,note
--   )values(
---- ---id----
--'352986101091100' -- matricola
--,GETDATE()
--,'Bacchiega'  -- Beneficiario
--,'Cambio macchina richiesto da Bacchiega, in data giovedì 27 giugno 2019.'
--)



--USE [Telecom]
--GO
--/****** Object:  Table [dbo].[cellulari]    Script Date: 05/14/2019 12:34:32 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--CREATE TABLE [dbo].[cellulare](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[matricola] [varchar](30) NOT NULL,
--	[attivazione] [datetime] NOT NULL,
--	[Beneficiario] [varchar](150) NOT NULL,
--	[note] [text] NULL,
-- CONSTRAINT [pk_callulare] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--SET ANSI_PADDING OFF
--GO



select * from Telecom.dbo.lottoDue_produzione
where
numero='3386429186'

--update Telecom.dbo.lottoDue_produzione
--set note='cessata in data 2019#giugno#12'
--where id=20

select * from Telecom.dbo.lottoDue_produzione
where
numero='3316342823'



select * from Telecom.dbo.lottoDue_produzione
where
Beneficiario like '%mazzuc%' 



select * from Telecom.dbo.lottoDue_produzione
where
Beneficiario like '%erri%' 
 
 
3346137671


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
-- ---id----
--'3666443077' -- numero tel.
--,GETDATE()
--,'Vocale Open Standard'
--,'Lotto Isarco turnisti'
--,'10 euro/mese' 
--,'' 
--,'' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002114762051 – R44C''. Lotto Isarco turnisti : vocale.'
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
-- ---id----
--'_da verificare__' -- numero tel.
--,GETDATE()
--,'Vocale Open Standard'
--,'TBM'
--,'10 euro/mese' 
--,'5684' 
--,'90181776' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002114762028 - R44C''. Attivata il 2019.01.16 per vocale TBM turnisti.'
--)

--update Telecom.dbo.lottoDue_produzione
--set 
--	numero = '3371421725'
------	attivazione =  GETDATE()
------	,costoMensile='10 euro/mese'
------	,PIN='1702'
------	,PUK='84509571'
----	,note='ICCID=''8939010002114762044 – R44C''. Attivata il 2019.01.16 per vocale Affidatario FilmAtelier. Cambio carta per rottura.'
--where id=88


select * from Telecom.dbo.lottoDue_produzione
where
 Beneficiario like '%Tbm%' 
 or Beneficiario like '%Zamo%' 


select TOP 5 * from lottoDue_produzione

select * from Telecom.dbo.lottoDue_produzione
where
 Beneficiario like '%zz%M2M%' 
 order by 
	id asc
	--Beneficiario asc

select * from Telecom.dbo.lottoDue_produzione
where numero='3371015914'
337 10 15 914
3371015914



select * from Telecom.dbo.lottoDue_produzione
where
 Beneficiario like '%Fuoco%' 

select TOP 1 * from Telecom.dbo.lottoDue_produzione
order by id desc

--update Telecom.dbo.lottoDue_produzione
--set Beneficiario='Frecentese' where id=87

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
-- ---id----
--'3346256187' -- numero tel.
--,GETDATE()
--,'Vocale Open Standard'
--,'Frecentese'
--,'17 euro/mese' 
--,'6733' 
--,'77845569' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''___''. Attivata il 2018.09.27 per vocale Frecentese.'
--)



Frecentese
PIN: 6733 
PUK: 77845569
numero 3346256187


select * from Telecom.dbo.lottoDue_produzione
where
 Beneficiario like '%Eisen%'  --NB. update PIN&PUK x cambio carta
 or  Beneficiario like '%Ianes%'  --NB. update PIN&PUK x cambio carta

Eisenstecken:
PIN: 0343
PUK: 07126727


update Telecom.dbo.lottoDue_produzione
set
	PIN='0343'
	,PUK='07126727'
where id=7	

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%Ianes%'  --NB. update PIN&PUK x cambio carta

--Ianeselli:
--PIN: 3095
--PUK: 22677059

update Telecom.dbo.lottoDue_produzione
set
	PIN='3095'
	,PUK='22677059'
where id=15



--update Telecom.dbo.lottoDue_produzione
--set
--	Beneficiario = 'Sorbello Rosario'
--	where id = 45

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%sorb%'

select *  from Telecom.dbo.lottoDue_produzione
--where 	servizio like '%vocale%'
order BY
 --attivazione asc	
 Beneficiario
	
select *  from Telecom.dbo.lottoDue_produzione
where 
	servizio like '%vocale%'
order BY
 --attivazione asc	
 Beneficiario


select COUNT(*) from Telecom.dbo.lottoDue_produzione
where PIN is NULL

select *  from Telecom.dbo.lottoDue_produzione
where 
	PIN is NULL
	and servizio like '%vocale%'

select *  from Telecom.dbo.lottoDue_produzione
where 
	PIN is NULL
	and servizio NOT like '%vocale%'

select *  from Telecom.dbo.lottoDue_produzione
where 
	PIN is NOT NULL
	and PUK is  NULL

--update Telecom.dbo.lottoDue_produzione
--set PIN='4424', PUK='51159784'
--where id=48

select * from Telecom.dbo.lottoDue_produzione
where id=48


select TOP 5 * from Telecom.dbo.lottoDue_produzione
--where 
--servizio like '%vocale%'
--and 
--Beneficiario like '%salv%'
order by attivazione desc

select TOP 5 * from Telecom.dbo.lottoDue_produzione
where numero like '3669010498'

select * from Telecom.dbo.lottoDue_produzione
where 
--servizio like '%vocale%'
--and 
Beneficiario like '%albar%'
or Beneficiario like '%fedel%'
order by attivazione asc


select * from Telecom.dbo.lottoDue_produzione
where 
servizio like '%vocale%'
and Beneficiario like '%albar%'
order by attivazione asc

select * from Telecom.dbo.lottoDue_produzione
where servizio like '%vocale%'
order by attivazione asc


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
-- ---id----
--'3371015914' -- numero tel.
--,GETDATE()
--,'Vocale Open Standard'
--,'FilmAtelier'
--,'17 euro/mese' 
--,'' 
--,'' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010001980907857 – L56C''. Attivata il 2018.07.26 per vocale Affidatario  FilmAtelier.'
--)


select TOP 2 * from Telecom.dbo.lottoDue_produzione
order by attivazione desc

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%capp%'


select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%erriq%'


select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%alfrei%'


select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%gianna%'

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%voza%'


--update Telecom.dbo.lottoDue_produzione
--set PIN='5709', PUK='78576570'
--where Beneficiario like '%alfrei%'

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
-- ---id----
--'3346524321'
--,GETDATE()
--,'Vocale Open Standard'
--,'Alfreider'
--,'17 euro/mese' 
--,'' 
--,'' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002272938410 - R45C''. Attivata il 2018.03.29 per vocale Alfreider.'
--)



select * from Telecom.dbo.lottoDue_produzione
order by servizio, Beneficiario

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%zurl%'

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%alfrei%'

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%sorb%'

-- 3371134676  Loffredo

--update Telecom.dbo.lottoDue_produzione
--set PIN='9065', PUK='83226089'
-- where id=77

--update Telecom.dbo.lottoDue_produzione
--set numero='3371134676' where id=77

select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%marott%'

--update Telecom.dbo.lottoDue_produzione
--set PIN='5986', PUK='01156578'
--where id=35

--update Telecom.dbo.lottoDue_produzione
--set note='cambio cellulare e passaggio a SIM-Nano il 2018#marzo#15.'
--where id=35


select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%zurlo%'

select * from Telecom.dbo.lottoDue_produzione 
where
	Telecom.dbo.lottoDue_produzione.Beneficiario like '%baronc%'
	or
	Telecom.dbo.lottoDue_produzione.Beneficiario like '%stelit%'
order by attivazione desc

--update Telecom.dbo.lottoDue_produzione 
--set numero='3371228960'
--where
--	Telecom.dbo.lottoDue_produzione.Beneficiario like '%baronc%'


--update Telecom.dbo.lottoDue_produzione 
--set numero='3371212176'
--where
--	Telecom.dbo.lottoDue_produzione.Beneficiario like '%stelit%'

select * from Telecom.dbo.lottoDue_produzione 
where
	Telecom.dbo.lottoDue_produzione.Beneficiario like '%francesc%'

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
-- ---id----
--'___tel_____'
--,GETDATE()
--,'Vocale Open Standard'
--,'Baroncioni'
--,'17 euro/mese' 
--,'4532' 
--,'94977579' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015718 - L44C''. Attivata il 2018.02.27 per vocale Baroncioni.'
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
--'___tel_____'
--,GETDATE()
--,'Vocale Open Standard'
--,'Stelitano'
--,'17 euro/mese' 
--,'3584' 
--,'72112291' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015700 - L44C''. Attivata il 2018.02.27 per vocale Stelitano.'
--)


select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%lom%'
order by attivazione desc

select note from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%lom%'
order by attivazione desc

--update Telecom.dbo.lottoDue_produzione
--set
--PIN='9538'
--,PUK='36866169'
--,note='cambio carta in data 2018.gennaio.16 per cambio taglio SIM per nuovo cellulare.'
--where id=16

--update Telecom.dbo.lottoDue_produzione
--set
--note='cambio carta in data 2018#gennaio#16 per cambio taglio SIM per nuovo cellulare.'
--where id=16

'cambio carta in data 2018.gennaio.16 per cambio taglio SIM per nuovo cellulare.'

select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%url%'
order by attivazione desc


select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.numero='3351240459'
order by attivazione desc

--  3351240459  Zurlo vocale

select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.numero='3312735534'
order by attivazione desc



select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Isp%'
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
--'3316888361'
--,GETDATE()
--,'Vocale Open Standard'
--,'Ispettori collettivo'
--,'17 euro/mese' 
--,'8533' 
--,'65725123' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015692 - L44C''. Attivata il 2017.11.06 per vocale Ispettori Mules collettivo.'
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
--'___tel_____'
--,GETDATE()
--,'Vocale Open Standard'
--,'Serra'
--,'17 euro/mese' 
--,'1030' 
--,'37345965' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015684 - L44C''. Attivata il 2017.10.27 per vocale Serra.'
--)

--update Telecom.dbo.lottoDue_produzione
--set numero='3387819627'
--where id=78




select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Serr%'
order by attivazione desc


select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Torres%'
order by attivazione desc

--update Telecom.dbo.lottoDue_produzione 
--set numero='3356595026'
--where id=76
--            3356595026 

select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Siracusa%'
order by attivazione desc


select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Casale%'
order by attivazione desc


select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Erriques%'
order by attivazione desc

366.90.10.498 M2M Erriques

select * from Telecom.dbo.lottoDue_produzione 
where Telecom.dbo.lottoDue_produzione.Beneficiario like '%Loffredo%'
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
--'___tel_____'
--,GETDATE()
--,'Vocale Open Standard'
--,'Loffredo'
--,'17 euro/mese' 
--,'5958' 
--,'71429309' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015676 - L44C''. Attivata il 2017.09.01 per vocale Loffredo.'
--)




select top 2 * from Telecom.dbo.lottoDue_produzione 
where
 numero='3665668061' 
Beneficiario not like '%M2M%'


select top 2 * from Telecom.dbo.lottoDue_produzione where Telecom.dbo.lottoDue_produzione.servizio like '%M2M%'
order by attivazione desc

--ICCID='8939010002088015668 - L44C'. Attivata il 2017.08.30 per M2M Torresani.

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
--'___tel_____'
--,GETDATE()
--,'zzz m2M Dati Top'
--,'Torresani'
--,'11 euro/mese' 
--,'4916' 
--,'85776099' 
--,'20 GigaByte/mese' 
--,'ICCID=''8939010002088015668 - L44C''. Attivata il 2017.08.30 per M2M Torresani.'
--)



select COUNT(*) from Telecom.dbo.lottoDue_produzione
select * from Telecom.dbo.lottoDue_produzione
order by attivazione desc

where 
Beneficiario like '%marottol%'
or Beneficiario like '%voza%'



select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%torres%'


select * from Telecom.dbo.lottoDue_produzione
where Beneficiario like '%pers%'


ICCID='8939010002088015650 - L44C'. Attivata il 2017.06.01 per Torresani.

select *
from  Telecom.dbo.lottoDue_produzione
where numero='3669239287'
			  3669239287

3669239287

select *
from  Telecom.dbo.lottoDue_produzione
where numero='3371425945'


3371425945

select top 5 * from Telecom.dbo.lottoDue_produzione
order by Telecom.dbo.lottoDue_produzione.attivazione desc

--ICCID='8939010002088015650 - L44C'. Attivata il 2017.06.01 per Torresani.

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
--'3346534493'
--,GETDATE()
--,'Vocale Open Standard'
--,'Torresani'
--,'17 euro/mese' 
--,'9175' 
--,'25329150' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015650 - L44C''. Attivata il 2017.06.01 per Torresani.'
--)

--update Telecom.dbo.lottoDue_produzione
--set note= 'ICCID=''8939010002088015650 - L44C''. Attivata il 2017.06.01 per Torresani.'
--where id=75




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
--'3386014532'
--,GETDATE()
--,'Vocale Open Standard'
--,'Fuoco : ronda Mules cercapersone (III)'
--,'17 euro/mese' 
--,'5257' 
--,'13884773' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015627 - L44C''. Attivata il 2017.05.10 per ''Fuoco : ronda Mules cercapersone (III)''.'
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
--'3387145116'
--,GETDATE()
--,'Vocale Open Standard'
--,'Fuoco : ronda Mules cercapersone (II)'
--,'17 euro/mese' 
--,'7820' 
--,'41834028' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015635 - L44C''. Attivata il 2017.05.10 per ''Fuoco : ronda Mules cercapersone (II)''.'
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
--'3386038574'
--,GETDATE()
--,'Vocale Open Standard'
--,'backup ufficio Personale	Albarello'
--,'17 euro/mese' 
--,'7793' 
--,'86613627' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010002088015643 - L44C''. Attivata il 2017.05.10 per ''backup ufficio Personale	Albarello''.'
--)


'ICCID=''8939010001873459321''. Attivata il 2016.01.26 per assunzione Barovero. La soglia è dispositiva. Il roaming con l''Austria e'' aperto. La matricola del cellulare e'' 7949769187N355922070650011. Sostituzione cellulare in data 2017.maggio.02 matricola 356372087703982.'


--update Telecom.dbo.lottoDue_produzione  -- nuovo cellulare Barovero
--set note='ICCID=''8939010001873459321''. Attivata il 2016.01.26 per assunzione Barovero. La soglia è dispositiva. Il roaming con l''Austria e'' aperto. La matricola del cellulare e'' 7949769187N355922070650011. Sostituzione cellulare in data 2017.maggio.02 matricola 356372087703982.'
--where id=53


select *
from  Telecom.dbo.lottoDue_produzione
where id=53

select *
from  Telecom.dbo.lottoDue_produzione
where Beneficiario like '%barov%'

--update Telecom.dbo.lottoDue_produzione  nuovo PIN Barovero
--set PIN='0000'
--where id=53


select *
from  Telecom.dbo.lottoDue_produzione
where numero='3357995188'


select Beneficiario, numero 
from  Telecom.dbo.lottoDue_produzione
where numero='3357995188'

select Beneficiario, numero 
from  Telecom.dbo.lottoDue_produzione
where numero='3357032614'

select Beneficiario, numero 
from  Telecom.dbo.lottoDue_produzione
where numero='3371283365'
3371283365
3357995188

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
