-- create database RealizzazioniItalia
select * from cv_db.dbo.areaAziendale_LOOKUP



--USE [RealizzazioniItalia]
--GO
--SET ANSI_NULLS OFF
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--CREATE TABLE [dbo].[collaboratore_LOOKUP](---------------------------------------------
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[nome] [varchar](50) NOT NULL,
--	[cognome] [varchar](50) NOT NULL,
--	[ruolo] [varchar](250) NOT NULL,
-- CONSTRAINT [pk_collaboratore] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--SET ANSI_PADDING OFF
--GO

--insert into RealizzazioniItalia.dbo.Colaboratore_LOOKUP(
----id
--nome,
--cognome,
--ruolo
--)values(
----id
--'Stefano',
--'Fuoco',
--'Responsabile lotto Mules 2-3')

--select * from RealizzazioniItalia.dbo.Colaboratore_LOOKUP
--drop table RealizzazioniItalia.dbo.Colaboratore_LOOKUP

select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP


USE [RealizzazioniItalia]
GO

/****** Object:  Table [dbo].[collaboratore_LOOKUP]    Script Date: 05/10/2016 11:42:32 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[collaboratore_LOOKUP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cognome] [varchar](50) NOT NULL,
	[ruolo] [varchar](250) NOT NULL,
 CONSTRAINT [pk_collaboratore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


 
--select * 
--into RealizzazioniItalia.dbo.collaboratore_LOOKUP
--from RealizzazioniItalia.dbo.Colaboratore_LOOKUP


--insert into RealizzazioniItalia.dbo.collaboratore_LOOKUP(
----id
--nome,
--cognome,
--ruolo
--)values(
----id
--'Giorgio',
--'Malucelli',
--'Ingegneria')

1	Stefano	Fuoco	Responsabile lotto Mules 2-3
2	Angelo	Lombardi	Responsabile lotto Sottoattraversamento Isarco
3	Stefan	Skuk	Geologia
4	Simone	Cappelletto	Topografia
5	David	Marini	Ingegneria
6	Giorgio	Malucelli	Ingegneria

--insert into RealizzazioniItalia.dbo.Colaboratore_LOOKUP(
----id
--nome,
--cognome,
--ruolo
--)values(
----id
--'Giorgio',
--'Malucelli',
--'Ingegneria')

select * from cv_db.dbo.candidato
where nominativo like '%Aaron%'  --1247

--update  cv_db.dbo.candidato
--set nominativo='Albanese Aaron' where id=1247

-- update cv_db.dbo.candidato set id_settore=3 where id=1370

select * from cv_db.dbo.settoreCandidatura_LOOKUP where id=18

--------------------------------------------------------
USE [cv_db]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[permesso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_utente] [int] NOT NULL,
	[id_permissionLevel] [int] NOT NULL,
	[id_settore] [int] NULL,
 CONSTRAINT [pk_permesso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[permesso]  WITH CHECK ADD  CONSTRAINT [fk_permessoPermissionLevel] FOREIGN KEY([id_permissionLevel])
REFERENCES [dbo].[livelloFunzionario_LOOKUP] ([id])
GO

ALTER TABLE [dbo].[permesso] CHECK CONSTRAINT [fk_permessoPermissionLevel]
GO

ALTER TABLE [dbo].[permesso]  WITH CHECK ADD  CONSTRAINT [fk_permessoSettore] FOREIGN KEY([id_settore])
REFERENCES [dbo].[settoreAziendale_LOOKUP] ([id])
GO

ALTER TABLE [dbo].[permesso] CHECK CONSTRAINT [fk_permessoSettore]
GO

ALTER TABLE [dbo].[permesso]  WITH CHECK ADD  CONSTRAINT [fk_permessoUtente] FOREIGN KEY([id_utente])
REFERENCES [dbo].[utente] ([id])
GO

ALTER TABLE [dbo].[permesso] CHECK CONSTRAINT [fk_permessoUtente]
GO
--------------------------------------------------------

--USE [RealizzazioniItalia]
--GO
--SET ANSI_NULLS OFF
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--CREATE TABLE [dbo].[strumento](---------------------------------------------
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[sintesi] [varchar](250) NOT NULL,
--	[dettaglio] [text] NOT NULL,
--	[id_responsabile] [int] NOT NULL,
-- CONSTRAINT [pk_strumento] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--ALTER TABLE [dbo].[strumento]  WITH CHECK ADD  CONSTRAINT [fk_responsabile] FOREIGN KEY([id_responsabile])
--REFERENCES [dbo].[collaboratore_LOOKUP] ([id])
--GO
--ALTER TABLE [dbo].[strumento] CHECK CONSTRAINT [fk_responsabile]
--GO
--SET ANSI_PADDING OFF
--GO

--drop table strumento

--------------------------------------------------------

--USE [RealizzazioniItalia]
--GO
--SET ANSI_NULLS OFF
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--CREATE TABLE [dbo].[statoStrumento](---------------------------------------------
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[when] [datetime] NOT NULL,
--	[oggettoNote] [text] NOT NULL,
--	[id_strumento] [int] NOT NULL,
-- CONSTRAINT [pk_statoStrumento] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--ALTER TABLE [dbo].[statoStrumento]  WITH CHECK ADD  CONSTRAINT [fk_strumento] FOREIGN KEY([id_strumento])
--REFERENCES [dbo].[strumento] ([id])
--GO
--ALTER TABLE [dbo].[statoStrumento] CHECK CONSTRAINT [fk_strumento]
--GO
--SET ANSI_PADDING OFF
--GO

select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP
select * from RealizzazioniItalia.dbo.strumento
select * from RealizzazioniItalia.dbo.statoStrumento
