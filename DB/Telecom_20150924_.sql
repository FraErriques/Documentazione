select COUNT(*) from Telecom.dbo.UtenzelottoDue
select COUNT(*) from Telecom.dbo.UtenzeDettaglio
select COUNT(*) from Telecom.dbo.UtenzeIndividuali

select * from Telecom.dbo.UtenzeDettaglio
where numero='3351960460'

--update Telecom.dbo.UtenzeDettaglio
--set beneficiario='Ferrari Alessandro' where numero='3351960460'

select * from Telecom.dbo.UtenzeDettaglio
where numero='3669010498'

--update Telecom.dbo.UtenzeDettaglio
--set beneficiario='M2M Erriques' where numero='3669010498'

select * from UtenzeDettaglio where beneficiario like '%M2M%'

--update Telecom.dbo.UtenzeDettaglio
--set beneficiario='Terzariol' where numero='3386431235'

select * from Telecom.dbo.UtenzeDettaglio where numero='3386431235'

select * from Telecom.dbo.UtenzeDettaglio where numero='3357459585'

--update Telecom.dbo.UtenzeDettaglio
--set beneficiario='Zanforlin' where numero='3357459585'

insert '3371413625'  -- M2M Pedrazza

--insert into UtenzeDettaglio(
--numero,
--beneficiario,
--servizio,
--tipoServizio
--) values(
--'3371413625'
--,'M2M Pedrazza'
--,'SIM CARD M2M TOP SCATTO ZERO'
--,'ABBONAMENTO'
--)

select * from Telecom.dbo.UtenzeDettaglio
order by beneficiario asc

select * from Telecom.dbo.UtenzeDettaglio where beneficiario like '%trigonos%'

 select beneficiario from UtenzeDettaglio where numero='3316134499' 

select * from UtenzeDettaglio where beneficiario like '%M2M%'
select * from UtenzeDettaglio where beneficiario not like '%M2M%'
select * from Telecom.dbo.UtenzelottoDue
select * from Telecom.dbo.UtenzeIndividuali
select * from Telecom.dbo.UtenzelottoDue where Beneficiario like '%barbari%'
select * from Telecom.dbo.UtenzelottoDue order by Beneficiario asc

--update Telecom.dbo.UtenzelottoDue
--set Beneficiario = 'M2M Barbari'
-- where id=1

--insert into UtenzelottoDue(
----id
--numero,
--attivazione,
--servizio,
--tipoServizio,
--Beneficiario,
--costoMensile,
--PIN,
--PUK,
--soglie
--) values(
----id
--'3371413625'
--,GETDATE()
--,'SIM CARD M2M TOP SCATTO ZERO'
--,'ABBONAMENTO'
--,'M2M Pedrazza'
--,'11 euro/mese'
--,'9401'
--,'96433205'
--,NULL
--)
