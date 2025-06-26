select * from film; --seleciona todos os registros da tabela filme
select count (*) from film; --conta quantos filmes tem na tabela filme
select * from film f where f.title like 'G%'; --seleciona todos os filmes q começam com g maiusculo
select * from film f where f.description like '%a'; --seleciona todos os filmes que a discrição termina com a minusculo
select * from film f where f.title like '%j%'; --seleciona todos os filmes que tem j minusculo no meio do titulo
select * from film f where f.film_id =561; --seleciona o filme que tem id 561
select a.first_name, a.last_name from film f inner join film_actor fa on fa.film_id = f.film_id inner join actor a on fa.actor_id = a.actor_id where f.film_id = 561