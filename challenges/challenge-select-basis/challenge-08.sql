select min(`peso`) from gafanhotos
where `sexo` = 'f' and `nacionalidade` != 'Brasil' and `nascimento` between 1000-01-01 and '2000-12-31';