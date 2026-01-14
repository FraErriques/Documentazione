select * from dotazioni2022.dbo.SIM_BBT
where 
numero in (  
'3351960510'    -- M2M  cantiere
,'3356538442'
,'3356595026'
,'3357431334'
,'3371413625'
)

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

--numeri cessati, non piu' presenti a db
select * from dotazioni2022.dbo.SIM_BBT
where 
numero in (  
'3346524321'
,'3346256187' )

select * from dotazioni2022.dbo.SIM_BBT
