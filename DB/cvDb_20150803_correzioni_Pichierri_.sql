
select top 2 * from candidato

select * from candidato
where nominativo like '%berardi%'


select * from settoreCandidatura_LOOKUP
where id in ( 3, 6)


select 
c.id
,c.nominativo
,c.id_settore
,s.nomeSettore
,c.note
 from 
 candidato c
 ,settoreCandidatura_LOOKUP s
where 
nominativo like '%berardi%'
and c.id_settore=s.id

select * from doc_multi
where 
ref_candidato_id=1177
or ref_candidato_id=949


--delete
-- from candidato
--where id=1177
