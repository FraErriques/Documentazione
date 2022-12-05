

select 
	id, ref_candidato_id, insertion_time
 from cv_db.dbo.doc_multi
 where insertion_time > '2013-12-12 23:59:00.000'
order by insertion_time desc


-- nested query-------------------------------------------
select * from candidato
where id in (
select 
	 ref_candidato_id 
 from cv_db.dbo.doc_multi
 where insertion_time > '2013-12-12 23:59:00.000'
group by ref_candidato_id
)

