select stanza from cespite
where id>25
group by stanza

select stanza, count(stanza) as card_in_stanza
from cespite
where id>25
group by stanza
order by stanza asc

select id, codiceABarreTxt, stanza 
from cespite
where stanza=106
and id>25
order by codiceABarreTxt asc
