/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [id]
      ,[Vettura]
      ,[data]
      ,[km]
      ,[intervento]
      ,[litri]
      ,[euro]
      ,[gasolio_euro/litro]
  FROM [dotazioni2021].[dbo].[genericaAuto]

  select MAX([gasolio_euro/litro]) from [dotazioni2021].[dbo].[genericaAuto]
  select * from dotazioni2021.dbo.genericaAuto where [gasolio_euro/litro]>1.7
  order by euro desc
  --order by [gasolio_euro/litro] desc
  --order by data desc
  order by litri desc
