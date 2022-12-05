select MAX(id) from Telecom.dbo.lottoDue_produzione

select * from Telecom.dbo.lottoDue_produzione
where id=91

insert into  Telecom.dbo.lottoDue_produzione( Beneficiario, numero, servizio,attivazione) values(
'Mazzarello'
,'3666289177' --num
,'Vocale' --serv
,GETDATE()
)
GO

--######
USE [Telecom]
GO

/****** Object:  Table [dbo].[lottoDue_produzione]    Script Date: 02/25/2021 16:50:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[lottoDue_produzione](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](30) NOT NULL,
	[attivazione] [datetime] NOT NULL,
	[servizio] [varchar](150) NOT NULL,
	[Beneficiario] [varchar](150) NOT NULL,
	[costoMensile] [varchar](150) NULL,
	[PIN] [varchar](4) NULL,
	[PUK] [varchar](8) NULL,
	[soglie] [varchar](290) NULL,
	[note] [text] NULL,
 CONSTRAINT [pk_lottoDue_produzione] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

