
--insert into [dotazioni2022].[dbo].[cellPhone](
----id
--beneficiario
--,oggetto
--,matricola
--,note )values(
----id
--'Miraglia'
--,'Telefono cellulare marca SAMSUNG Galaxy A12s'
--,'S/N R58T11J0MYW'
--,'completo di istruzioni, batteria, auricolare, caricabatteria, cavo dati'
--)

select * from dotazioni2022.dbo.cellPhone
where beneficiario like '%Miraglia%'

select * from dotazioni2022.dbo.SIM_BBT
where beneficiario like '%Lomba%'

--Nano SIM Tel +39 3346799692 ICCID 8939010002505977490 – L48C PIN: 5127 - PUK: 83572600 – esclusivo uso per servizio, salvo attivazione uso promiscuo

update dotazioni2022.dbo.SIM_BBT
set
	numero='3346799692'
	,PIN='5127'  --PIN: 5127 - PUK: 83572600
	,PUK='83572600'
	,note='esclusivo uso per servizio, salvo attivazione uso promiscuo'
where id=116

insert into [dotazioni2022].[dbo].[PC] (
--id
beneficiario
,oggetto
,matricola
,note )values(
--id
'Miraglia'
,'Computer portatile Lenovo ThinkPad L580'
,'S/N: PF-1QCEAD 19/06'
,'completo di batteria, carica batteria e docking station della postazione dedicata'
)

-- query sinottica
select
	sim.beneficiario   beneficiario
	,sim.numero			numeroTel 
	,pc.oggetto			computer
	,cell.oggetto		cellulare
from 
	[dotazioni2022].[dbo].SIM_BBT		sim
	,[dotazioni2022].[dbo].cellPhone	cell
	,[dotazioni2022].[dbo].PC			pc
where
	sim.beneficiario=cell.beneficiario
	and cell.beneficiario=pc.beneficiario
	and cell.beneficiario='Erriques'
	and cell.beneficiario='Miraglia'
	

