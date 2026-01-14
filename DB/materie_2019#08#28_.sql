----create database materie

--USE [materie]
--GO

--/****** Object:  Table [dbo].[materia_LOOKUP]    Script Date: 08/28/2019 17:04:23 ******/
--SET ANSI_NULLS OFF
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[materia_LOOKUP](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[nomeMateria] [varchar](150) NOT NULL,
-- CONSTRAINT [pk_materia] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO
----###

--USE [materie]
--GO

--/****** Object:  Table [dbo].[autore]    Script Date: 08/28/2019 17:07:29 ******/
--SET ANSI_NULLS OFF
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING OFF
--GO

--CREATE TABLE [dbo].[autore](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[nominativo] [varchar](150) NOT NULL,
--	[note] [text] NULL,
-- CONSTRAINT [pk_autore] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

--GO
--SET ANSI_PADDING OFF
--GO
----###


--USE [materie]
--GO

--/****** Object:  Table [dbo].[doc_multi]    Script Date: 08/28/2019 17:11:47 ******/
--SET ANSI_NULLS OFF
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING OFF
--GO

--CREATE TABLE [dbo].[doc_multi](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[ref_job_id] [int] NOT NULL,
--	[ref_autore_id] [int] NOT NULL,
--	[ref_materia_id] [int] NOT NULL,
--	[abstract] [varchar](5500) NOT NULL,
--	[sourceName] [varchar](350) NOT NULL,
--	[doc] [image] NULL,
--	[insertion_time] [datetime] NULL,
-- CONSTRAINT [pk_doc_multi] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO

--ALTER TABLE [dbo].[doc_multi]  WITH CHECK ADD  CONSTRAINT [fk_doc_multi_autore] FOREIGN KEY([ref_autore_id])
--REFERENCES [dbo].[autore] ([id])
--GO
--ALTER TABLE [dbo].[doc_multi] CHECK CONSTRAINT [fk_doc_multi_autore]
--GO

--ALTER TABLE [dbo].[doc_multi]  WITH CHECK ADD  CONSTRAINT [fk_doc_multi_materia] FOREIGN KEY([ref_materia_id])
--REFERENCES [dbo].[materia_LOOKUP] ([id])
--GO
--ALTER TABLE [dbo].[doc_multi] CHECK CONSTRAINT [fk_doc_multi_materia]
--GO

--ALTER TABLE [dbo].[doc_multi] ADD  DEFAULT ((0)) FOR [ref_job_id]
--GO

--ALTER TABLE [dbo].[doc_multi] ADD  DEFAULT (getdate()) FOR [insertion_time]
--GO

----###

--USE [materie]
--GO
--/****** Object:  Table [dbo].[utente]    Script Date: 08/28/2019 17:25:39 ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[utente](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[username] [varchar](50) NOT NULL,
--	[password] [varchar](50) NOT NULL,
--	[kkey] [varchar](150) NULL,
--	[mode] [char](1) NOT NULL,
-- CONSTRAINT [pk_utente_materie] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
--UNIQUE NONCLUSTERED 
--(
--	[username] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO

--ALTER TABLE [dbo].[utente] ADD  DEFAULT ('o') FOR [mode]
--GO
----###


--USE [materie]
--GO

--/****** Object:  Table [dbo].[lCrash]    Script Date: 08/28/2019 17:32:07 ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--CREATE TABLE [dbo].[lCrash](
--	[id] [int] NOT NULL,
--	[card] [int] NOT NULL,
-- CONSTRAINT [pk_materie_lCrash] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO

--ALTER TABLE [dbo].[lCrash]  WITH CHECK ADD  CONSTRAINT [fk_materie_lCrash] FOREIGN KEY([id])
--REFERENCES [dbo].[utente] ([id])
--GO
--ALTER TABLE [dbo].[lCrash] CHECK CONSTRAINT [fk_materie_lCrash]
--GO

--ALTER TABLE [dbo].[lCrash] ADD  DEFAULT ((0)) FOR [card]
--GO
----###

--USE [materie]
--GO

--/****** Object:  Table [dbo].[permesso]    Script Date: 08/28/2019 17:35:51 ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--CREATE TABLE [dbo].[permesso](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[id_utente] [int] NOT NULL,
-- CONSTRAINT [pk_permesso] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO



--ALTER TABLE [dbo].[permesso]  WITH CHECK ADD  CONSTRAINT [fk_permessoUtente_materie] FOREIGN KEY([id_utente])
--REFERENCES [dbo].[utente] ([id])
--GO
--ALTER TABLE [dbo].[permesso] CHECK CONSTRAINT [fk_permessoUtente_materie]
--GO

USE [materie]
GO

/****** Object:  StoredProcedure [dbo].[usp_utente_INSERT]    Script Date: 08/28/2019 18:04:51 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[usp_utente_INSERT]
	@username varchar(50),
	@password varchar(50),
	@kkey     varchar(150),
	@mode     char(1)
as
insert into utente(
--id
[username],
[password],
[kkey],
[mode]
       ) values(
--id
@username,
@password,
@kkey,
@mode
)

GO

--###
USE [materie]
GO

/****** Object:  StoredProcedure [dbo].[usp_utente_LOADDECODEDSINGLE]    Script Date: 08/28/2019 18:06:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  procedure [dbo].[usp_utente_LOADDECODEDSINGLE]
	@id int
as
	select
		username
	from utente
	where id=@id

GO
--###
USE [materie]
GO

/****** Object:  StoredProcedure [dbo].[usp_utente_LOADSINGLE]    Script Date: 08/28/2019 18:07:32 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_utente_LOADSINGLE]
	@username varchar(50)
as
	select
		*
	from utente
	where username=@username

GO
--###
USE [materie]
GO

/****** Object:  StoredProcedure [dbo].[usp_utente_ChangePwd]    Script Date: 08/28/2019 18:08:30 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[usp_utente_ChangePwd]
	@username varchar(50),
	@password varchar(50),
	@kkey     varchar(150),
	@mode     char(1)
as
UPDATE utente
SET
		password=@password,
		kkey=@kkey,
		mode=@mode
WHERE
	username=@username

GO
--###
USE [materie]
/****** Object:  StoredProcedure [dbo].[usp_permesso_GetNonCensiti]    Script Date: 08/28/2019 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_permesso_GetNonCensiti]
as	
--resultset utente
	select * from [dbo].[utente]
	where id not in( select id_utente from permesso)

--resultset permesso
select
	u.username
 from
	[permesso] p,
	[utente] u
where 
	p.id_utente=u.id
GO
