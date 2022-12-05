
--USE [Telecom]
--GO

--/****** Object:  StoredProcedure [dbo].[usp_UtenzelottoDue_INSERT]    Script Date: 09/22/2015 12:37:46 ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--create procedure [dbo].[usp_UtenzelottoDue_INSERT]
--	-- id   identity pk,
--	@numero			[varchar](30),
--	@attivazione	[datetime],
--	@servizio		[varchar](150),
--	@tipoServizio	[varchar](150),
--	@Beneficiario	[varchar](150),
--	@costoMensile	[varchar](150),
--	@PIN			[varchar](4),
--	@PUK			[varchar](8),
--	@soglie			[varchar](200)
--as
----
--insert Telecom.[dbo].[UtenzelottoDue] 
--(
--	--[id],			
--	[numero]		,
--	[attivazione]	,
--	[servizio]		,
--	[tipoServizio]	,
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
--	@tipoServizio,
--	@Beneficiario,
--	@costoMensile,
--	@PIN,
--	@PUK,
--	@soglie
--)
--GO



--USE [Telecom]
--GO

--/****** Object:  User [TelecomUser]    Script Date: 09/22/2015 13:37:20 ******/
--GO

--CREATE USER [TelecomUser] FOR LOGIN [applicationuser] WITH DEFAULT_SCHEMA=[dbo]
--GO



--USE [Telecom]
--GO

--/****** Object:  Table [dbo].[UtenzelottoDue]    Script Date: 09/22/2015 14:28:07 ******/
--SET ANSI_NULLS OFF
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[UtenzelottoDue](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[numero] [varchar](30) NOT NULL,
--	[attivazione] [datetime] NULL,
--	[servizio] [varchar](150) NOT NULL,
--	[tipoServizio] [varchar](150) NOT NULL,
--	[Beneficiario] [varchar](150) NOT NULL,
--	[costoMensile] [varchar](150) NULL,
--	[PIN] [varchar](4) NULL,
--	[PUK] [varchar](8) NULL,
--	[soglie] [varchar](200) NULL,
-- CONSTRAINT [pk_UtenzelottoDue] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO

select COUNT(*) from UtenzelottoDue



--delete from UtenzelottoDue where id=3

select top 2 * from mobileIt
select top 2 * from UtenzeDettaglio
select * from UtenzeDettaglio


select  distinct 
	due.numero,
	uno.beneficiario,
	due.servizio,
	due.tipoServizio
into UtenzeDettaglio  	
from
	mobileIt uno,
	UtenzelottoDue due
where 
	uno.numero=due.numero
	and due.tipoServizio='ABBONAMENTO'
order by
 uno.Beneficiario asc
 
  
			
--drop TABLE [dbo].[UtenzeDettaglio]

--CREATE TABLE [dbo].[UtenzeDettaglio](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[numero] [varchar](30) NOT NULL,
--	[Beneficiario] [varchar](150) NOT NULL,
--	[servizio] [varchar](150) NOT NULL,
--	[tipoServizio] [varchar](150) NOT NULL,
--	----- follow the nullable fields
--	[costoMensile] [varchar](150) NULL,
--	[PIN] [varchar](4) NULL,
--	[PUK] [varchar](8) NULL,
--	[soglie] [varchar](200) NULL,
-- CONSTRAINT [pk_UtenzeDettaglio] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]
			
			

select * from UtenzelottoDue where numero not in (  ------------Nota Bene NB.
select numero from UtenzeDettaglio )

--update UtenzelottoDue
--set Beneficiario='Ianeselli'
--where id=9

--update UtenzelottoDue
--set Beneficiario='Marottoli'
--where id=17

--update UtenzelottoDue
--set Beneficiario='Fedele di Catrano'
--where id=33

--update UtenzelottoDue
--set Beneficiario='Pichierri'
--where id=35

select * from UtenzelottoDue where id=9
select * from UtenzelottoDue where id=17
			
select * from UtenzeDettaglio 

select 
	UtenzelottoDue.numero,
	UtenzeDettaglio.Beneficiario
  from 
  UtenzelottoDue,
  UtenzeDettaglio  
   where UtenzelottoDue.numero = UtenzeDettaglio.numero 
order by UtenzeDettaglio.Beneficiario

select 
	UtenzelottoDue.numero,
	UtenzeDettaglio.Beneficiario
into UtenzeIndividuali
  from 
  UtenzelottoDue,
  UtenzeDettaglio  
   where UtenzelottoDue.numero = UtenzeDettaglio.numero 
order by UtenzeDettaglio.Beneficiario

select * from UtenzeIndividuali

select * from UtenzelottoDue where numero ='3665838267'
select * from mobileIt where numero ='3665838267'
select * from mobileIt where numero ='3669239285'
select * from UtenzelottoDue where numero ='3669239285'
select * from UtenzeDettaglio where numero ='3669239285'
select * from UtenzeIndividuali where numero ='3669239285'