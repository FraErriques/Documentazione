/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [id]
      ,[beneficiario]
      ,[oggetto]
      ,[matricola]
      ,[note]
  FROM [dotazioni2021].[dbo].[accessori]
  where beneficiario like '%z%'
  