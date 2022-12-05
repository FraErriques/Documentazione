select top 4 * from Logging.dbo.cv_db

select 
	*
from Logging.dbo.cv_db
where
	[when] between '20200101' and '20200221'
	and content like '%utente%'
order by [when] asc
