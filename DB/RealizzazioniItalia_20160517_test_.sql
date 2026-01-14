select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP
select * from RealizzazioniItalia.dbo.strumento
select * from RealizzazioniItalia.dbo.statoStrumento

insert into strumento(
--id
sintesi,
dettaglio,
id_responsabile
)values(
--id
'acido'
,'bottigliette acido per roccia, ad uso della DL ... '
,6
)

insert into statoStrumento(
--id
[when],
oggettoNote,
id_strumento
)values(
--id
GETDATE()
,'primo SIL dello sclerometro (id=1) in data xx/yy/zzzz ;stato d''uso=__ riparazioni necessarie=___ '
,1
)



select
s.sintesi
,s.dettaglio
,c.nome
,c.cognome
,c.ruolo
from
 RealizzazioniItalia.dbo.strumento s
,RealizzazioniItalia.dbo.collaboratore_LOOKUP c
where 
s.id=1
and s.id_responsabile=c.id


select
s.sintesi
,s.id as id_strumento
,s.dettaglio
,c.nome
,c.cognome
,c.ruolo
,c.id as id_collaboratore
from
 RealizzazioniItalia.dbo.strumento s
,RealizzazioniItalia.dbo.collaboratore_LOOKUP c
where 
s.id=1
and s.id_responsabile=c.id

select * from strumento
select * from statoStrumento
--update RealizzazioniItalia.dbo.statoStrumento
--set oggettoNote='verifica stato sclerometro in data 13/03/2016 ; manutenzioni ...'
--where id=3


--estrazione di stati d'uso, su di uno stumento prescelto:
select
SIL.[when]
,SIL.oggettoNote
,s.sintesi
,c.cognome as responsabile
from
RealizzazioniItalia.dbo.statoStrumento SIL
,RealizzazioniItalia.dbo.strumento s
,RealizzazioniItalia.dbo.collaboratore_LOOKUP c
where
s.sintesi='sclerometro'
and SIL.id_strumento=s.id
and c.id=s.id_responsabile





--CREATE procedure [dbo].[usp_statoUso_LOAD]
--@sintesiStrumento varchar(250)
--as
----estrazione di stati d'uso, su di uno stumento prescelto:
--select
--SIL.[when]
--,SIL.oggettoNote
--,s.sintesi
--,c.cognome as responsabile
--from
--RealizzazioniItalia.dbo.statoStrumento SIL
--,RealizzazioniItalia.dbo.strumento s
--,RealizzazioniItalia.dbo.collaboratore_LOOKUP c
--where
--s.sintesi=@sintesiStrumento
--and SIL.id_strumento=s.id
--and c.id=s.id_responsabile
--GO

exec  usp_statoUso_LOAD 'acido'

--source

--USE [RealizzazioniItalia]
--GO
--/****** Object:  StoredProcedure [dbo].[usp_statoUso_LOAD]    Script Date: 07/26/2016 12:32:39 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
----
--CREATE procedure [dbo].[usp_statoUso_LOAD]
--@sintesiStrumento varchar(250)
--as
----estrazione di stati d'uso, su di uno stumento prescelto:
--select
--SIL.[when]
--,SIL.oggettoNote
--,s.sintesi
--,c.cognome as responsabile
--from
--RealizzazioniItalia.dbo.statoStrumento SIL
--,RealizzazioniItalia.dbo.strumento s
--,RealizzazioniItalia.dbo.collaboratore_LOOKUP c
--where
--s.sintesi=@sintesiStrumento
--and SIL.id_strumento=s.id
--and c.id=s.id_responsabile
--GO

--insert into collaboratore_LOOKUP(
----id
--nome,
--cognome,
--ruolo
--) values(
----id
--'Renzo',
--'Pozzati',
--'Geometra'
--)



select * from collaboratore_LOOKUP
select * from strumento
select * from statoStrumento

--#############
USE [RealizzazioniItalia]
GO
DECLARE	@return_value int
EXEC	@return_value = [dbo].[usp_statoUso_LOAD]
		@sintesiStrumento = N'Nikon'
SELECT	'Return Value' = @return_value
GO
--#############



--truncate table statoStrumento
--delete from Strumento
--truncate table Strumento

--insert into strumento(
----id
--sintesi,
--dettaglio,
--id_responsabile
--)values(
----id
--'fotocamera compatta Nikon gialla',
--'fotocamera compatta Nikon Coolpix AW 130 gialla, per il lotto dell’Isarco; resistente a gocce di acqua e polvere.',
--7 -- Pozzati
--)

--update strumento
--set dettaglio = 'matricola==44008249. Fotocamera compatta Nikon Coolpix AW 130 gialla, per il lotto dell’Isarco; resistente a gocce di acqua e polvere.'
--where id=3

--insert into statoStrumento(
----id
--[when],
--oggettoNote,
--id_strumento
--)values(
----id
--getdate(),
--'Acquisto in Luglio_2016, riferimento determina 2168. Giunta nuova e perfettamente funzionante. Acquistata presso "Alla Rotonda" a Trento.',
--3 -- id_strumento
--)


select
s.sintesi, s.dettaglio,
c.cognome as Responsabile,
ss.[when] as data_acquisto, ss.oggettoNote as condizione_oggetto
from
RealizzazioniItalia.dbo.collaboratore_LOOKUP c,
RealizzazioniItalia.dbo.strumento s,
RealizzazioniItalia.dbo.statoStrumento ss
where
s.dettaglio like '%44008249%'
and c.id=s.id_responsabile
and ss.id_strumento=s.id


--create procedure [dbo].[usp_matricola_LOAD]
--@matricola varchar(70)
--as
--select
--s.sintesi, s.dettaglio,
--c.cognome as Responsabile,
--ss.[when] as data_acquisto, ss.oggettoNote as condizione_oggetto
--from
--RealizzazioniItalia.dbo.collaboratore_LOOKUP c,
--RealizzazioniItalia.dbo.strumento s,
--RealizzazioniItalia.dbo.statoStrumento ss
--where
--s.dettaglio like '%'+@matricola+'%'
--and c.id=s.id_responsabile
--and ss.id_strumento=s.id
--GO

--###############
USE [RealizzazioniItalia]
GO
DECLARE	@return_value int
EXEC	@return_value = [dbo].[usp_matricola_LOAD]
		@matricola = N'44'
SELECT	'Return Value' = @return_value
GO
--###############
