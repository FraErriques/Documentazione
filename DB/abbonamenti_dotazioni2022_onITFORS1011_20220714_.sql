/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [id]
      ,[beneficiario]
      ,[oggetto]
      ,[url]
      ,[username]
      ,[password]
      ,[note]
  FROM [dotazioni2022].[dbo].[abbonamenti]
  order by [beneficiario]
  
select * from  [dotazioni2022].[dbo].[abbonamenti]
where id=3

--update  [dotazioni2022].[dbo].[abbonamenti]
--set
--	url='www.edicolaprofessionale.com'
--	,username='codice cliente==0001902044'
--	,note='rivista online di Controlling, a beneficio del Reparto Contabilita; codice cliente==0001902044 , url==www.edicolaprofessionale.com , Servizio Clienti=={tel.02824761 , servizio.clienti@wolterskluwer.com} '
--where id=3

--update  [dotazioni2022].[dbo].[abbonamenti]
--set
--	password='Budget2022'
--where id=3


  /*
  www.edicolaprofessionale.com
, clicca sul pulsante Accedi e procedi con la
registrazione inserendo il tuo indirizzo e-mail e il tuo codice cliente.
Il tuo codice cliente==0001902044
La rivista è sfogliabile anche in mobilità, da tablet e smartphone
scaricando l'app gratuita Edicola Professionale da AppStore o da Google Play e
inserendo nell'app username e password di registrazione.
Per ulteriori informazioni contatta il 
Servizio Clienti :
02824761
oppure all'indirizzo e-mail 
servizio.clienti@wolterskluwer.com.
  */