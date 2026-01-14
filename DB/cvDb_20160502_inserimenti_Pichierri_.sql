select top 2 * from candidato

select MAX(id) from candidato


select * from candidato
where candidato.nominativo like '%vella%'

select * from candidato
where candidato.nominativo like '%fel%vella%'

--delete from doc_multi
--where ref_candidato_id=1237

--delete from candidato
--where id=1237

select COUNT(*) from doc_multi
-- #(.)==12.971

select   * from doc_multi
where ref_candidato_id=1237
order by insertion_time asc

select   * from doc_multi
where ref_candidato_id=1285
order by insertion_time asc

CV Vella FElice.pdf

select * from candidato
where id between 1300 and 1400

select * from areaAziendale_LOOKUP -- NB. Aree BBT SE

select 
s.id
,s.nomeSettore
,a.nomeArea
 from 
 settoreAziendale_LOOKUP s   -- NB. settori presenti attualmente in Azienda
 , areaAziendale_LOOKUP a
 where s.id_area=a.id
 order by a.id asc
 
 
select * from settoreCandidatura_LOOKUP -- NB. settore al quale si candidano

select * from candidato where nominativo like '%callegari%'

--update candidato set id_settore=7 where id=1331

select
s.nomeSettore
,c.id
,c.nominativo
 from
 settoreCandidatura_LOOKUP s
 ,candidato c
where c.id between 1300 and 1400
and c.id_settore=s.id
order by c.id asc

select * from candidato
where id between 1340 and 1400