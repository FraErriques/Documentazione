select top 2 * from SIM_BBT

--insert into dotazioni2021.dbo.SIM_BBT(
---- id pk
--beneficiario,
--servizio,
--numero,
--PIN,
--PUK,
--ICCID,
---- registraz. trigger
--note
--) values(
----id
--'Rodrigues',
--'Vocale',
--'3666067071',
--'3992',
--'72228142',
--'8939010002505979033-L48C',
---- reg trigger
--'Segreteria di Direzione; sostituzione per maternita Eisenstecken; Dott.sa Iolanda Maria Rodrigues de Oliveira Costa; dal 8 novembre 2021.'
--)


select * from dotazioni2021.dbo.SIM_BBT
where beneficiario like '%Ian%eselli%'

--update dotazioni2021.dbo.SIM_BBT
--set registrazione=GETDATE()
--where id=105

select * from dotazioni2021.dbo.SIM_BBT
order by beneficiario asc
order by id asc

select TOP 2 * from [dotazioni2021].[dbo].[SIM_BBT]

select * from [dotazioni2021].[dbo].[SIM_BBT]
where beneficiario like '%salv%'

select * from dotazioni2021.dbo.SIM_BBT
where note like '%pacchetto addiz%'

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

--insert into [dotazioni2021].[dbo].[cellPhone](
----id
--beneficiario,
--oggetto,
--matricola,
--note
--)values(
----id
--'Rodrigues',
--'Telefono cellulare marca SAMSUNG A21S', --oggetto
--'S/N R58R631F0XF',--matricola
--'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati' --note
--)

------ current Mitarbeiter------------------staging area------------------

--insert into [dotazioni2021].[dbo].[cellPhone](
----id
--beneficiario,
--oggetto,
--matricola,
--note
--)values(
----id
--'Ianeselli',
--'Telefono cellulare marca HUAWEI P Smart 2019',
--'S/N 39V4C20623001531',
--'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati'
--)


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
--'Ianeselli',
--'Vocale',
--'3351534430',
--'7408',
--'02919976',
--'8939010002505979041-L48C',
--'2021-12-03',
--'esclusivo uso per servizio, salvo attivazione uso promiscuo'
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


'Telefono cellulare marca HUAWEI P Smart 2019',
'S/N 39V4C20623001531'
'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati'

--id
'Vecchione',
'Vocale',
'3351534430',
'7408',
'02919976',
'8939010002505979041-L48C',
'2021-12-03',
'esclusivo uso per servizio, salvo attivazione uso promiscuo'
 
------ current Mitarbeiter------------------
declare @curMitarb AS varchar(150) = '%conti%'
print @curMitarb

select * from [dotazioni2021].[dbo].[accessori]
where beneficiario like @curMitarb

select * from [dotazioni2021].[dbo].[cellPhone]
where beneficiario like @curMitarb

select * from [dotazioni2021].[dbo].[PC]
where beneficiario like @curMitarb

select * from [dotazioni2021].[dbo].[SIM_BBT]
--where beneficiario like '%papa%' or  beneficiario like '%card%'
where beneficiario like @curMitarb
-------------------------------------------------------------end curMitarbeiter-----------------------------------------

--------------------report----------------------------------------

--delete from  [dotazioni2021].[dbo].cellPhone
--where beneficiario is NULL
--delete from  [dotazioni2021].[dbo].PC
--where beneficiario is NULL

select COUNT(id) from  [dotazioni2021].[dbo].accessori
where beneficiario is NULL
select COUNT(id) from  [dotazioni2021].[dbo].cellPhone
where beneficiario is NULL
select COUNT(id) from  [dotazioni2021].[dbo].PC
where beneficiario is NULL
select COUNT(id) from  [dotazioni2021].[dbo].SIM_BBT
where beneficiario is NULL

select * from [dotazioni2021].[dbo].accessori
order by beneficiario asc
select * from [dotazioni2021].[dbo].cellPhone
order by beneficiario asc
select * from [dotazioni2021].[dbo].PC
order by beneficiario asc
select * from [dotazioni2021].[dbo].[SIM_BBT]
order by beneficiario asc
-----end report-------------------------------