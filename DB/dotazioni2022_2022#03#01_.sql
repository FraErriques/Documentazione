/****** Script for SelectTopNRows command from SSMS  ******/

/* NB.  path file dotazioni
\\ITBZOS1001\Data\Human_resources\Servizi Generali\1_Attività\Telecomunicazioni\Mobile IT\dotazioni_collaboratori
ovvero
\\ITBZOS1001\Data\Human_resources\Servizi Generali\
<-..\1_Attività\Telecomunicazioni\Mobile IT\dotazioni_collaboratori
*/
SELECT TOP 3  [id]
      ,[beneficiario]
      ,[servizio]
      ,[numero]
      ,[PIN]
      ,[PUK]
      ,[ICCID]
      ,[registrazione]
      ,[note]
  FROM [dotazioni2022].[dbo].[SIM_BBT]
  
  select * from dotazioni2022.dbo.SIM_BBT
  where numero='3665612640'    --- beneficiario	servizio Cardola	M2M
  
  select * from dotazioni2022.dbo.SIM_BBT
  where numero='3669010498'    --- beneficiario	servizio  Erriques M2M
   
   select count(*) from dotazioni2022.dbo.generica_autovettura
   select * from dotazioni2022.dbo.generica_autovettura

   select count(*) from dotazioni2022.dbo.generica_autovettura
   where targa_autovettura  not like '%GE144ZJ%'
   select * from dotazioni2022.dbo.generica_autovettura
   where targa_autovettura  not like '%GE144ZJ%'
   
   select * from dotazioni2022.dbo.generica_autovettura
   where accessori_descriz is NULL 
      
   
EXEC [dbo].[usp_genericaautovettura_INSERT]  
-- id
'test_Null_field' ,
 '1970/01/31' ,
  0.0 ,
   'ENI Ponte Roma BZ' ,
    46.7 ,
     1.514 ,
      70.7 ,
       NULL ,
        0.0 ,
         '_placeholder_' ,
          0.0 , '_placeholder_' ,
           '1970/01/31' ,
            '1970/01/31' ,
             0.0 ,
              '_placeholder_' ,
               0.0 ,
                '_placeholder_' ,
                 '_placeholder_' ,
                  'gasolio' ,
                   70.7 ,
                    0.0      