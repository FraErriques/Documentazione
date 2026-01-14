select TOP 1 * from mobileIt
select * from UtenzelottoDue
select TOP 1 * from lottoDue
select distinct numero from lottoDue
select numero, count(numero) as card from lottoDue
group by numero
order by card desc


--alter table UtenzelottoDue
--add  soglie varchar(200) NULL

--insert into UtenzelottoDue(
----id
--numero
--,attivazione
--,servizio
--,tipoServizio
--,Beneficiario
--,costoMensile
--,PIN
--,PUK
--)  values(
----id
--'3666130728'
--,GETDATE()
--,'Dati Top'
--,'M2M 20Gb/mese'
--,'Andrea Barbari'
--,'11 euro/mese'
--,'4920'
--,'26163642'
--)



 