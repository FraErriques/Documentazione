
/* NB. that's the heart of ProxyGenerator*/
   select 
                [name] Name, 
                [id] [Id] 
 from [sysobjects] --NB. this is a system_VIEW in each user_DB.
 where xtype='P' 
 order by name asc 
 