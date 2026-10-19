
-- reportistica-------------------------	
exec reportBeneficiari
exec reportBlackBerry
exec reportCostiNonSpecificati
exec reportAggregati
exec reportPerCosto
exec reportPerQuantita


----------------campi   Telecom.dbo.mobile.It -----------------------------------------
numero
attivazione
servizio
tipoServizio
Beneficiario
costoMensile



select COUNT(*) from Telecom.dbo.mobileIt
select * from Telecom.dbo.mobileIt
select TOP 2 * from Telecom.dbo.mobileIt
select COUNT(*) from Telecom.dbo.mobileIt where  costoMensile is NULL
select * from Telecom.dbo.mobileIt where Beneficiario is NULL
select COUNT(*) from Telecom.dbo.mobileIt where Beneficiario like '%M2M%'
select * from Telecom.dbo.mobileIt where Beneficiario like '%M2M%'

create procedure reportCostiNonSpecificati
as
select servizio, tipoServizio, COUNT(servizio) as quantita
from Telecom.dbo.mobileIt where  costoMensile is NULL
group by servizio, tipoServizio 
GO

exec reportCostiNonSpecificati

--create procedure reportBeneficiari
--as
--select Beneficiario, COUNT(id) as pacchetto_servizi
--from Telecom.dbo.mobileIt
--	group by Beneficiario
--	order by pacchetto_servizi desc
--GO	

exec Telecom.dbo.reportBeneficiari

--create procedure reportAggregati
--as
--select servizio, tipoServizio, COUNT(servizio) as quantita, costoMensile
-- from Telecom.dbo.mobileIt
--	group by servizio, tipoServizio, costoMensile
--GO

exec Telecom.dbo.reportAggregati

create procedure reportPerQuantita
as	
select servizio, tipoServizio, COUNT(servizio) as quantita, costoMensile
 from Telecom.dbo.mobileIt
	group by servizio, tipoServizio, costoMensile
	order by quantita desc
GO	

create procedure reportPerCosto
as	
select servizio, tipoServizio, COUNT(servizio) as quantita, costoMensile
 from Telecom.dbo.mobileIt
	group by servizio, tipoServizio, costoMensile
	order by costoMensile desc
GO
	
exec reportAggregati	
exec reportBeneficiari
exec reportBlackBerry
exec reportCostiNonSpecificati
exec reportPerCosto
exec reportPerQuantita

create procedure reportBlackberry
as
select beneficiario from mobileIT where servizio like '%blackberry%'
order by beneficiario asc
GO

	


--Servizio	Costo Mensile
---------------------------------------------------------------
--Top Mobile 20	 20€
--Top Mobile  5	 11€
--ON NET SCATTO ZERO	 0€
--NO SOGLIA CUT OFF ROAMING	 0€
--NO SOGLIA DATI NAZIONALE STS	 0€
--BLACKBERRY TOP MAIL	 25€
--FAST WWV LINEA DATI	 0€
 

update mobileIt
	set costoMensile = 0
where servizio like '%INTERNET BASE SENZA CONFINI_ABB%'

select COUNT(*) from Telecom.dbo.mobileIt
where servizio like '%INTERNET BASE SENZA CONFINI_ABB%'

	
--truncate table Telecom.dbo.mobileIt
--
--exec Telecom.dbo.usp_mobileIt_INSERT
----	--[id],		
--'346.22.11.11.11', --	@numero,
--'12.08.2014',--	@attivazione,
--'test_servizio',--	@servizio,
--'test_tipoServizio',--	@tipoServizio,
--'test_Beneficiario',--	@Beneficiario,
--'test_costoMensile'   --	@costoMensile

