
select count(*) from [Tim2021].[dbo].[SIM_BBT]
select count(*) from [Tim2021].[dbo].[SIM_TIM]

select TOP 3 * from [Tim2021].[dbo].[SIM_BBT]
select TOP 3 * from [Tim2021].[dbo].[SIM_TIM]

select * from [Tim2021].[dbo].[SIM_BBT]
select * from [Tim2021].[dbo].[SIM_TIM]

--truncate table [Tim2021].[dbo].[SIM_BBT]
--truncate table [Tim2021].[dbo].[SIM_TIM]

-- exec [Tim2021].[dbo].[usp_SIM_INSERT]
USE [Tim2021]
GO
DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_SIM_INSERT]
		@beneficiario = N'utenteTest post truncate',
		@servizio = N'serv test  post truncate',
		@numero = N' #test  post truncate',
		@PIN = N'#pin',
		@PUK = N'#puk',
		@ICCID = N'#iccid  post truncate',
		@note = N' # note test post truncate'
SELECT	'Return Value' = @return_value
GO
--##
select
bbt.numero
,bbt.beneficiario
from
[Tim2021].[dbo].[SIM_BBT] bbt
,[Tim2021].[dbo].[SIM_TIM] tim
where
bbt.numero=tim.numero

exec usp_getCardSIMBBTnonInContratto_READ

--##
--USE [Tim2021]
--GO
--create procedure usp_getCardSIMBBTnonInContratto_READ
--as
--select
--COUNT(bbt.numero)
--from
--[Tim2021].[dbo].[SIM_BBT] bbt
--where
--bbt.numero not in (select numero from [Tim2021].[dbo].[SIM_TIM] )
--GO

exec usp_SIMBBTnonInContratto_LOAD
--##
--USE [Tim2021]
--GO
--create procedure usp_SIMBBTnonInContratto_LOAD
--as
--select  -- NB. query per schede non in contratto: ovvero nei recordBBT ma non in quelli TIM -----------
--bbt.*
--from
--[Tim2021].[dbo].[SIM_BBT] bbt
--where
--bbt.numero not in (select numero from [Tim2021].[dbo].[SIM_TIM] )
--GO

exec usp_SIMTIMnonAttiveInBBT_LOAD
----##
--USE [Tim2021]
--GO
--create procedure usp_SIMTIMnonAttiveInBBT_LOAD
--as
--select  -- NB. query per nei record TIM, ma non in quelli BBT  -----------
--tim.*
--from
--[Tim2021].[dbo].[SIM_TIM] tim
--where
--tim.numero not in (select numero from [Tim2021].[dbo].[SIM_BBT] )
--GO

exec usp_getCardSIMTIMnonAttiveInBBT_READ
--##
--USE [Tim2021]
--GO
--create procedure usp_getCardSIMTIMnonAttiveInBBT_READ
--as
--select  -- NB. query per nei record TIM, ma non in quelli BBT  -----------
--COUNT(tim.numero)
--from
--[Tim2021].[dbo].[SIM_TIM] tim
--where
--tim.numero not in (select numero from [Tim2021].[dbo].[SIM_BBT] )
--GO
----################
USE [Tim2021]
GO

/****** Object:  StoredProcedure [dbo].[usp_SIM_draft_INSERT]    Script Date: 03/12/2021 12:05:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[usp_SIM_draft_INSERT]
	-- id   identity pk,
	@beneficiario	[varchar](150),
	@servizio		[varchar](150),
	@numero			[varchar](30),
	@PIN			[varchar](4),
	@PUK			[varchar](8),
	@ICCID			[varchar](150),
	-- @registrazione	[datetime] from Sys
	@note			[text]
as
--
select * from [Tim2021].[dbo].[SIM_draft]
insert into [Tim2021].[dbo].[SIM_draft]
(
	--[id],			
	[beneficiario]	,
	[servizio]		,
	[numero]		,
	[PIN]			,
	[PUK]			,
	[ICCID]			,
	[registrazione]	,
	[note]
	   )
  values(
	--[id],		
	'rossi', --@beneficiario,
	'vocale', --@servizio,
	'123456', --@numero,
	'123',--@PIN,
	'4567',--@PUK,
	'891011121314',--@ICCID,
	'2020-04-30', -- [registrazione]
	'annotazioni generali sul dispositivo concesso in comodato di uso per fini aziendali ed eventuali sostituzioni, per cambio macchina.' --@note 
)

GO


--USE [Tim2021]
--GO
--/****** Object:  Table [dbo].[SIM_draft]    Script Date: 03/12/2021 12:40:59 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[prova123](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[beneficiario] [varchar](150) NULL,
--	[registrazione] [date] NULL,
--	[note] [text] NULL,
-- CONSTRAINT [pk_dbDotazioni_tableProva] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO

--SET ANSI_PADDING OFF
--GO

select * from prova123

insert into [Tim2021].[dbo].[prova123]
(
	--[id],			
	[beneficiario]	,
	[registrazione]	,
	[note]
	   )
  values(
	--[id],		
	'verdi', --@beneficiario,
	'2020.01.02', -- [registrazione]
	'prova separatori punto, nella data' --@note 
)
GO

create table  [dbo].[prova456](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[un_razionale] float NULL,
	[un_intero] int NULL,
	[una_data_senzaOra] date null
 CONSTRAINT [pk_dbTim2021_table_prova456] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

insert into  [dbo].[prova456](
-- id
un_razionale
,un_intero
,una_data_senzaOra
) values(
--id
'12.3456E-07' -- il separatore decimale e' solo '.' vale la notazione esponenziale E+n E-0
,'-12'
,'2010/05/27'  ) -- valgono '/', '-', '.' come separatori in yyyy-mm-dd

select * from Tim2021.dbo.prova456
where un_razionale is NULL
