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

