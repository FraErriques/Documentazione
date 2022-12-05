--Ciao Francesco,
--Quando possibile, cambiare Fraccalveri Michele con Fraccalvieri Michele.
--Grazie
select * from candidato where nominativo like '%Fraccalv%'
--update candidato
--set nominativo='Fraccalvieri Michele'
--where id=1491



--Francesco Frassinella: invertire, cortesemente, nome e cognome
select * from candidato where nominativo like '%Frassinella%'
update candidato
set nominativo='Frassinella Francesco'
where id=748

--Quando possibile:
--“lpmer Manuel” deve diventare “Ulpmer Manuel”
--Grazie

select * from candidato where nominativo like '%luna%'
select * from settoreCandidatura_LOOKUP

update candidato
set
id_settore=6
where id=1467


--update candidato
--set nominativo='Ulpmer Manuel'
--where id=1459

--Giulietti
select top 2 * from candidato
select top 2 * from doc_multi
select * from candidato where nominativo like '%Giulietti%'
select   * from doc_multi where ref_candidato_id = 936
-- delete from doc_multi where id between 10003 and 10004
 
 --Pacher Christian
select * from candidato where nominativo like '%Pacher Christian%'
select   * from doc_multi where ref_candidato_id = 937
-- delete from doc_multi where id between 10005 and 10005

 --Susca Domenico
select * from candidato where nominativo like '%Susca Domenico%'
select   * from doc_multi where ref_candidato_id = 938
-- delete from doc_multi where id between 10006 and 10009

select  * from candidato
where nominativo like '%Pasquali Ermes%'

--update candidato
--set id_settore=6
--where id=1426

--delete from doc_multi
--where id between 14073 and 14079

select * from doc_multi
where id between 14073 and 14079

select * from settoreCandidatura_LOOKUP

select 
c.id as id_candidato
,c.nominativo as nominativo_candidato
,s.nomeSettore as settore_candidatura
,c.note as note
from
candidato c
,settoreCandidatura_LOOKUP s
where 
c.nominativo like '%Ermes%'
and
s.id=c.id_settore

--Il candidato si presenta il 28.07.2016 con un'e-mail  

select * from settoreCandidatura_LOOKUP

select  * from candidato
where nominativo like '%Rigamonti Anna Ghedina%'

--update candidato
--set id_settore=2
--where id=1437


select  * from doc_multi
where ref_candidato_id=480

select COUNT(*) from doc_multi
where sourceName='Caruso Gianluca CV.pdf'

select * from doc_multi
where sourceName='Caruso Gianluca CV.pdf'

select  * from candidato
where nominativo like '%caruso%'
select  * from candidato
where nominativo like '%girelli%'

--delete from doc_multi
--where id between 14240 and 14243
