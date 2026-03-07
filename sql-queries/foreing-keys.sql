desc gafanhotos;

/*Para adicionar a chave estrangeira:*/
alter table gafanhotos
add column `cursopreferido` int; /*Não precisa ser o mesmo nome, mas tem que ser int, pois a chave primária original (idcurso) é int.*/
/*Agora vamos dizer que `cursopreferido` é uma chave estrangeira*/
alter table gafanhotos
add foreign key (`cursopreferido`)
references cursos(`idcurso`); /*Para falar qual é a chave primária, de onde ele veio*/

select * from gafanhotos;
select * from cursos;

/*Vamos fazer o Daniel(id 1) preferir o curso MySQL(id 6)*/
update gafanhotos set `cursopreferido` = '6' where `id` = '1';

/*Você teria que fazer isso para cada um, mas há um jeito de preencher mais rápido, que é usando o editor do workbench: ele gerou o cógido abaixo*/
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '22' WHERE (`id` = '2');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '12' WHERE (`id` = '3');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '7' WHERE (`id` = '4');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '1' WHERE (`id` = '5');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '8' WHERE (`id` = '6');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '4' WHERE (`id` = '7');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '5' WHERE (`id` = '8');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '3' WHERE (`id` = '9');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '30' WHERE (`id` = '10');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '22' WHERE (`id` = '11');
