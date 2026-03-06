select `profissao`, count(*) from gafanhotos
group by `profissao`
order by count(*) desc;