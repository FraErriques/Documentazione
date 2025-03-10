select * from [dotazioni2022].[dbo].accessori
where beneficiario like '%Cappelletto%'

--update dotazioni2022.dbo.accessori
--set beneficiario= 'Cappelletto'
--where id in (58, 59)

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1 [id]
      ,[beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note]
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  where registrazione is not null
  order by registrazione desc
  --where registrazione is  null
  
select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like '%maz%'

select * from dotazioni2022.dbo.SIM_BBT
where numero='3665612640' 
  
  --insert into [dotazioni2022].[dbo].[accessori](
  ----id
  --[beneficiario]
  --,[oggetto]
  --,[matricola]
  --,[note]
  --  )values(
  --  --id
  --  'Cappelletto Simone'
  --  ,'fotocamera Olympus Stylus TG-6 Black'
  --  ,'BJ5B71865'
  --  ,'acquistata presso LaRotonda TN CIG ZC130D7AD2 data 2022.maggio.25.'
  --  )
  

  --insert into [dotazioni2022].[dbo].[accessori](
  ----id
  --[beneficiario]
  --,[oggetto]
  --,[matricola]
  --,[note]
  --  )values(
  --  --id
  --  'Cappelletto Simone'
  --  ,'coprilente protettivo Olympus LB-T01 Lens Barrier per fotocamera Olympus TG-6'
  --  ,'senza matricola ma pertinenza della fotocamera matricola BJ5B71865'
  --  ,'acquistata presso LaRotonda TN CIG ZC130D7AD2 data 2022.maggio.25.'
  --  )
    
  
--insert into [dotazioni2022].[dbo].[SIM_BBT](
----id
--      [beneficiario]
--      ,[servizio]
--      ,[numero]
--      ,[PIN]
--      ,[PUK]
--      ,[ICCID]
--      ,[registrazione]
--      ,[note]
--				)values(
-- --id				
--'Minniti',		     --[beneficiario]
--'Vocale',			 --,[servizio]
--'334.653.4493',      --,[numero]
--'9175',				  --,[PIN]
--'25329150',			  --,[PUK]
--'8939010002088015650-L44C',      --,[ICCID]
--NULL,      --,[registrazione]
--'cessata in data 2022.aprile.15'      --,[note]
--)

  
  
  
SELECT *
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  where 
  beneficiario like '%Minniti%'
	or beneficiario like '%Zingarelli%'
	or beneficiario like  '%Barovero%' 
	or beneficiario like   '%Mazzarello%'
	or beneficiario like   '%Salerno%'     
order by beneficiario asc

SELECT *
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  where 
  beneficiario in
	(	'Minniti',
		'Zingarelli',
		'Barovero', -- NB. not found cause in() is a sharp operator; it does not support'%'
		'Mazzarello',
		'Salerno'    ) 
order by beneficiario asc


SELECT *
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  where 
  numero in 
	( '3346099380',
	  '3666289177',
	  '3316915909',
	  '3346291984'  )
order by beneficiario asc

--update  [dotazioni2022].[dbo].[SIM_BBT]
--set note='cessata in data 2022.aprile.13'
--where id in (8,56,72,93)

  
 -------------  '%Rughetti%'  --------- fine maggio2022
 '%Zingarelli%'    
 '%Barovero%'    
  '%Mazzarello%'    
 '%Salerno%'    