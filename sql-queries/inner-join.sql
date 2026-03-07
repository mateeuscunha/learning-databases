select `nome`, `cursopreferido` from gafanhotos; /*Eu não quero que apareça o id do curso preferido, mas, sim, o nome*/

select `nome`, `ano` from cursos; /*preciso juntar esse reultado com o de cima*/

select gafanhotos.`nome`, gafanhotos.`cursopreferido`, cursos.`nome`, `cursos`.`ano` from gafanhotos join cursos; /*juntando (join), mas do jeito errado*/

/*para arrumar isso, temos que filtrar com a clausula on*/

select gafanhotos.`nome`, gafanhotos.`cursopreferido`, cursos.`nome`, `cursos`.`ano`
from gafanhotos join cursos
on cursos.`idcurso` = gafanhotos.`cursopreferido`; /*isso é um inner join, porque ele só pega os alunos que têm curso preferido*/

/*Podemos adicionar apelidos às tabelas para simplificar a digitação*/
select g.`nome`, c.`nome` from gafanhotos as g inner join cursos as c
on c.`idcurso` = g.`cursopreferido`;