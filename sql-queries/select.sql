/*TESTANDO O IMPORT*/
select * from gafanhotos;

/*ORDER BY*/

select * from cursos
order by nome asc; /*se nao colocar nada, é ascendente*/

select * from cursos
order by nome desc; /*colocando descendente, fica o inverso*/

/*FILTRANDO COLUNAS*/

select ano, nome, carga from cursos
order by ano, nome;

/*FILTRANDO LINHAS*/

select nome, carga from cursos
where ano = '2016'
order by nome;

select `nome`, `descricao` from cursos
where ano <= '2015'
order by ano, nome;

select `nome`, `descricao`, `ano` from cursos
where `ano` <> '2015' /*diferente (!= ou <>)*/
order by `ano`, `nome`;

/*OUTROS OPERADORES RELACIONAIS*/

select * from cursos
where `totaulas` between '20' and '30'
order by `nome`;

select `nome`, `ano` from cursos /*between*/
where `ano` between '2014' and '2016'
order by `ano` desc, `nome` asc;

select `idcurso`, `nome`, `ano` from cursos /*in*/
where `ano` in ('2014', '2016', '2018')
order by `ano`,`nome`;

select * from cursos /*expressões mais completas*/
where `carga` > '35' and `totaulas` < '30'
order by `nome`;