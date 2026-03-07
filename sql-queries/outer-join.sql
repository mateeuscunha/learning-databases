/*O outer join mostra, inclusive, aqueles dados que não tem relação*/
/*É preciso especificar qual tabela você quer mostra completa, à esquerda do join (left) ou à direita (right)*/
select g.`nome`, c.`nome` from gafanhotos as g right outer join cursos as c
on c.`idcurso` = g.`cursopreferido`;