select TOP 3 * from cv_db.dbo.candidato

select * from cv_db.dbo.candidato
where 
nominativo like '%Rea nicola%' 
or nominativo like '%Berrera%' 
or nominativo like '%Haller Doria%' 

select * from cv_db.dbo.settoreCandidatura_LOOKUP
order by nomeSettore

--update cv_db.dbo.candidato
--set id_settore=7
--where id =1917

--update cv_db.dbo.settoreCandidatura_LOOKUP
--set nomeSettore='Engineering TBM'
--where id=28

--delete from cv_db.dbo.candidato
--where id=1925

select * from cv_db.dbo.doc_multi
where ref_candidato_id=1925

--delete from cv_db.dbo.doc_multi
--where ref_candidato_id=1925

select * from cv_db.dbo.settoreCandidatura_LOOKUP
where nomeSettore like '%geol%'

Elia Corso
Gianluca Berrera
Haller Doria
1241
1889
1890

--update cv_db.dbo.candidato
--set id_settore=5
--where id=1890


--delete from cv_db.dbo.candidato where id=1742

select * from cv_db.dbo.utente
order by username
select * from cv_db.dbo.permesso
select * from cv_db.dbo.livelloFunzionario_LOOKUP
select * from cv_db.dbo.lCrash

--update cv_db.dbo.utente 
--set username='Sandro Francesconi'
--where [id]=23

select * from cv_db.dbo.candidato
order by id desc

--delete from cv_db.dbo.candidato
--where id=1710

select * from cv_db.dbo.permesso

select * from cv_db.dbo.candidato
where nominativo like '%morel%'

--delete from cv_db.dbo.candidato
--where id=1667
 

select * from cv_db.dbo.candidato
where nominativo like '%padovan mas%'

select COUNT(id) from cv_db.dbo.doc_multi
where ref_candidato_id=1574

select * from cv_db.dbo.doc_multi
where ref_candidato_id=1574

--delete from cv_db.dbo.doc_multi
--where id=15053 or  id=15054 

select * from cv_db.dbo.candidato
where id_settore=28

--update cv_db.dbo.candidato
--set id_settore=22
--where id=1636


select * from cv_db.dbo.settoreCandidatura_LOOKUP

select * from cv_db.dbo.candidato
where nominativo like '%Hambach%'

--update cv_db.dbo.candidato
--set nominativo='Hambach Nicole'
--where id=1650

select count(*) from cv_db.dbo.candidato
select count(*) from cv_db.dbo.doc_multi

USE [cv_db]
GO

/****** Object:  StoredProcedure [dbo].[usp_doc_multi_dataMining]    Script Date: 08/22/2017 15:27:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_doc_multi_dataMining]
	@id_last_phase int
as
	-- returns a datatable of ids, from last_chunk(in first row) to first_chunk(ref_job_id=0 in last row).--
	declare @ref_job_id int
	set @ref_job_id = @id_last_phase
	--
	select @ref_job_id -- NB. don't forget the last chunk.
	--
	while( @ref_job_id>0)
		begin
			-----------finalizzata a memorizzare la sequenza dei puntatori a chunk.-----------
			select ref_job_id from doc_multi where id=@ref_job_id
			-----
			-----------stessa query di prima, con nuovo parametro,----------------------------
			-----------per far avanzare il ciclo while al chunk successivo--------------------
			select @ref_job_id = (select ref_job_id from doc_multi where id=@ref_job_id)
			-----
		end
	--ready

GO





select  * from cv_db.dbo.doc_multi
where 
id>=15878

select  * from cv_db.dbo.doc_multi
where 
sourceName = 'CV Riccardo Catellani.pdf'

select  * from cv_db.dbo.doc_multi
where  insertion_time between
'2017-08-22 12:56:56.080' and '2017-08-22 14:56:56.080'

select id, ref_job_id,ref_candidato_id, abstract, sourceName, insertion_time
 from cv_db.dbo.doc_multi
where 
ref_candidato_id = 1603


select * from candidato 
where 
	id=1603
	
select * from candidato 
where 
	id=1602	

select id, ref_job_id,ref_candidato_id, abstract, sourceName, insertion_time
 from cv_db.dbo.doc_multi
where 	
ref_candidato_id = 1602

select id, ref_job_id,ref_candidato_id, abstract, sourceName, insertion_time
 from cv_db.dbo.doc_multi
where 	
ref_candidato_id = 1603

select max(id) from  cv_db.dbo.doc_multi
select * from  cv_db.dbo.doc_multi where id=16290

select id, ref_job_id,ref_candidato_id, abstract, sourceName, insertion_time
 from cv_db.dbo.doc_multi
where 	
id between	15630 and 15878

--delete from cv_db.dbo.doc_multi
--where 	
--id between	15630 and 15878


select * from candidato 
where 
	nominativo like '%Portosi%' 
	

select * from candidato 
where id='1396'
	
	
--update candidato 
--set nominativo='Racaniello Antonio'
--where id='1396'	
	
	Ciao Francesco,
Per cortesia sostituire il nome e cognome di “Portosi Giovanni” con “Racaniello Antonio”.
Grazie


