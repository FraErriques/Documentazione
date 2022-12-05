--USE [dotazioni2022]
--GO
---- generic table, to mix up all vehicles, distinguished by field [targa_autovettura] 
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[generica_autovettura](
--	[autovettura_id] [int] IDENTITY(1,1) NOT NULL,
--	[targa_autovettura] [varchar](255) NOT NULL,
--	[registration_date] [date] NULL,
--	[km] [float] NULL,
--	[rifornimento_luogo] [varchar](255) NULL,
--	[rifornimento_litri] [float] NULL,
--	[costo_gasolio_euro_litro] [float] NULL,
--	[spesa_gasolio_euro] [float] NULL,
--	[accessori_descriz] [varchar](255) NULL,
--	[accessori_euro] [float] NULL,
--	[lavaggio_descr] [varchar](255) NULL,
--	[lavaggio_euro] [float] NULL,
--	[manutenzione_descr] [varchar](255) NULL,
--	[data_ingresso_officina] [date] NULL,
--	[data_uscita_officina] [date] NULL,
--	[manutenzione_euro] [float] NULL,
--	[altro_descriz] [varchar](255) NULL,
--	[altro_euro] [float] NULL,
--	[sinistro_descriz] [varchar](255) NULL,
--	[conducente] [varchar](255) NULL,
--	[riga_descriz] [varchar](255) NOT NULL,
--	[costo_totale_riga_euro] [float] NOT NULL,
--	[franchigia_assicurazione_euro] [float] NULL,
-- CONSTRAINT [PK_dotazioni2022_genericaautovettura_] PRIMARY KEY CLUSTERED 
--(
--	[autovettura_id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO
--SET ANSI_PADDING OFF
--GO

USE [dotazioni2022]
GO
/****** Object:  Table [dbo].[generica_autovettura]    Script Date: 02/25/2022 16:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[generica_autovettura](
	[autovettura_id] [int] IDENTITY(1,1) NOT NULL,
	[targa_autovettura] [varchar](255) NOT NULL,
	[registration_date] [date] NULL,
	[km] [float] NULL,
	[rifornimento_luogo] [varchar](255) NULL,
	[rifornimento_litri] [float] NULL,
	[costo_gasolio_euro_litro] [float] NULL,
	[spesa_gasolio_euro] [float] NULL,
	[accessori_descriz] [varchar](255) NULL,
	[accessori_euro] [float] NULL,
	[lavaggio_descr] [varchar](255) NULL,
	[lavaggio_euro] [float] NULL,
	[manutenzione_descr] [varchar](255) NULL,
	[data_ingresso_officina] [date] NULL,
	[data_uscita_officina] [date] NULL,
	[manutenzione_euro] [float] NULL,
	[altro_descriz] [varchar](255) NULL,
	[altro_euro] [float] NULL,
	[sinistro_descriz] [varchar](255) NULL,
	[conducente] [varchar](255) NULL,
	[riga_descriz] [varchar](255) NOT NULL,
	[costo_totale_riga_euro] [float] NOT NULL,
	[franchigia_assicurazione_euro] [float] NULL,
 CONSTRAINT [PK_dotazioni2022_genericaautovettura_] PRIMARY KEY CLUSTERED 
(
	[autovettura_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
---#####
USE [dotazioni2022]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_genericaautovettura_INSERT]
	--@autovettura_id [int] IDENTITY(1,1) NOT NULL,
    @targa_autovettura [varchar](255),
	@registration_date  [date],
	@km [float],
	@rifornimento_luogo [varchar](255),
	@rifornimento_litri  [float],
	@costo_gasolio_euro_litro [float],
	@spesa_gasolio_euro [float],
	@accessori_descriz [varchar](255),
	@accessori_euro [float],
	@lavaggio_descr [varchar](255),
	@lavaggio_euro [float],
	@manutenzione_descr [varchar](255),
	@data_ingresso_officina [date],
	@data_uscita_officina [date],
	@manutenzione_euro [float],
	@altro_descriz [varchar](255),
	@altro_euro [float],
	@sinistro_descriz [varchar](255),
	@conducente [varchar](255),
	@riga_descriz [varchar](255),
	@costo_totale_riga_euro [float],
	@franchigia_assicurazione_euro [float]
as
--
insert into [dotazioni2022].[dbo].[generica_autovettura]
(
--  [autovettura_id]  [int] IDENTITY(1,1) NOT NULL,
[targa_autovettura],
[registration_date] ,
[km],
[rifornimento_luogo],
[rifornimento_litri] ,
[costo_gasolio_euro_litro] ,
[spesa_gasolio_euro] ,
[accessori_descriz] ,
[accessori_euro],
[lavaggio_descr],
[lavaggio_euro],
[manutenzione_descr],
[data_ingresso_officina],
[data_uscita_officina],
[manutenzione_euro],
[altro_descriz],
[altro_euro],
[sinistro_descriz],
[conducente],
[riga_descriz] ,
[costo_totale_riga_euro] ,
[franchigia_assicurazione_euro] 
		)values(
	--@autovettura_id  [int] IDENTITY(1,1) NOT NULL,
	@targa_autovettura,
	@registration_date ,
	@km,
	@rifornimento_luogo,
	@rifornimento_litri  ,
	@costo_gasolio_euro_litro ,
	@spesa_gasolio_euro ,
	@accessori_descriz ,
	@accessori_euro,
	@lavaggio_descr,
	@lavaggio_euro,
	@manutenzione_descr,
	@data_ingresso_officina,
	@data_uscita_officina,
	@manutenzione_euro,
	@altro_descriz,
	@altro_euro,
	@sinistro_descriz,
	@conducente,
	@riga_descriz ,
	@costo_totale_riga_euro ,
	@franchigia_assicurazione_euro 
)
GO
---@@@@@
USE [dotazioni2022]
GO
/****** Object:  StoredProcedure [dbo].[usp_genericaautovettura_INSERT]    Script Date: 02/25/2022 16:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_genericaautovettura_INSERT]
	--@autovettura_id [int] IDENTITY(1,1) NOT NULL,
    @targa_autovettura [varchar](255),
	@registration_date  [date],
	@km [float],
	@rifornimento_luogo [varchar](255),
	@rifornimento_litri  [float],
	@costo_gasolio_euro_litro [float],
	@spesa_gasolio_euro [float],
	@accessori_descriz [varchar](255),
	@accessori_euro [float],
	@lavaggio_descr [varchar](255),
	@lavaggio_euro [float],
	@manutenzione_descr [varchar](255),
	@data_ingresso_officina [date],
	@data_uscita_officina [date],
	@manutenzione_euro [float],
	@altro_descriz [varchar](255),
	@altro_euro [float],
	@sinistro_descriz [varchar](255),
	@conducente [varchar](255),
	@riga_descriz [varchar](255),
	@costo_totale_riga_euro [float],
	@franchigia_assicurazione_euro [float]
as
--
insert into [dotazioni2022].[dbo].[generica_autovettura]
(
--  [autovettura_id]  [int] IDENTITY(1,1) NOT NULL,
[targa_autovettura],
[registration_date] ,
[km],
[rifornimento_luogo],
[rifornimento_litri] ,
[costo_gasolio_euro_litro] ,
[spesa_gasolio_euro] ,
[accessori_descriz] ,
[accessori_euro],
[lavaggio_descr],
[lavaggio_euro],
[manutenzione_descr],
[data_ingresso_officina],
[data_uscita_officina],
[manutenzione_euro],
[altro_descriz],
[altro_euro],
[sinistro_descriz],
[conducente],
[riga_descriz] ,
[costo_totale_riga_euro] ,
[franchigia_assicurazione_euro] 
		)values(
	--@autovettura_id  [int] IDENTITY(1,1) NOT NULL,
	@targa_autovettura,
	@registration_date ,
	@km,
	@rifornimento_luogo,
	@rifornimento_litri  ,
	@costo_gasolio_euro_litro ,
	@spesa_gasolio_euro ,
	@accessori_descriz ,
	@accessori_euro,
	@lavaggio_descr,
	@lavaggio_euro,
	@manutenzione_descr,
	@data_ingresso_officina,
	@data_uscita_officina,
	@manutenzione_euro,
	@altro_descriz,
	@altro_euro,
	@sinistro_descriz,
	@conducente,
	@riga_descriz ,
	@costo_totale_riga_euro ,
	@franchigia_assicurazione_euro 
)
GO
