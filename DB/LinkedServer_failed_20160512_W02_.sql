<nome_linked_server>.<nome_database>.<schema>.<oggetto>

select * from SUZE.Telecom.dbo.lottoDue_produzione

select * from cv_db.dbo.candidato

exec sys.sp_addlinkedserver

--EXEC sp_addlinkedserver   
--   @server=N'Riemann_SUZE', 
--   @srvproduct=N'',
--   @provider=N'SQLNCLI', 
--   @datasrc=N'Riemann\SUZE',
--   @provstr=N'Initial Catalog=PUBS;
--       Data Source=DB2;
--       HostCCSID=1252;
--       Network Address=192.168.4.11;
--       Network Port=50000;
--       Package Collection=admin;
--       Default Schema=admin;';
       