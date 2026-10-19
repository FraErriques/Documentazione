
--USE [Cespiti]
--GO
--drop table cespite


--USE [Cespiti]
--GO

--/****** Object:  Table [dbo].[cespite]    Script Date: 07/17/2014 10:21:55 ******/
--SET ANSI_NULLS OFF
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING OFF
--GO

--CREATE TABLE [dbo].[cespite](
--	[id]							[int] IDENTITY(1,1) NOT NULL,
--	[id_paese]						[int] NOT NULL,
--	[id_sedeAziendale]				[int] NOT NULL,
--	[id_flagStato]					[int] NOT NULL,
--	[id_categoriaCespite]			[int] NOT NULL,
--	[stanza]						[int] NOT NULL,
--	[progressivoInStanza]			[int] NOT NULL,
--	[descrizione]					[text]		   NULL,
--	[numeroSerie]					[varchar](150) NULL,
--	[marca]							[varchar](150) NULL,
--	[assegnatario]					[varchar](150) NULL,
--	[codiceABarreTxt]				[varchar](150) NULL,
-- CONSTRAINT [pk_cespite] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO

--ALTER TABLE [dbo].[cespite]  WITH CHECK ADD  CONSTRAINT [fk_cespite_categoriaCespite] FOREIGN KEY([id_categoriaCespite])
--REFERENCES [dbo].[categoriaCespite_LOOKUP] ([id])
--GO

--ALTER TABLE [dbo].[cespite] CHECK CONSTRAINT [fk_cespite_categoriaCespite]
--GO

--ALTER TABLE [dbo].[cespite]  WITH CHECK ADD  CONSTRAINT [fk_cespite_flagStato] FOREIGN KEY([id_flagStato])
--REFERENCES [dbo].[flagStato_LOOKUP] ([id])
--GO

--ALTER TABLE [dbo].[cespite] CHECK CONSTRAINT [fk_cespite_flagStato]
--GO

--ALTER TABLE [dbo].[cespite]  WITH CHECK ADD  CONSTRAINT [fk_cespite_paese] FOREIGN KEY([id_paese])
--REFERENCES [dbo].[paese_LOOKUP] ([id])
--GO

--ALTER TABLE [dbo].[cespite] CHECK CONSTRAINT [fk_cespite_paese]
--GO

--ALTER TABLE [dbo].[cespite]  WITH CHECK ADD  CONSTRAINT [fk_cespite_sedeAziendale] FOREIGN KEY([id_sedeAziendale])
--REFERENCES [dbo].[sedeAziendale_LOOKUP] ([id])
--GO

--ALTER TABLE [dbo].[cespite] CHECK CONSTRAINT [fk_cespite_sedeAziendale]
--GO

----@ insert candidato------------------------------------------------------------------------------------------------------------------------
--USE [cv_db]
--GO
--/****** Object:  StoredProcedure [dbo].[usp_candidato_INSERT]    Script Date: 07/17/2014 10:33:53 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--create procedure [dbo].[usp_candidato_INSERT]
--	-- id
--	@nominativo varchar(150)
--	,@id_settore int
--	,@note text
--as
--insert into candidato(
--	-- id
--	nominativo
--	,id_settore
--	,note
--)values(
--	-- id
--	@nominativo
--	,@id_settore
--	,@note
--)
--GO
----@ END insert candidato------------------------------------------------------------------------------------------------------------------------

--USE [Cespiti]
--GO
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--create procedure [dbo].[usp_categoriaCespite_LOOKUP_INSERT]
--	-- id   identity pk
--	@categoriaLibro			[varchar](4),
--	@descrizione			[varchar](150),
--	@quotaAmmortamento		[float]
--as
--insert into categoriaCespite_LOOKUP(
--		-- id  identity pk
--		categoriaLibro,
--		descrizione,
--		quotaAmmortamento
--)values(
--		-- id  identity pk
--		@categoriaLibro,
--		@descrizione,
--		@quotaAmmortamento
--)
--GO
--@------------------------------------------------------------------------------------------------------

--update  [Cespiti].[dbo].[categoriaCespite_LOOKUP]
--set descrizione='MIGLIORIE SU BENI DI TERZI'
--where id=1

select * from [Cespiti].[dbo].[categoriaCespite_LOOKUP]

