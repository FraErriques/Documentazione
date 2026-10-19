select top 2 * from mobileIt



--USE [Telecom]
--GO
--/****** Object:  Table [dbo].[UtenzelottoDue]    Script Date: 09/21/2015 09:42:06 ******/
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
-- CONSTRAINT [pk_UtenzelottoDue] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--SET ANSI_PADDING OFF
--GO
