select * from Telecom.dbo.lottoDue_produzione

select * from Riemann_SUZE.Telecom.dbo.mobileIt
<nome_linked_server>.<nome_database>.<schema>.<oggetto>


EXEC sp_addlinkedserver   
   @server=N'Riemann_SUZE', 
   @srvproduct=N'',
   @provider=N'SQLNCLI', 
   @datasrc=N'Riemann\SUZE',
   @provstr =N'Database=Telecom;Network Address=192.168.4.11;Network Port=1433;Server=192.168.4.11\SUZE;UID=sa;PWD=sa;'


       
   
   
   'DRIVER={SQL Server};SERVER=Riemann\SUZE;UID=sa;PWD=sa;'




   @provstr=N'Initial Catalog=PUBS;
       Data Source=DB2;
       HostCCSID=1252;
       Network Address=192.168.4.11;
       Network Port=1433;
       Package Collection=sa;
       Default Schema=dbo;';
       
       
        
       
       
       /****** Object:  LinkedServer [Riemann_SUZE]    Script Date: 05/12/2016 14:54:25 ******/
EXEC master.dbo.sp_addlinkedserver @server = N'Riemann_SUZE', @provider=N'SQLNCLI', @datasrc=N'Riemann\SUZE', @provstr=N'Initial Catalog=PUBS;
       Data Source=DB2;
       HostCCSID=1252;
       Network Address=192.168.4.11;
       Network Port=1433;
       Package Collection=sa;
       Default Schema=dbo;'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'Riemann_SUZE',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'rpc', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'rpc out', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'Riemann_SUZE', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO

