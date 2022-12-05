select TOP 2 * from [dotazioni2021].[dbo].[SIM_BBT]

select * from [dotazioni2021].[dbo].[SIM_BBT]
order by beneficiario asc

--delete from  [dotazioni2021].[dbo].accessori
select COUNT(id) from  [dotazioni2021].[dbo].accessori
--where beneficiario is NULL
where note is NULL

select * from [dotazioni2021].[dbo].accessori
order by beneficiario asc
order by [ID] asc

select * from [dotazioni2021].[dbo].cellPhone
order by beneficiario asc
select COUNT(id) from  [dotazioni2021].[dbo].cellPhone
where beneficiario is NULL
--delete from  [dotazioni2021].[dbo].cellPhone
--where beneficiario is NULL

select * from [dotazioni2021].[dbo].PC
order by beneficiario asc
select COUNT(id) from  [dotazioni2021].[dbo].PC
where beneficiario is NULL
--delete from  [dotazioni2021].[dbo].PC
--where beneficiario is NULL

select * from [dotazioni2021].[dbo].[SIM_BBT]
where 
beneficiario like '%pozz%'

select * from [dotazioni2021].[dbo].[SIM_BBT]
where 
beneficiario like '%p%'



select * from dotazioni2021.dbo.SIM_BBT
where note like '%pacchetto addiz%'
order by beneficiario asc

select * from [dotazioni2021].[dbo].[SIM_BBT]
where beneficiario like '%papa%'

--insert into [dotazioni2021].[dbo].[SIM_BBT](
----id
--beneficiario,
--servizio,
--numero,
--PIN,
--PUK,
--ICCID,
--registrazione,
--note
--)values(
----id
--'Papa',
--'M2M',
--'3667662376',
--'3570',
--'02859393',
--'8939010002505977466-L48C',
--'2021-05-17',
--'scheda per traffico dati'
--)

SIM M2M Tel +39 3667662376 ICCID 8939010002505977466-L48C PIN: 3570 - PUK: 02859393



insert into [dotazioni2021].[dbo].[PC](
--id
beneficiario,
oggetto,
matricola,
note
)values(
--id
'Papa',
'Computer portatile Lenovo Think Pad L490',
'S/N: PF-26CZAK',
'completo di batteria, carica batteria e docking station della postazione dedicata'
)

select * from [dotazioni2021].[dbo].[pc]
where beneficiario like '%papa%'



select * from [dotazioni2021].[dbo].[cellPhone]
where beneficiario like '%rodrigu%'

select top 2 * from [dotazioni2021].[dbo].[cellPhone]

--insert into [dotazioni2021].[dbo].[accessori](
----id
--beneficiario,
--oggetto,
--matricola,
--note
--)values(
----id
--'Gasser',
--'Chiavetta USB Kingston 32GB Data Traveler 111 3.0',  --obj
--NULL, --matricola
--'dispositivo trasferimento dati USB' -- note
--)

------ current Mitarbeiter------------------staging area------------------

--insert into [dotazioni2021].[dbo].PC(
----id
--beneficiario,
--oggetto,
--matricola,
--note
--)values(
----id
--'Gasser',
--'Computer portatile Lenovo Think Pad L490',
--'S/N: PF-26BN86',
--'completo di batteria, carica batteria e docking station della postazione dedicata'
--)


--insert into [dotazioni2021].[dbo].[SIM_BBT](
--id
--beneficiario,
--servizio,
--numero,
--PIN,
--PUK,
--ICCID,
--registrazione,
--note
--)values(
--id
--'Gasser',
--'Vocale',
--'3386917529',
--'6965',
--'50392775',
--'8939010002506076474-L48C',
--'2021-05-11',
--NULL  --note
--)

--update dotazioni2021.[dbo].[SIM_BBT]
--set
--registrazione='2015-01-01',
--note='esclusivo uso per servizio, salvo attivazione uso promiscuo'
--where id=40

--update dotazioni2021.[dbo].cellPhone
--set
--oggetto='Telefono cellulare marca SAMSUNG SM-A715F/DS',
--matricola='S/N RZ8R11J61VP',
--note='completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati; in sostituzione del telefono cellulare marca HUAWEI P smart 2019 S/N 39V4C20623002219, completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati, divenuto guasto.'
--where id=32


'Telefono cellulare marca SAMSUNG Galaxy A21s',
'S/N R58R44F02HF',
'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati e cover'


--id
'Gasser',
'Vocale',
'3386917529',
'6965',
'50392775',
'8939010002506076474-L48C',
'2021-05-11',


CID -L48C PIN:  - PUK: 

Telefono cellulare marca HUAWEI P Smart S/N: 39V4C20820006492, completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati

Nano SIM Tel +39 3386694654 ICCID 8939010002179070283 – L45C PIN: 4996 - PUK: 65705565

Computer portatile Lenovo Think Pad L580 S/N: PF1QC1M8, completo di batteria, carica batteria e docking station della postazione dedicata


select TOP 3 * from dotazioni2021.[dbo].accessori where beneficiario like '%ianes%'

 
------ current Mitarbeiter------------------
declare @curMitarb as varchar(150) = '%conti%'
select * from [dotazioni2021].[dbo].[accessori]
where beneficiario like @curMitarb

select * from [dotazioni2021].[dbo].[cellPhone]
where beneficiario like @curMitarb

select * from [dotazioni2021].[dbo].[PC]
where beneficiario like @curMitarb

select * from [dotazioni2021].[dbo].[SIM_BBT]
where beneficiario like @curMitarb
