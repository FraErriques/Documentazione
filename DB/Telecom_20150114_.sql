select   * from Telecom.dbo.mobileIt
where Beneficiario='Zurlo'

/****** Object:  StoredProcedure [dbo].[usp_reportPerCosto]    Script Date: 01/14/2015 10:21:09 ******/

-- procedure [dbo].[usp_reportPerCosto]
	
select servizio, tipoServizio, COUNT(servizio) as quantita, costoMensile
 from Telecom.dbo.mobileIt
	group by servizio, tipoServizio, costoMensile
	order by costoMensile desc


	
select
servizio as nome_servizio
,tipoServizio as oggetto_servizio
,costoMensile as costo_mensile
	from Telecom.dbo.mobileIt
	group by servizio, tipoServizio, costoMensile
	order by costoMensile desc
