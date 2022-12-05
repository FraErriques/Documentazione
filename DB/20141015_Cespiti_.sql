
select COUNT(id) from Cespiti.dbo.categoriaCespite_LOOKUP
select COUNT(id) from Cespiti.dbo.flagStato_LOOKUP
select COUNT(id) from Cespiti.dbo.paese_LOOKUP
select COUNT(id) from Cespiti.dbo.sedeAziendale_LOOKUP
--
select COUNT(id) from Cespiti.dbo.cespite


select  *  from Cespiti.dbo.categoriaCespite_LOOKUP
select  *  from Cespiti.dbo.flagStato_LOOKUP
select  *  from Cespiti.dbo.paese_LOOKUP
select  *  from Cespiti.dbo.sedeAziendale_LOOKUP
--
select  *  from Cespiti.dbo.cespite

select  (1.0-quotaAmmortamento*3)  from Cespiti.dbo.categoriaCespite_LOOKUP where id=2