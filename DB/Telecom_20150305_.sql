select top 2 * from mobileIt

select  * from mobileIt
where servizio like '%mobile 5%'

select  * from mobileIt
where  numero = '3316105264'

select  * from mobileIt
where Beneficiario like '%Erriques%'

select  * from mobileIt
where Beneficiario like '%Ferrario%'

select  * from mobileIt
where id between 178 and 181

delete from mobileIt
where id between 178 and 181

insert into mobileIt(
-- id
  numero
, attivazione
, servizio
, tipoServizio
, Beneficiario
,costoMensile
) values(
--id
'3669010498'
,'2015-01-01'
,'Top Mobile 20'
,'SERVIZIO SUPPLEMENTARE : 20 Gb di traffico dati mensile'
,'Erriques'
,'20'
)

insert into mobileIt(
-- id
  numero
, attivazione
, servizio
, tipoServizio
, Beneficiario
,costoMensile
) values(
--id
'3371261152'
,'2015-03-05'
,'Top Mobile 5'
,'SERVIZIO SUPPLEMENTARE : 5 Gb di traffico dati mensile'
,'Ferrario'
,'11'
)
