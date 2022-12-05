/****** Script for SelectTopNRows command from SSMS  ******/

select  * from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
where 
sim.beneficiario like '%Miraglia%'

select  * from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
where 
numero ='3357032614'

select TOP 2 * from [dotazioni2022].[dbo].[SIM_BBT]

--insert into [dotazioni2022].[dbo].SIM_BBT(
----id
--beneficiario
--,servizio
--,numero
--,PIN
--,PUK
--,ICCID
--,registrazione
--,note  ) values(
----id
--'Miraglia'
--,'Vocale'
--,NULL  --num
--,NULL  --PIN
--,NULL  --puk
--,'8939010002505977490-L48C'
--,GETDATE()
--,'richiesta di attivazione, data 30.giugno.2022.'
--)


/* NB.  path file dotazioni
\\ITBZOS1001\Data\Human_resources\Servizi Generali\1_Attività\Telecomunicazioni\Mobile IT\dotazioni_collaboratori
ovvero
\\ITBZOS1001\Data\Human_resources\Servizi Generali\
<-..\1_Attività\Telecomunicazioni\Mobile IT\dotazioni_collaboratori
*/

Nano SIM Tel +39 3665762206 
ICCID 8939010002505977482-L48C 
PIN: 8345 
PUK: 99624219 
esclusivo uso per servizio, salvo attivazione uso promiscuo

select sim.beneficiario, sim.numero, cell.oggetto from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
,[dotazioni2022].[dbo].cellPhone cell
where 
sim.beneficiario='Masciullo'
and cell.beneficiario='Masciullo'

--update [dotazioni2022].[dbo].[SIM_BBT]
--set ICCID= '8939010001980907956-L56C'
--where id=14
select GETDATE()


'2018-06-15'
'2016-10-05'
--update [dotazioni2022].[dbo].[SIM_BBT]
--set 
--registrazione='2016-10-05'
--,note='scheda dati Machine-To-Machine.'
--where id=14
--update [dotazioni2022].dbo.accessori
--set note='completa di cavi e caricabatteria.'
--where id=6


select  * from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
where 
sim.beneficiario like '%Rughetti%'

Cessata in data 10-Maggio-2022. 
Pacchetto addizionale 100Gb/mese traffico dati.
Offerta Commerciale Prot. n. 474246-P; Accordo Quadro Rubr. 323/2017/AADG del 16.11.2017;Atto Integrativo n. 23.

select  sim.beneficiario from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
where 
sim.numero = '3669225236'

select  sim.id, sim.beneficiario from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
where 
sim.id in (1,2,3,4,5)

select  sim.id, sim.beneficiario from 
[dotazioni2022].[dbo].[SIM_BBT]  sim
where 
sim.numero in ('3204783012','3204783005','3387807399','3666130728','3669225236')


--update [dotazioni2022].[dbo].[SIM_BBT]  
--set note='Cessata in data 10-Maggio-2022. Pacchetto addizionale 100Gb/mese traffico dati, Offerta Commerciale Prot. n. 474246-P; Accordo Quadro Rubr. 323/2017/AADG del 16.11.2017;Atto Integrativo n. 23.'
--where id=71

select  * from 
[dotazioni2022].[dbo].accessori acc
where 
acc.beneficiario='Cappelletto'

select  * from 
[dotazioni2022].[dbo].PC pc
where 
pc.beneficiario='Cappelletto'

select  * from 
[dotazioni2022].[dbo].cellPhone cel
where 
cel.beneficiario='Cappelletto'

-- visione sinottica dotazioni collaboratore ----
select
	cel.beneficiario beneficiario
	,cel.matricola cellPhone_matricola	
	,pc.matricola  pc_matricola
	,sim.ICCID     sim_matricola
   from 
	[dotazioni2022].[dbo].cellPhone cel
	,[dotazioni2022].[dbo].PC pc
	,[dotazioni2022].[dbo].SIM_BBT sim
where 
cel.beneficiario='Masciullo'
and pc.beneficiario='Masciullo'
and sim.beneficiario='Masciullo'
-- visione sinottica dotazioni collaboratore ----

-- notare in questo caso, il prodotto cartesiano, dovuto alle due SIM; le due righe risultano "distinct" anche se cellulare e pc sono i medesimi.
DECLARE	@curColleague varchar(150)
select @curColleague='Cappelletto'
--print @curColleague
-- visione sinottica dotazioni collaboratore ----
select 
	cel.beneficiario beneficiario
	,cel.matricola cellPhone_matricola	
	,pc.matricola  pc_matricola
	,sim.ICCID     sim_matricola
   from 
	[dotazioni2022].[dbo].cellPhone cel
	,[dotazioni2022].[dbo].PC pc
	,[dotazioni2022].[dbo].SIM_BBT sim
where 
cel.beneficiario=@curColleague
and pc.beneficiario=@curColleague
and sim.beneficiario=@curColleague
-- visione sinottica dotazioni collaboratore ----


--insert into [dotazioni2022].[dbo].[SIM_BBT](
----id
--beneficiario,
--servizio,
--numero,
--PIN,
--PUK,
--ICCID,
--registrazione,
--note
--)values(
----id
--'Masciullo' --beneficiario
--,'Vocale' --servizio
--,'3665762206' --numero
--,'8345' --PIN,
--,'99624219' --PUK,
--,'8939010002505977482-L48C' --ICCID,
--,'2022-04-04' --registrazione,
--,'esclusivo uso per servizio, salvo attivazione uso promiscuo.' --note
--)


insert into [dotazioni2022].[dbo].[SIM_BBT](
--id
beneficiario,
servizio,
numero,
PIN,
PUK,
ICCID,
registrazione,
note
)values(
--id
'Cuel' --beneficiario
,'Vocale' --servizio
,'3346225164' --numero
,'5122' --PIN,
,'02553718' --PUK,
,'8939010002114762036-R44C' --ICCID,
,'2022-03-01' --registrazione,
,'esclusivo uso per servizio, salvo attivazione uso promiscuo.' --note
)

select * from dotazioni2022.dbo.SIM_BBT
where numero='3346225164'

update  [dotazioni2022].[dbo].[SIM_BBT]
set
PIN='5122' --PIN
,PUK='02553718' --PUK
,ICCID='8939010002114762036-R44C' --ICCID
,registrazione='2022-03-01' --registrazione
,note='esclusivo uso per servizio, salvo attivazione uso promiscuo.' --note
where id=112


insert into [dotazioni2022].[dbo].PC(
--id
beneficiario,
oggetto,
matricola,
note
)values(
--id
'Cuel' --beneficiario,
,'Computer portatile Lenovo Thinkpad L15 G1' -- 'oggetto' 
,'S/N: PF30TG40' -- 'matricola'  -- 
,'completo di batteria, carica batteria e docking station della postazione dedicata'--'note' -- 
)

insert into [dotazioni2022].[dbo].cellPhone(
--id
beneficiario,
oggetto,
matricola,
note
)values(
--id
'Cuel' --beneficiario,
,'Telefono cellulare marca Samsung Galaxy A12' -- 'oggetto' 
,'S/N R58T11J0W9P' -- 'matricola'  -- 
,'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati'--'note' -- 
)

 


select GETDATE()
select   * from [dotazioni2022].[dbo].[SIM_BBT]
select top 3  * from [dotazioni2022].[dbo].PC
where beneficiario like '%cuel%'
order by id desc
select top 3  * from [dotazioni2022].[dbo].accessori
where beneficiario like '%cuel%'
select top 3  * from [dotazioni2022].[dbo].cellPhone
where beneficiario like '%cuel%'


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