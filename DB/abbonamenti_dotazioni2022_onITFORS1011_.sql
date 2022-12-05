

select * from [dotazioni2022].dbo.abbonamenti
order by beneficiario asc

insert into  [dotazioni2022].dbo.abbonamenti (
--	[id] [int] IDENTITY(1,1) NOT NULL,
[beneficiario] -- [varchar](150) NULL,
,[oggetto] --  [varchar](350) NULL,
,[url]  -- [varchar](1800) NULL,
,[username] --  [varchar](70) NULL,
,[password] --  [varchar](50) NULL,
,[note]  --  [text] NULL,
   )values(
--	[id] [int] IDENTITY(1,1) NOT NULL,
/*
server applicazione "badge"	l'applicazione si chiama Wingaep ed è installata in un'omonima directory. 
L'utente che avvia l'applicazione deve avere diritti amministrativi sulla cartella. 
Le credenziali dell'applicazione sono: 
username admin ; password azz99azz	
url IP   192.168.3.8 
username badge 
password badge	
l'applicazione è licenziata per dieci varchi. Al superamento di tale soglia è richiesto l'acquisto di una nuova licenza. Il venditore è Nicom Securalarm, che realizza le installazioni fisiche dei lettori di badge.
*/
'Reparto Servizi Generali, per la intera BBT-SE.'  -- [beneficiario] -- [varchar](150) NULL,
,'server applicazione "badge" la applicazione si chiama Wingaep ed è installata in una omonima directory. Credenziali username admin ; password azz99azz.' --[oggetto] --  [varchar](350) NULL,
,'url IP   192.168.3.8 via TerminalServer' --[url]  -- [varchar](1800) NULL,
,'TerminalServer username badge' --[username] --  [varchar](70) NULL,
,'TerminalServer password badge' --[password] --  [varchar](50) NULL,
,'beneficiario Reparto Servizi Generali, per la intera BBT-SE. La applicazione è licenziata per dieci varchi. Al superamento di tale soglia è richiesto acquisto di una nuova licenza. Il venditore è Nicom Securalarm, che realizza le installazioni fisiche dei lettori di badge.'  -- [note]  --  [text] NULL,
)

select * from [dotazioni2022].dbo.abbonamenti
order by oggetto asc

--update [dotazioni2022].[dbo].[abbonamenti]
--set 
--	oggetto='Lexitalia abbonamento online Giuriconsult.'
--where [id]=8

/*
abbonamento Sole 24 Ore Norme & Tributi Plus Diritto		www.ilsole24ore.com
setcon
Aggiornamento2013"	beneficiario Masciullo

Telepass		
url        https://www.telepass.com/
Username   BBT-SE
Password   wm3vv7ze	
sono fruitrici del servizio molte delle autovetture della flotta aziendale

abbonamento IPSOA Controllo di Gestione			beneficiario Zanei

abbonamento online   Appalti e Contratti		
url    www.appaltiecontratti.it
Username    mazzucato
Password    acc326587
beneficiario Mazzucato

abbonamento online Appalti e Concessioni di Lino Bellagamba
url www.APPALTIeCONCESSIONI.eu
Username   BBTSE
Password   galleria123
beneficiario Mazzucato

abbonamento Sole 24 Ore Contabilità e Bilancio
www.ilsole24ore.com
setcon
Aggiornamento2013
beneficiario  Zanei

abbonamento Lexitalia
url    www.lexitalia.it
Username   brennero
Password   bbt869c
beneficiario Fedele di Catrano

server applicazione "badge"	l'applicazione si chiama Wingaep ed è installata in un'omonima directory. 
L'utente che avvia l'applicazione deve avere diritti amministrativi sulla cartella. 
Le credenziali dell'applicazione sono: 
username admin 
password azz99azz	
url IP   192.168.3.8 
username badge 
password badge	
l'applicazione è licenziata per dieci varchi. Al superamento di tale soglia è richiesto l'acquisto di una nuova licenza. Il venditore è Nicom Securalarm, che realizza le installazioni fisiche dei lettori di badge.


*/

   
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[abbonamenti](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[beneficiario] [varchar](150) NULL,
--	[oggetto] [varchar](350) NULL,
--	[url] [varchar](1800) NULL,
--	[username] [varchar](70) NULL,
--	[password] [varchar](50) NULL,
--	[note] [text] NULL,
-- CONSTRAINT [PK_dotazioni2022_abbonamenti] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--SET ANSI_PADDING OFF
--GO
   