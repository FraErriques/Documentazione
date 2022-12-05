select * from candidato
where nominativo like 'ianes%'

select * from doc_multi
where ref_candidato_id=654

select * from doc_multi
--delete from doc_multi
--where id between 10601 and 10603

select * from doc_multi
where sourceName = 'Claudio IanesCV 25 Sett.pdf'


select * from doc_multi
where ref_candidato_id=951

--delete from candidato
--where id=951

select * from candidato
where nominativo like '%Heumann%'
select * from doc_multi
where ref_candidato_id=955
select * from doc_multi
where sourceName='Zeugnis Eva Heumann.pdf'

select id from doc_multi
where sourceName='Zeugnis Eva Heumann.pdf'

--delete
-- from cv_db.dbo.doc_multi
--where id in
--(
--10113,
--10114,
--10115,
--10116,
--10117,
--10118,
--10119,
--10120,
--10121,
--10122,
--10123,
--10124,
--10125,
--10126,
--10127,
--10128,
--10129,
--10130,
--10131,
--10132,
--10133
--)

select * from candidato
where nominativo like '%Loffredo%'
select * from settoreCandidatura_LOOKUP where nomeSettore like '%geomecc%'
--update   candidato
--set id_settore=20
--where id=956

select * from candidato
where nominativo like '%García López José Diego%'
select * from doc_multi
where ref_candidato_id=963
--delete from doc_multi
--where id=10167

select * from candidato
where nominativo like '%Francisco José García Garrido%'
select * from doc_multi
where ref_candidato_id=815
--delete from doc_multi
--where id=10169

select * from candidato
where nominativo like '%Campanaro%'
select * from settoreCandidatura_LOOKUP where id=11
select * from settoreCandidatura_LOOKUP where nomeSettore like '%altro%'
--update candidato
--set id_settore=22
--where id=992

select * from candidato
where nominativo like 'colturi%'
select * from doc_multi
where ref_candidato_id=1002
select * from doc_multi
where ref_candidato_id=1002
select * from doc_multi
where id between 10606 and 10620 
--delete from doc_multi
----select * from doc_multi
--where id between 10604 and 10620 


select COUNT(*) from candidato
select * from candidato
where nominativo like '%colturi%'
select * from doc_multi
where 
ref_candidato_id=1002
and id in ( 10740, 10756)
and ref_job_id=0

select * from doc_multi
where 
ref_candidato_id=1002
and id between 10726 and  10740  
--delete from doc_multi
--where 
--ref_candidato_id=1002
--and id between 10726 and  10740  

--delete from doc_multi
--where 
--ref_candidato_id=1002
--and id between 10726 and  10756

select * from candidato
where nominativo like '%da ros%'
select * from doc_multi
where ref_candidato_id=1043
--delete from doc_multi
--where ref_candidato_id=1043

select top 10 * from candidato
select * from candidato
where nominativo like '%Prugger%'
select * from candidato where id = 1051
--update candidato 
--set nominativo='Prugger Andreas'
--where id = 1051

select * from candidato
where nominativo like '%camiolo%'
select * from settoreCandidatura_LOOKUP where id = 14
select * from settoreCandidatura_LOOKUP where nomeSettore like '%oper%' 
--update candidato set id_settore=11 where id=1058

select * from candidato
where nominativo like '%bauer%'
select * from doc_multi where ref_candidato_id=1077
select * from doc_multi where id between 11223 and 11224 and ref_candidato_id=1077
--delete from doc_multi where id between 11223 and 11224

select * from candidato
where nominativo like '%quattrone%'
--update candidato set nominativo='Quattrone Giuseppe' where id=1078

select * from candidato where nominativo like '%Zarzaca%'
select * from doc_multi where id=11317
select * from doc_multi where ref_candidato_id=1090
select * from doc_multi where id=11317
--  delete from doc_multi where id=11317

select * from settoreAziendale_LOOKUP
select * from settoreCandidatura_LOOKUP
