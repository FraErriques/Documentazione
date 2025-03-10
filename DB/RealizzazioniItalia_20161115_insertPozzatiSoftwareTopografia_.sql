

insert into strumento(
--id
sintesi,
dettaglio,
id_responsabile
)values(
--id
'licenza aggiuntiva software Leonardo_XE11 chiave SKO013191'
,'Presso il fornitore del sistema GPL Leica, viene acquistata una seconda licenza software Leonardo_XE11 chiave SKO013191. Utilizzata da : Gruppo Isarco, Renzo Pozzati.'
,7 -- Pozzati
)

insert into statoStrumento(
--id
[when],
oggettoNote,
id_strumento
)values(
--id
GETDATE()
,'prodotto nuovo ed integro.'
,9 -- licenza aggiuntiva software Leonardo_XE11 chiave SKO013191
)

select * from strumento

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
