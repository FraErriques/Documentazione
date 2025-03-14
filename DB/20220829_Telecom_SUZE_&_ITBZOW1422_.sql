
select count(*) from dotazioni2022.dbo.cellPhone
select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like 'De Gregorio'

select * from dotazioni2022.dbo.SIM_BBT
where 
numero in (  
'3351960510'    -- M2M  cantiere
,'3356538442'
,'3356595026'
,'3357431334'
,'3371413625'
)

--numeri cessati, non piu' presenti a db
select * from dotazioni2022.dbo.SIM_BBT
where 
numero in (  
'3346524321'
,'3346256187' )



-- NB. multi-row-insert syntax(up to 1000). Bulk is another syntax.
insert into [dotazioni2022].[dbo].[SIM_BBT](
--	  [id]
      [beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note] ) values
('cantiere','M2M cantiere','3351960510',NULL,NULL,NULL,NULL,'M2M cantiere')
,('cantiere','M2M cantiere','3356538442',NULL,NULL,NULL,NULL,'M2M cantiere')
,('cantiere','M2M cantiere','3356595026',NULL,NULL,NULL,NULL,'M2M cantiere')
,('cantiere','M2M cantiere','3357431334',NULL,NULL,NULL,NULL,'M2M cantiere')
,('cantiere','M2M cantiere','3371413625',NULL,NULL,NULL,NULL,'M2M cantiere')

'3351960510'    -- M2M  cantiere
,'3356538442'
,'3356595026'
,'3357431334'
,'3371413625'


select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like '%Erriques%' 
 
select * from dotazioni2022.dbo.SIM_BBT
where 
numero in (  
'3387145116'
,'3357995188'
,'3356531530'
,'3356666404'
,'3346790789'
,'3346524321'
,'3668344901'
,'3665668061'
,'3386014532'
,'3386038574'
,'3356364106'
,'3371015914'
,'3346256187'
,'3346610161'
,'3204783001'
)

select * from dotazioni2022.dbo.SIM_BBT
order by beneficiario, servizio

where servizio like '%M2M%'

select * from dotazioni2022.dbo.SIM_BBT
where
  (	
		beneficiario like 'Giannattasio'
		or beneficiario like 'Agosti'  
		or beneficiario like 'Buttazzoni'  
  )

insert

select * from dotazioni2022.dbo.SIM_BBT
where numero='3371094065'

select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like 'Cardola'
select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like 'De Gregorio'
where beneficiario like 'Francesconi'

update  dotazioni2022.dbo.SIM_BBT
set
	note ='cessata in data 2022.ottobre.10'
where id=21


	
where beneficiario like 'Fedele di Catrano'

migrata in BBT-SE da Italferr. Non noti {PIN, PUK, ICCID}.

 insert into [dotazioni2022].[dbo].[SIM_BBT](
--	  [id]
      [beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note]
)values(
--	  [id]
      'Buttazzoni'
      ,'Vocale' --[servizio]
      ,'3204783001' --[numero]
      ,'2923' --[PIN]
      ,'74737864' --[PUK]
      ,'ICCID 8939010002033758867-R56C' --[ICCID]
      ,NULL --[registrazione]
      ,'Vocale Open Standard' --[note]
)
GO

Agosti SIM  Tel +39 3357995188 ICCID 8939010002088015528-L44C PIN: 9043 PUK: 49408750
Buttazzoni Tel +39 3204783001  ICCID 8939010002033758867-R56C PIN: 2923 PUK: 74737864 

insert into [dotazioni2022].[dbo].[PC](
 --id
beneficiario
,oggetto
,matricola
,note
)values(
--id
'Pugliese'
,'Computer portatile Lenovo Thinkpad L15 G1'
,'S/N: PF30AMAQ'
,'completo di batteria, carica batteria e docking station della postazione dedicata'
)
GO



insert into [dotazioni2022].[dbo].cellPhone(
 --id
beneficiario
,oggetto
,matricola
,note
)values(
--id
'Pugliese'
,'Telefono cellulare marca REDMI NOTE 10'
,'S/N 33253/S2PU09466'
,'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati.'
)
GO


select * from dotazioni2022.dbo.pc
where beneficiario like 'Pugliese'
select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like 'Pugliese'
select * from dotazioni2022.dbo.cellPhone
where beneficiario like 'Pugliese'

select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like 'Gruber'

--delete
--from [dotazioni2022].[dbo].cellPhone
--WHERE id=123
--GO

select top 2 * from dotazioni2022.dbo.PC

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	  [id]
      ,[beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note]
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  where
   [beneficiario]='Zingarelli'
   or [beneficiario]='De Gregorio'
   or [beneficiario]='Buttolo'
   or [beneficiario]='Rughetti'
  
  where id=12
  
  where numero='3316342823'
  where numero='3371228960'
  --where id=90
  --order by beneficiario

--update [dotazioni2022].[dbo].[SIM_BBT]
--set
--	note = 'utenza cessata'
--where id=12	
  
select * from [dotazioni2022].[dbo].[SIM_BBT]
where
beneficiario like 'Catapano'
note is not NULL
note like 'cessata *'

note is NULL
note like 'utenza cessata'
 -- note like '*cess*'  NB. no usage of '*' with "text" fields; only with "varchar"
 
-- update [dotazioni2022].[dbo].[SIM_BBT]
--set
--	note = 'utenza cessata'
--where id=12	
  
--update [dotazioni2022].[dbo].[SIM_BBT]
--set
--	PIN='6064'
--	,PUK='53514854'
--	,ICCID='ICCID 8939010002505977516-L48C'
--	,registrazione=GETDATE()
--	,note='per cambio carta, in data riportata nel campo registrazione, in sostituzione della SIM con medesimo numero di telefono.'
--where id=83
	
--PIN: 6064
--PUK: 53514854
--ICCID 8939010002505977516-L48C 
--per cambio carta, in sostituzione della SIM con medesimo numero di telefono.	
	
select * from [dotazioni2022].[dbo].[SIM_BBT]
where
 beneficiario = 'Terzariol'
 --
select * from [dotazioni2022].[dbo].[SIM_BBT]
where
 beneficiario = 'Catapano'  
 
select * from [dotazioni2022].[dbo].PC
where
 beneficiario = 'Catapano' 
 --update [dotazioni2022].[dbo].PC
 --set
 --note='completo di batteria, carica batteria e docking station della postazione dedicata.'
 --where id=58
 --
select * from [dotazioni2022].[dbo].cellPhone
where
 beneficiario = 'Terzariol'  
--update [dotazioni2022].[dbo].[cellPhone]
--set
-- matricola = 'IMEI _865639041605683_'
-- where id=56
 
 
 note like '*utenz*'
-- note = 'utenza cessata'
 
where id=12	

SELECT 
	  [id]
      ,[beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note]
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  where
   [beneficiario]='Zingarelli'
   or [beneficiario]='De Gregorio'
   or [beneficiario]='Buttolo'
   or [beneficiario]='Rughetti'
-----
 
--update [dotazioni2022].[dbo].[SIM_BBT]
--set
--	PIN='6064'
--	,PUK='53514854'
--	,ICCID='ICCID 8939010002505977516-L48C'
--	,registrazione=GETDATE()
--	,note='per cambio carta, in data riportata nel campo registrazione, in sostituzione della SIM con medesimo numero di telefono.'
--where id=83
	
--PIN: 6064
--PUK: 53514854
--ICCID 8939010002505977516-L48C 
--per cambio carta, in sostituzione della SIM con medesimo numero di telefono.	
	
select * from [dotazioni2022].[dbo].[SIM_BBT]
where
 beneficiario = 'Terzariol'
 --
select * from [dotazioni2022].[dbo].PC
where
 beneficiario = 'Terzariol' 
 --update [dotazioni2022].[dbo].PC
 --set
 --note='completo di batteria, carica batteria e docking station della postazione dedicata.'
 --where id=58
 --
select * from [dotazioni2022].[dbo].cellPhone
where
 beneficiario = 'Terzariol'  
--update [dotazioni2022].[dbo].[cellPhone]
--set
-- matricola = 'IMEI _865639041605683_'
-- where id=56
 
select * from [dotazioni2022].[dbo].[SIM_BBT]
where
 [note] like '*e*'   
 
 select * from 
	[dotazioni2022].[dbo].[SIM_BBT]		sim
	,[dotazioni2022].[dbo].[PC]			pc
	,[dotazioni2022].[dbo].[cellPhone]	cell
where
 sim.beneficiario = 'Terzariol'  
 and pc.beneficiario = 'Terzariol'  
 and cell.beneficiario = 'Terzariol'  
 	
select * from [dotazioni2022].[dbo].[SIM_BBT]
where
--note like 'cess*'
note like 'utenza cessata'
 -- note like '*cess*'  NB. no usage of '*' with "text" fields; only with "varchar"
  	  
  
Telefono cellulare marca Appie lphone 13 128GB S/N GPQQOGL7G5 IMEI/MEID 352355509940914, completo di istruzioni e cavo dati
SIM M2M Tel +39 3371591657 ICCID 8939010002505977508- L48C PIN: 4251 - PUK: 92773282
accessori Gimbal Zhiyun Smooth-X S/N 70 510E04A010823, completo di istruzioni e carica batterie

select * from accessori where beneficiario='Gruber'  
--insert into [dotazioni2022].[dbo].[accessori](
----id
--beneficiario
--,oggetto
--,matricola
--,note
--)values(
----id
--'Gruber'
--,'Gimbal Zhiyun Smooth-X'
--,'S/N 70 510E04A010823'
--,'completo di istruzioni e carica batterie')
--GO

select * from  [dotazioni2022].[dbo].[SIM_BBT]
 where 
	beneficiario='Catapano'  
	or beneficiario='Cristalli'  
	or beneficiario='Toso'  

insert into  [dotazioni2022].[dbo].[SIM_BBT](
--id
beneficiario
,servizio
,numero
,PIN
,PUK
,ICCID
,registrazione
,note
)values(
--id
'Catapano' 
,'Vocale'
,'3356531530'
,'PIN'
,'PUK'
,'ICCID 8939010002600082956 – L48D'
,GETDATE()
,'Catapano Vocale'
)
GO

--insert into  [dotazioni2022].[dbo].[SIM_BBT](
----id
--beneficiario
--,servizio
--,numero
--,PIN
--,PUK
--,ICCID
--,registrazione
--,note
--)values(
----id
--'Cristalli' 
--,'Vocale'
--,'3346610161'
--,'2981'
--,'46551519'
--,'ICCID 8939010002600083095-L48D'
--,GETDATE()
--,'Cristalli vocale'
--)
--GO

--insert into [dotazioni2022].[dbo].[cellPhone]
--( --id
--beneficiario
--,oggetto
--,matricola
--,note
--)values(
----id
--'Cristalli'
--,'Telefono cellulare marca REDMI NOTE 10 '
--,'S/N 33253/S2PU08091'
--,'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati.'
--)
--GO


select * from [dotazioni2022].[dbo].[cellPhone]
where beneficiario = 'Cristalli'
select * from [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario = 'Cristalli'


Nano SIM Tel +39 3346610161 ICCID 8939010002600083095-L48D PIN: 2981 - PUK: 46551519

select * from   [dotazioni2022].[dbo].[cellPhone]
where beneficiario='Bonazza'
select * from   [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario='Bonazza'
select * from   [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario='Ferrario'

--update   [dotazioni2022].[dbo].[SIM_BBT]
--set
--PIN='6979'
--,PUK='32843822'
--,ICCID='ICCID 8939010002600082873-L48D'
--where id=30

--update   [dotazioni2022].[dbo].[SIM_BBT]
--set
--registrazione=getdate()
--,note='cambio carta; stesso telefono; variazione PIN, PUK, ICCID.'
--where id=30


select * from   [dotazioni2022].[dbo].[accessori]
where beneficiario='Gruber'

--insert into [dotazioni2022].[dbo].[cellPhone]
--( --id
--beneficiario
--,oggetto
--,matricola
--,note
--)values(
----id
--'Gruber'
--,'Telefono cellulare marca Appie lphone 13 128GB'
--,'S/N GPQQOGL7G5 IMEI/MEID 352355509940914'
--,'completo di istruzioni e cavo dati'
--)
--GO




select * from   [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario='Gruber'
where numero ='3371591657'

--update   [dotazioni2022].[dbo].[SIM_BBT]
--set
--PIN='4251'
--,PUK='92773282'
--where id=117

select * from   [dotazioni2022].[dbo].[cellPhone]
where beneficiario='Gruber'
select * from   [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario='Gruber'
select * from   [dotazioni2022].[dbo].[accessori]
where beneficiario='Gruber'

--insert into [dotazioni2022].[dbo].[cellPhone]
--( --id
--beneficiario
--,oggetto
--,matricola
--,note
--)values(
----id
--'Gruber'
--,'Telefono cellulare marca Appie lphone 13 128GB'
--,'S/N GPQQOGL7G5 IMEI/MEID 352355509940914'
--,'completo di istruzioni e cavo dati'
--)
--GO

--update   [dotazioni2022].[dbo].[SIM_BBT]
--set
--PIN='4251'
--,PUK='92773282'
--where id=117

--insert into [dotazioni2022].[dbo].[accessori](
----id
--beneficiario
--,oggetto
--,matricola
--,note
--)values(
----id
--'Gruber'
--,'Gimbal Zhiyun Smooth-X'
--,'S/N 70 510E04A010823'
--,'completo di istruzioni e carica batterie')
--GO

--insert into  [dotazioni2022].[dbo].[SIM_BBT](
----id
--beneficiario
--,servizio
--,numero
--,PIN
--,PUK
--,ICCID
--,registrazione
--,note
--)values(
----id
--'Bonazza' 
--,'Vocale'
--,'3356666404'
--,'2252'
--,'15760557'
--,'ICCID 8939010002600083269-L48D'
--,GETDATE()
--,'Bonazza vocale'
--)
--GO

select * from   [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario='Bonazza'
select * from   [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario='Ferrario'

--update   [dotazioni2022].[dbo].[SIM_BBT]
--set
--PIN='6979'
--,PUK='32843822'
--,ICCID='ICCID 8939010002600082873-L48D'
--,registrazione=getdate()
--,note='cambio carta; stesso telefono; variazione PIN, PUK, ICCID.'
--where id=30

--insert into  [dotazioni2022].[dbo].[SIM_BBT](
----id
--beneficiario
--,servizio
--,numero
--,PIN
--,PUK
--,ICCID
--,registrazione
--,note
--)values(
----id
--'Toso' 
--,'Vocale'
--,'3356364106'
--,NULL
--,NULL
--,'ICCID 8939010002600083277-L48D'
--,GETDATE()
--,'Toso vocale.'
--)
--GO

select * from [dotazioni2022].[dbo].[SIM_BBT]
order by servizio, beneficiario
where beneficiario like 'Toso'

