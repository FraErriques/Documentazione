/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [id]
      ,[sintesi]
      ,[dettaglio]
      ,[id_responsabile]
  FROM [RealizzazioniItalia].[dbo].[strumento]

select * from RealizzazioniItalia.dbo.strumento

select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP
order by cognome
  
  --matricola==44008249
  --Fotocamera compatta Nikon Coolpix AW 130 gialla
  --per il lotto Isarco
  --resistente a gocce di acqua e polvere.
  
  --insert into [RealizzazioniItalia].[dbo].[strumento](
  --   --id
  --    [sintesi]
  --    ,[dettaglio]
  --    ,[id_responsabile] --  3	Stefan	Skuk	Geologia
  --    ) values( 
  --    -- id
  --    'Olympus compatta per Geologia e Topografia',
  --    'Olympus Stylus TG-6 con coprilente LB-T01',
  --    3  --  3	Stefan	Skuk	Geologia
  --    )
      
  
  select * from RealizzazioniItalia.dbo.collaboratore_LOOKUP
  