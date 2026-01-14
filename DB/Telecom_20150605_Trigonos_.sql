select top 2 * from mobileIt

select   * from mobileIt
where
	servizio like '%trigonos%'
	or tipoServizio  like '%trigonos%'
	or Beneficiario  like '%trigonos%'
	
	

select
 distinct Beneficiario
 from mobileIt
where
	servizio like '%trigonos%'
	or tipoServizio  like '%trigonos%'
	or Beneficiario  like '%trigonos%'
		