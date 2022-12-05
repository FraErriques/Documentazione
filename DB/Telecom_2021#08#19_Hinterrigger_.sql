select * from accessori
where beneficiario like '%vo%'

--insert into accessori(
----id
--beneficiario,
--oggetto,
--matricola,
--note)values(
----id
--'Voza',
--'Modem 4G Hot Spot Mobile Wi-Fi Alcatel MW40V LTE ', --oggetto
--'SSID Modem 4G Wi-Fi_B3F4 Key:35777672', --matricola
--'NMU 772328 MAC:64:09:AC:C3:B3:F4 IMEI:356478115812669 SSID Modem 4G Wi-Fi_B3F4 Key:35777672 '  --note
--)

select * from SIM_BBT
where beneficiario like '%vo%'

--insert into SIM_BBT(
----id
--beneficiario,
--servizio,
--numero,
--PIN,
--PUK,
--ICCID,
--registrazione,
--note
--)values(
---- --id
--'Voza', --beneficiario,
--'M2M Hinterrigger', --servizio,
--'3346652378', --numero,
--'6859', --PIN,
--'03390122', --PUK,
--'8939010002505979108 – L48C', --ICCID,
--GETDATE(), --registrazione,
--'connessione mobile modem Wi-Fi presidio Hinterrigger; fuori VLAN BBT; circuito webcam.' --note
--)


-- queries 2021#settembre#16
select * from Telecom.dbo.lottoDue_produzione
where numero like '366%7662376'

select * from dotazioni2021.dbo.SIM_TIM
where numero like '366%7662376'

select * from dotazioni2021.dbo.SIM_BBT
where numero like '366%7662376'

select * from dotazioni2021.dbo.SIM_BBT
where numero like '366%'

select * from dotazioni2021.dbo.SIM_TIM 
where numero like '%376'

select * from dotazioni2021.dbo.SIM_BBT
where beneficiario like 'erri%'
