/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [id]
      ,[card]
  FROM [cv_db].[dbo].[lCrash]
  
select cv_db.dbo.utente.username 
from    cv_db.dbo.utente  

select * 
from   cv_db.dbo.utente  
  
  
  
  select u.username, c.[card] 
  from cv_db.dbo.utente u, cv_db.dbo.lCrash c
  where u.id=c.id
  
  
  select u.username 
  from cv_db.dbo.utente u, cv_db.dbo.lCrash c
  where u.id=c.id
  
  
  select cv_db.dbo.utente.username   -- cosi' non va
  from cv_db.dbo.utente u, cv_db.dbo.lCrash c
  where u.id=c.id
  