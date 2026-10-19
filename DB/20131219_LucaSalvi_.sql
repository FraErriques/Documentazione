
select TOP 2 * from candidato

select count(*) from candidato

select * from candidato
order by id asc

select count(*) from settoreCandidatura_LOOKUP

select * from settoreCandidatura_LOOKUP

select TOP 2 * from doc_multi

select distinct
c.id,c.nominativo, min( d.insertion_time) insertion_time ,s.nomeSettore
from 
	candidato c
	,settoreCandidatura_LOOKUP s
	,doc_multi d
where
c.id=d.ref_candidato_id
and s.id=c.id_settore
group by
	c.id
	,c.nominativo
	,s.nomeSettore
order by
	insertion_time desc
