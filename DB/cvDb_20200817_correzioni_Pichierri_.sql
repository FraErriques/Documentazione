/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [cv_db].[dbo].settoreCandidatura_LOOKUP
  
 update  [cv_db].[dbo].settoreCandidatura_LOOKUP
 set nomeSettore =  'BIM ( Building Information Modeling Database )'
 where id=29
 