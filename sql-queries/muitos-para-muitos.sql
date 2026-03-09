/*Precisamos fazer o relacionamento virar uma entidade (olhar notes 'modelo-relacional')*/
create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id), /*estou nomeando o atributo lá de cima como PK*/
foreign key (idgafanhoto) references gafanhotos(`id`), /*nomeando o que declarei em cima também*/
foreign key (idcurso) references cursos(`idcurso`)
) default charset = utf8mb4;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from gafanhoto_assiste_curso;

/*JUNÇÕES*/

select g.`nome`, c.`nome` from gafanhotos as g
join gafanhoto_assiste_curso a
on g.`id` = a.`idgafanhoto`
/*fim do primeiro join*/
join cursos c /*posso colocar apelidos omitindo o 'as'*/
on a.`idcurso` = c.`idcurso`;