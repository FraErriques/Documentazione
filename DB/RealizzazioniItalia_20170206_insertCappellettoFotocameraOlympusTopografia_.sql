
select * from collaboratore_LOOKUP
select * from strumento where id=12
select * from RealizzazioniItalia.dbo.statoStrumento

--insert into statoStrumento(
----id
--[when],
--oggettoNote,
--id_strumento
--)values(
----id
--GETDATE()
--,'Acquisto in Autunno_2016, con sostituzione da parte di Skuk; riferimento determina 2168. Giunta nuova e perfettamente funzionante. Acquistata presso "Alla Rotonda" a Trento. macchina fotografica Olympus Stylus TG-4 S.N: BHG292483 .Essa e'' priva di memory card e custodia, dotata di CD software, cavo alimentazione e cavo scarico dati.'
--,12 -- macchina fotografica Olympus Stylus TG-4 S.N: BHG292483.
--)


--insert into strumento(
----id
--sintesi,
--dettaglio,
--id_responsabile
--)values(
----id
--'macchina fotografica Olympus Stylus TG-4 S.N: BHG292483'
--,'macchina fotografica per Settore Topografia, priva di memory card e custodia, dotata di CD software, cavo alimentazione e cavo scarico dati. Esemplare: Olympus Stylus TG-4 S.N: BHG292483. Utilizzato da : Mules 2-3, Simone Cappelletto.'
--,4 -- Cappelletto Simone Topografia
--)

--insert into strumento(
----id
--sintesi,
--dettaglio,
--id_responsabile
--)values(
----id
--'GPL Leica sensore matricola 2873562'
--,'Componente del sistema GPL Leica: sensore matricola 2873562. Utilizzato da : Mules 2-3, Simone Cappelletto.'
--,4 -- Cappelletto Simone Topografia
--)

--insert into statoStrumento(
----id
--[when],
--oggettoNote,
--id_strumento
--)values(
----id
--GETDATE()
--,'prodotto nuovo ed integro.'
--,10 -- GPL Leica sensore matricola 2873562
--)

-------

--insert into strumento(
----id
--sintesi,
--dettaglio,
--id_responsabile
--)values(
----id
--'GPL Leica controller matricola 2400646'
--,'Componente del sistema GPL Leica: controller matricola 2400646. Utilizzato da : Mules 2-3, Simone Cappelletto.'
--,4 -- Cappelletto Simone Topografia
--)

--select * from strumento


--insert into statoStrumento(
----id
--[when],
--oggettoNote,
--id_strumento
--)values(
----id
--GETDATE()
--,'prodotto nuovo ed integro.'
--,11 --  GPS Leica controller matricola 2400646
--)


USE [RealizzazioniItalia]
GO
DECLARE	@return_value int
EXEC	@return_value = [dbo].[usp_statoUso_LOAD]
		@sintesiStrumento = N'memoria'
SELECT	'Return Value' = @return_value
GO




USE [RealizzazioniItalia]
GO

/****** Object:  StoredProcedure [dbo].[usp_statoUso_LOAD]    Script Date: 11/09/2016 10:20:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_statoUso_LOAD]
@sintesiStrumento varchar(250)
as
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
s.sintesi like '%'+@sintesiStrumento+'%'
and SIL.id_strumento=s.id
and c.id=s.id_responsabile

GO

select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP c 
select * from RealizzazioniItalia.dbo.strumento  s
select * from RealizzazioniItalia.dbo.statoStrumento SIL
where s.sintesi like '%SD%'

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
s.sintesi like '%software%'
and c.id=s.id_responsabile
and SIL.id_strumento=s.id

--insert into RealizzazioniItalia.dbo.statoStrumento(
----id
--[when]
--,oggettoNote
--,id_strumento
--)values(
----id
--GETDATE()
--,'prodotto nuovo ed integro.'
--,8 -- scheda SD fotocamera Isarco
--)

select * from statoStrumento
select * from strumento 


select * from strumento
where
sintesi like '%GPS%'
or dettaglio like '%GPS%'

--update strumento
--set 
--sintesi='GPS Leica sensore matricola 2873562',
--dettaglio='Componente del sistema GPS Leica: sensore matricola 2873562. Utilizzato da : Mules 2-3, Simone Cappelletto.'
--where id=10

--update strumento
--set 
--sintesi='GPS Leica controller matricola 2400646',
--dettaglio='Componente del sistema GPS Leica: controller matricola 2400646. Utilizzato da : Mules 2-3, Simone Cappelletto.'
--where id=11

