select count(id) from cespite
select top 2 *  from cespite

-- query per sinossi {stanza, cardinalita' cespiti in stanza}
select 
	stanza
	,COUNT(id) as cardinalita
from cespite
group by(stanza)
order by stanza asc

--query per dettaglio BarCode, nell'ambito della stanza specificata
select 
	codiceABarreTxt
from cespite
where stanza = 101
order by codiceABarreTxt asc


     select         stanza         ,COUNT(id) as cardinalita     from cespite     group by(stanza)     order by stanza asc 