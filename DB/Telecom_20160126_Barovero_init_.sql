select * from lottoDue_produzione
where Beneficiario like '%maluc%'


--ICCID='8939010001873459321'.   
--Attivata il 2016.01.28 per assunzione Barovero. 
--La soglia è dispositiva. 
--Il roaming con l'Austria e' aperto. 
--La matricola del cellulare e' 7949769187N355922070650011.


--insert into lottoDue_produzione(
----id------
--numero
--,attivazione
--,servizio
--,Beneficiario
--,costoMensile
--,PIN
--,PUK
--,soglie
--,note
--)values(
-----id----
--'xxx'
--,GETDATE()
--,'Vocale Open Standard'
--,'Giobbe Barovero'
--,'17 euro/mese' 
--,'2316' 
--,'10242431' 
--,'DISPOSITIVA mensile: 800 minuti voce; 800 sms; 5Gb dati; ' 
--,'ICCID=''8939010001873459321''. Attivata il 2016.01.26 per assunzione Barovero. La soglia è dispositiva. Il roaming con l''Austria e'' aperto. La matricols del cellulare e'' 7949769187N355922070650011.'
--)

select * from lottoDue_produzione order by Beneficiario asc


--update lottoDue_produzione
--set Beneficiario = 'Fuoco' where id=51

--update lottoDue_produzione
--set Beneficiario = 'Malucelli' where id=52

--update lottoDue_produzione
--set Beneficiario = 'Barovero' where id=53

select *
from lottoDue_produzione where Beneficiario like '%Rea%'

--select *
--into UtenzeCessate
--from lottoDue_produzione where Beneficiario like '%Rea%'

select *
from UtenzeCessate 
where Beneficiario like '%Rea%'

--delete from lottoDue_produzione where id=41

--update lottoDue_produzione
--set note='cessare per smarrimento.'
--where id=19

select * from lottoDue_produzione 
where id=53

--update lottoDue_produzione
--set numero='3346596611'
--where id=53

-- telefono Barovero 3346596611
