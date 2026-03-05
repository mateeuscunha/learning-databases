/*WILDCARDS - cartas coringa*/

select * from cursos
where `nome` not like '%a%'; /*onde começar com 'P', o % é o caractere coringa*/

select * from cursos
where nome like 'ph%p_'; /*o sublinhado exige que tenha algum caractere ali*/

select * from gafanhotos
where `nome` like '%silva%';


select distinct `ano` from cursos; /*DISTINCT - select the distinct `ano` from cursos*/

select count(`nome`) from cursos /*COUNT - count how many `nome` has in cursos*/
where `carga` > '40';

select max(`carga`) from cursos; /*MAX - what is the max `carga` in cursos*/
select nome, max(totaulas) from cursos where ano = '2016'; /*qual curso teve mais aulas em 2016*/

select sum(totaulas) from cursos where ano = '2016'; /*SUM*/

select avg(totaulas) from cursos where ano = '2016'; /*AVERAGE - get the average (média)*/