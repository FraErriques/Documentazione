/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 6[id]
      ,[beneficiario]
      ,[oggetto]
      ,[matricola]
      ,[note]
  FROM [dotazioni2021].[dbo].[PC]
  
  select * from dotazioni2021.dbo.SIM_BBT where id=112
  select * from dotazioni2022.dbo.SIM_BBT where id=112
  
  select * from dotazioni2022.dbo.SIM_BBT where beneficiario like '%papa%'
  
--insert into dotazioni2022.dbo.SIM_BBT(  
----  id
--	beneficiario,
--	servizio,
--	numero,
--	PIN,
--	PUK,
--	ICCID,
--	registrazione,
--	note
--)values(	
----id 
--'Cuel'
--,'Vocale'
--,'numero'
--,'PIN'
--,'PUK'
--,'8939010002505977474-L48C'
--,'2022-02-08'
--,'scheda SIM Vocale'
--)

--update dotazioni2022.dbo.SIM_BBT
--set
--numero = '3346225164'
--where id=112

----  id
--	beneficiario,
--	servizio,
--	numero,
--	PIN,
--	PUK,
--	ICCID,
--	registrazione,
--	note
--)values(	
----id 
--'Papa'
--,'Vocale'
--,'numero'
--,'PIN'
--,'PUK'
--,'8939010002505979058-L48C'
--,'2022-01-31'
--,'scheda SIM Vocale'
--)
