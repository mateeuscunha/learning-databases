select `nome`, `nacionalidade` from gafanhotos
where `sexo` = 'M' and `nome` like '%silva%' and `nacionalidade` != 'Brasil' and `peso` < '100';