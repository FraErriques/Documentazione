select * from lottoDue_produzione
where Beneficiario like '%giann%'

--update lottoDue_produzione
--set note=
--'ICCID=''8939010001980996173''. Attivata il 2016.Maggio.06 per router wifi Giannattasio-EDV. La matricola del router e'' IMEI''862891011720934''.WIFI SSID=''TIM_MODEM21_5C2C''  WIFI key=''8C8N8SH85B'''
--where id=56

--ICCID='8939010001980996173'. Attivata il 2016.Maggio.06 per router wifi Giannattasio-EDV.
-- La matricola del router e' IMEI'862891011720934'.WIFI SSID='TIM_MODEM21_5C2C'  WIFI key='8C8N8SH85B'

select PIN, PUK, note from lottoDue_produzione
where id=56

/*
ICCID='8939010001980996173'. Attivata il 2016.Maggio.06 per router wifi Giannattasio-EDV. 
La matricola del router e' IMEI'862891011720934'.WIFI SSID='TIM_MODEM21_5C2C'  WIFI key='8C8N8SH85B'

*/
