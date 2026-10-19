select    * from Telecom.dbo.mobileIt
where numero='3356553492'

select    * from Telecom.dbo.mobileIt
where numero in
(
'3316342823'
,'3316643571'
)


select    * from Telecom.dbo.mobileIt
where numero in
(  -------------------- Mules
 '3669225236'
,'3669225228'
,'3669010512'
)

update Telecom.dbo.mobileIt 
set Beneficiario = 'Mules webcam Buttazzoni M2M cantiere'
where numero in
(  -------------------- Mules
 '3669225236'
,'3669225228'
,'3669010512'
)



(  -----------------------------Trigonos
	 '3316134499'
	,'3316134502'
	,'3316134528'
	,'3316134571'
	,'3316134574'
)


--insert into Telecom.dbo.mobileIt(
----id
-- numero
--,attivazione
--,servizio
--,tipoServizio
--,Beneficiario
--,costoMensile
--) values(
----id
-- '3316134574'
--,'2008-01-01 00:00:00.000'
--,'Top Mobile 20'
--,'M2M : 20 Gb di traffico dati mensile'
--,'Trigonos _5_'
--,'20'
--)


2006-10-25 00:00:00.000