select `altura`, count(*) from gafanhotos
where `peso` > '100'
group by `altura`
having `altura` > (select avg(`altura`) from gafanhotos)
order by `altura`;