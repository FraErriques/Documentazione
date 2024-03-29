
  select 
	d.id	as idDoc
	,c.nominativo as autoreDoc
	,d.abstract   as noteDocumento
   from 
	cv_db.dbo.doc_multi d
	,cv_db.dbo.candidato c
  where 
	c.id=d.ref_candidato_id
	and abstract not like '%_##__fake_abstract__##_%'
    and d.id between 1 and 12
  