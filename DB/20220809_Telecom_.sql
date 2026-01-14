select * from [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario = 'Gruber'

--insert into [dotazioni2022].[dbo].[SIM_BBT](
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
--'Gruber'
--,'M2M'
--,'numero'
--,'PIN'
--,'PUK'
--,'8939010002505977508 – L48C'
--,GETDATE()
--,'M2M con Pacchetto addizionale 100Gb/mese traffico dati, Offerta Commerciale Prot. n. 474246-P; Accordo Quadro Rubr. 323/2017/AADG del 16.11.2017;Atto Integrativo n. 23.'
--)

where beneficiario = 'Stelitano'
where beneficiario like '*rriq*'

select * from [dotazioni2022].[dbo].[SIM_BBT]
where beneficiario = 'Stelitano'

--update  [dotazioni2022].[dbo].[SIM_BBT]
--set 
-- note=' in data 2022.luglio.27 viene volturata al beneficiario.'
--where 
--	id=82
	