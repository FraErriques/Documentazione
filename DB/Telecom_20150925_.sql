select top 5 * from UtenzeDettaglio
select top 5 * from UtenzeIndividuali
select top 5 * from UtenzelottoDue

select count(*) from UtenzeDettaglio
select count(*) from UtenzelottoDue

select * from UtenzelottoDue
where numero not in (select numero from UtenzeDettaglio)

select * from UtenzeDettaglio
order by beneficiario asc

insert into utenzeDettaglio(
numero,
beneficiario,
servizio,
tipoServizio
)  values(
'3371283365'
,'Pichierri'
,'OPEN Standard'
,'ABBONAMENTO'
)

--update UtenzeDettaglio set numero='3666130728' where beneficiario='M2M Barbari'

select * from UtenzelottoDue
where numero not in (select numero from UtenzeDettaglio)

select distinct PIN from mobileIt where PIN is not NULL
select * from UtenzelottoDue where PIN is not NULL

select * 
from 
	mobileIt m
	,UtenzelottoDue u
where
	m.PIN is not NULL
	and m.numero=u.numero
	
select distinct m.PIN
from 
	mobileIt m
	,UtenzelottoDue u
where
	m.PIN is not NULL
	and m.numero=u.numero
	

select distinct m.id, m.PIN, m.Beneficiario, m.tipoServizio
from 
	mobileIt m
	,UtenzelottoDue u
where
	m.PIN is not NULL
	and m.numero=u.numero
	and m.tipoServizio like '%ABBONAMENTO%'

		
select * from UtenzelottoDue  where PIN is not NULL	
select * from UtenzeDettaglio where PIN is not NULL	
select * from UtenzelottoDue  where Beneficiario like '%rr%'
select * from UtenzelottoDue  where Beneficiario like '%rr%' or  Beneficiario like '%barb%'
select * from UtenzeDettaglio  where Beneficiario like '%rr%' or  Beneficiario like '%barb%'
select * from UtenzeDettaglio  where Beneficiario like '%barb%'
select * from UtenzeDettaglio where PIN is not NULL	
select  * from UtenzeDettaglio where beneficiario in ('Marini','Erriques','Siracusa')
--alter table UtenzeDettaglio add  PIN varchar(4) NULL
update UtenzeDettaglio set PIN='9401' where beneficiario='M2M Pedrazza'

select *
from 
	UtenzelottoDue l
	,UtenzeDettaglio d
where
	l.PIN is not NULL
	and d.PIN is not NULL
	and l.PIN=d.PIN
	

select *
from 
	UtenzelottoDue l
	,UtenzeDettaglio d
where
	l.PIN is not NULL
	and d.PIN is not NULL


select TOP 2 * from UtenzelottoDue
select TOP 2 * from UtenzeDettaglio

select * from UtenzelottoDue
order by beneficiario asc


--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--create procedure usp_lottoDue_LOAD
--as
--select 
--	l.numero,
--	l.attivazione,
--	l.servizio,
--	d.Beneficiario,
--	l.costoMensile,
--	l.PIN,
--	l.PUK,
--	l.soglie
--from
--	UtenzelottoDue l,
--	UtenzeDettaglio d
--where
--	l.numero = d.numero
--order by 
--	d.beneficiario asc
--GO
	
		
exec usp_lottoDue_LOAD

numero	    attivazione  servizio  Beneficiario  costoMensile  PIN  PUK  soglie
3204783019	2006-10-25 00:00:00.000	OPEN STANDARD	Marini	NULL	NULL	NULL	NULL	

create table cane_Nero(
int name
[nAME] [varchar](30) NOT NULL,
)

USE [Telecom]
GO

/****** Object:  Table [dbo].[UtenzeIndividuali]    Script Date: 09/25/2015 16:30:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

--CREATE TABLE [dbo].[lottoDue_produzione](
--	[id] [int] IDENTITY(1,1)		NOT NULL,
--	[numero] [varchar](30)			NOT NULL,
--	[attivazione] [datetime]		NOT NULL,
--	[servizio] [varchar](150)		NOT NULL,
--	[Beneficiario] [varchar](150)	NOT NULL,
--	[costoMensile] [varchar](150)		NULL,
--	[PIN] [varchar](4)					NULL,
--	[PUK] [varchar](8)					NULL,
--	[soglie] [varchar](290)				NULL,
--CONSTRAINT [pk_lottoDue_produzione] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

numero	    attivazione  servizio  Beneficiario  costoMensile  PIN  PUK  soglie

select * from lottoDue_produzione order by Beneficiario asc
--truncate table  lottoDue_produzione
----@@@@


--create procedure [dbo].[usp_lottoDue_produzione_INSERT]
--	-- id   identity pk,
--	@numero			[varchar](30),
--	@attivazione	[datetime],
--	@servizio		[varchar](150),
--	@Beneficiario	[varchar](150),
--	@costoMensile	[varchar](150),
--	@PIN			[varchar](4),
--	@PUK			[varchar](8),
--	@soglie			[varchar](290)
--as
----
--insert Telecom.[dbo].[lottoDue_produzione]
--(
--	--[id],			
--	[numero]		,
--	[attivazione]	,
--	[servizio]		,
--	[Beneficiario]	,
--	[costoMensile]	,
--	[PIN]			,
--	[PUK]			,
--	[soglie]
--	   )
--values(
--	--[id],		
--	@numero,
--	@attivazione,
--	@servizio,
--	@Beneficiario,
--	@costoMensile,
--	@PIN,
--	@PUK,
--	@soglie
--)
--GO

select * from lottoDue
select * from lottoDue_produzione
select * from mobileIt where Beneficiario like '%Erriques%'
select * from UtenzeDettaglio
select * from UtenzeIndividuali 
select * from UtenzelottoDue where numero='3316342823'

--update UtenzelottoDue set
--PIN='4249'
--,PUK='13316320'
--where id=27

--update UtenzelottoDue set
--Beneficiario='Erriques'
--where id=27

select * from mobileIt       where numero='3669010498'
select * from UtenzelottoDue where numero='3669010498'

select * from lottoDue_produzione order by Beneficiario asc
select * from lottoDue_produzione where Beneficiario like '%trigonos%1%'
select * from lottoDue_produzione where Beneficiario like '%Ianeselli%'
select * from lottoDue_produzione where Beneficiario like '%Pichierri%'

update lottoDue_produzione set
PIN='2374'
,PUK='42071158'
where id=38


'6390'
'98409867'


-- create procedure [dbo].[usp_lottoDue_LOAD]
--as
select 
	l.numero,
	l.attivazione,
	l.servizio,
	d.Beneficiario,
	l.costoMensile,
	l.PIN,
	l.PUK,
	l.soglie
from
	UtenzelottoDue l,
	UtenzeDettaglio d
where
	l.numero = d.numero
order by 
	d.beneficiario asc


select top 2 * from UtenzelottoDue
--update UtenzelottoDue


