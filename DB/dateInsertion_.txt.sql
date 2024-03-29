/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 3 [id]
      ,[beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note]
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  
  --#####################
  USE [dotazioni2022]
GO

--drop table [dotazioni2022].[dbo].[justAdate]

/*****/
--use [dotazioni2022]
--GO
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--CREATE TABLE [dbo].[eventLog](
--	[id_eventLog]          [int] IDENTITY(1,1) NOT NULL,
--	[Event_data]           [date] NOT NULL,
--	[Event_description]    [varchar](330) NOT NULL,
--	CONSTRAINT [PK_dotazioni2022_eventLog] PRIMARY KEY CLUSTERED 
--	(
--		[id_eventLog] ASC
--	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]	
--GO
--SET ANSI_PADDING OFF
--GO

--drop table dotazioni2022.dbo.justAdate
insert into dotazioni2022.dbo.justAdate(
	data
	) values(
	'2009-12-29'
	)

select * from justAdate
--###

USE [dotazioni2022]
GO
--drop procedure [dbo].[usp_EventLog_INSERT]
--/*****/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--create procedure [dbo].[usp_EventLog_INSERT]
---- id_eventLog  IDENTITY ----------
-- @Event_data          [date],
-- @Event_description   [varchar](330)
--as
--insert into [dotazioni2022].[dbo].[eventLog]
--(
--	--id
--    [Event_data],
--    [Event_description]
--	    )values(
-- --id
-- @Event_data,
-- @Event_description
--)
--GO
----###



USE [dotazioni2022]
GO


exec usp_eventLog_INSERT '1933-06-16', 'Giacomo'
select * from [dotazioni2022].[dbo].eventLog
select COUNT(*) from [dotazioni2022].[dbo].eventLog

---@@
USE [dotazioni2022]
GO

/****** Object:  Table [dbo].[genericaAuto]    Script Date: 02/16/2022 12:29:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[genericaAuto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vettura] [varchar](30) NULL,
	[data] [date] NULL,
	[km] [int] NULL,
	[intervento] [varchar](330) NULL,
	[litri] [float] NULL,
	[euro] [float] NULL,
	[gasolio_euro/litro] [float] NULL,
 CONSTRAINT [PK_dotazioni2021_genericaAuto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

