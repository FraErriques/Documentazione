select * from cv_db.dbo.settoreCandidatura_LOOKUP
where cv_db.dbo.settoreCandidatura_LOOKUP.nomeSettore like '%Coordinamento Sicurezza%'

--update cv_db.dbo.settoreCandidatura_LOOKUP
--set nomeSettore = 'Örtliche Bauaufsicht -/- Coordinamento Sicurezza e Lavori - DL Assistance'
--where cv_db.dbo.settoreCandidatura_LOOKUP.id = 23

select * from [cv_db].[dbo].[candidato]
where  [cv_db].[dbo].[candidato].nominativo in
('Daniele Pezzullo' 
,'Mancini Monica'
,'Melandro Pierdanilo'
)

select MAX(id) from [cv_db].[dbo].[candidato]
select * from [cv_db].[dbo].[candidato]
where  [cv_db].[dbo].[candidato].id=2140

--update  [cv_db].[dbo].[candidato]
--set [cv_db].[dbo].[candidato].id_settore=30
--where [cv_db].[dbo].[candidato].[id] 
--in ( 2062
--,2049
--,2066
--,1871
--,2047
--,2056
--,1657
--,2064
--,2050
--,795
--,1144
--,2048
--,2045
--,2044
--,2055
--,2040
--,2039
--,2041
--,1813
--,2058
--,2053
--,1344
--,1405
--,2054
--,2043
--,2057
--,2042
--,1629
--,2063
--,2051
--,2052
--,2046  )


select * from  [cv_db].[dbo].[candidato]
where [cv_db].[dbo].[candidato].[id] 
in ( 795, 2040, 2041)


select * from [cv_db].[dbo].[candidato]
where  [cv_db].[dbo].[candidato].nominativo like '%Stirparo Antonio%'
select * from settoreCandidatura_LOOKUP where nomeSettore like '%CRT%'  -- 27
select * from settoreCandidatura_LOOKUP where nomeSettore like '%aero%'
select * from settoreCandidatura_LOOKUP where nomeSettore like '%buyer%' --30

select * from [cv_db].[dbo].[candidato]
where  [cv_db].[dbo].[candidato].nominativo like 'Francesconi Massimiliano'
--Economia==15

--update  [cv_db].[dbo].[candidato]
--set id_settore=27 -- '%CRT%'  -- 27
--where id=2104

--update  [cv_db].[dbo].[candidato] -- Razlivanov da Fisica ad "altro".
--set id_settore=22
--where id=39

Categoria: 
AVA -/- Appalti 

Rinominare come:
AVA -/- Appalti Legale CATL

--delete from settoreCandidatura_LOOKUP where id=12 delete Fisica.
select * from settoreCandidatura_LOOKUP
where nomeSettore like '%periti%'

'DL Assistance'

--update cv_db.dbo.settoreCandidatura_LOOKUP
--set nomeSettore ='DL Assistance'
--where id=14

--update cv_db.dbo.settoreCandidatura_LOOKUP
--set nomeSettore = 'AVA -/- Appalti Legale CATL'
--where id=2

--delete from cv_db.dbo.settoreCandidatura_LOOKUP
--where id=26

select * from [cv_db].[dbo].[candidato]
where  [cv_db].[dbo].[candidato].id_settore=26

select * from [cv_db].[dbo].[candidato]
where
  [cv_db].[dbo].[candidato].nominativo like '%Russillo Massimo%'
or [cv_db].[dbo].[candidato].nominativo like '%Mercurio Gianluca%'
or [cv_db].[dbo].[candidato].nominativo like '%Cavatton Mauro%'
or [cv_db].[dbo].[candidato].nominativo like '%Melillo Modestino%'





select * from [cv_db].[dbo].[candidato]
where
  [cv_db].[dbo].[candidato].nominativo like '%Daniele Pezzullo%'
or [cv_db].[dbo].[candidato].nominativo like '%Mancini Monica%'
or [cv_db].[dbo].[candidato].nominativo like '%Melandro Pierdanilo%'
or [cv_db].[dbo].[candidato].nominativo like '%Salmi Roberto%'
or [cv_db].[dbo].[candidato].nominativo like '%Rossi Andrea%'
or [cv_db].[dbo].[candidato].nominativo like '%Giuppi Giuseppe%'
or [cv_db].[dbo].[candidato].nominativo like '%Gerace Ylenia%'
or [cv_db].[dbo].[candidato].nominativo like '%Volontè Dario%'
or [cv_db].[dbo].[candidato].nominativo like '%Carnazzola Sergio%'
or [cv_db].[dbo].[candidato].nominativo like '%Gazzetto Federico%'
or [cv_db].[dbo].[candidato].nominativo like '%Silletta Pietro%'
or [cv_db].[dbo].[candidato].nominativo like '%Donini Lara%'
or [cv_db].[dbo].[candidato].nominativo like '%Bavaro Michele%'
or [cv_db].[dbo].[candidato].nominativo like '%Cordioli Alessandro%'
or [cv_db].[dbo].[candidato].nominativo like '%Soffiato Achille%'
or [cv_db].[dbo].[candidato].nominativo like '%Totaro Rocco%'
or [cv_db].[dbo].[candidato].nominativo like '%Nocca Alessandro%'
or [cv_db].[dbo].[candidato].nominativo like '%Rezai Keivan%'
or [cv_db].[dbo].[candidato].nominativo like '%Malvasi Massimiliano%'
or [cv_db].[dbo].[candidato].nominativo like '%Casile Mattia%'
or [cv_db].[dbo].[candidato].nominativo like '%Russillo Massimo%'
or [cv_db].[dbo].[candidato].nominativo like '%Mercurio Gianluca%'
or [cv_db].[dbo].[candidato].nominativo like '%Cavatton Mauro%'
or [cv_db].[dbo].[candidato].nominativo like '%Melillo Modestino%'
or [cv_db].[dbo].[candidato].nominativo like '%Alessio Arduca%'
or [cv_db].[dbo].[candidato].nominativo like '%Simeoni Marco%'
or [cv_db].[dbo].[candidato].nominativo like '%Chies Nicolò%'
or [cv_db].[dbo].[candidato].nominativo like '%Calì Mario%'
or [cv_db].[dbo].[candidato].nominativo like '%Pinto Giuditta%'
or [cv_db].[dbo].[candidato].nominativo like '%Maraldo Vincenzo%'
or [cv_db].[dbo].[candidato].nominativo like '%Cantafio Andrea%'
or [cv_db].[dbo].[candidato].nominativo like '%Oliva Andrea%'
--order by [cv_db].[dbo].[candidato].nominativo
order by [cv_db].[dbo].[candidato].id

