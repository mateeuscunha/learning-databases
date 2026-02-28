create table if not exists teste (
id int,
nome varchar(30),
idade int
);

alter table teste
modify id int auto_increment not null, add primary key(id);

desc teste;

insert into teste values
(default, 'Pedro', '22');

select * from teste;

drop table if exists teste;