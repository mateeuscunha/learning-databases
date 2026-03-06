select `nome`, `carga`, count(nome) from cursos /*GROUP BY*/
group by `carga`;

select `carga`, count(*) from `cursos` where `totaulas` = '30'
group by carga
having count(`nome`) > '3'; /*me mostre somente aqueles cursos que tem mais de três agrupados*/

select `ano`, count(*) from cursos
group by `ano`
having count(`ano`) >= 5 /*o having só é usado em colunas que estão agrupadas*/
order by count(*) desc;

select avg(`carga`) from cursos; /*média de todos os cursos*/

select `carga`, count(*) from cursos
where `ano` > '2015'
group by `carga`
having `carga` > (select avg(`carga`) from cursos);
