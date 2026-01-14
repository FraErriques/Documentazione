--USE [Telecom]
--GO
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[multiop](
--	[matricola] [varchar](30) NOT NULL,
--	[attivazione] [datetime] NOT NULL,
--	[Beneficiario] [varchar](150) NOT NULL,
--	[someQuantity] [float] NULL,
--	[note] [text] NULL
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--SET ANSI_PADDING OFF
--GO

select * from [Telecom].[dbo].[multiop]

insert into [Telecom].[dbo].[multiop](
	[matricola]       -- [varchar](30) NOT NULL,
	,[attivazione]    -- [datetime] NOT NULL,
	,[Beneficiario]   -- [varchar](150) NOT NULL,
	,[someQuantity]   -- [float] NULL,
	,[note]			  -- [text] NULL
 ) values
('matr_1',GETDATE(),'beneficiario_1', 1.0, 'riga_1')
,('matr_2',GETDATE(),'beneficiario_2', 1.0, 'riga_2')
,('matr_3',GETDATE(),'beneficiario_3', 1.0, 'riga_3')
,('matr_4',GETDATE(),'beneficiario_4', 1.0, 'riga_4')
GO

insert into [Telecom].[dbo].[multiop](
	[matricola]       -- [varchar](30) NOT NULL,
	,[attivazione]    -- [datetime] NOT NULL,
	,[Beneficiario]   -- [varchar](150) NOT NULL,
	,[someQuantity]   -- [float] NULL,
	,[note]			  -- [text] NULL
 ) values
('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
,('matr_volutamenteRipetuta',GETDATE(),'beneficiario_volutamenteRipetuta', 1.0, 'riga_volutamenteRipetuta')
GO
