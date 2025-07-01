--1.
select
	count(*)
from
	film f
inner join "language" l 
on
	f.language_id = l.language_id
where
	l."name" = 'português';



--2.
select
	count(*)
from
	customer c
inner join rental r 
on
	r.customer_id = c.customer_id
inner join inventory i 
on
	r.inventory_id = i.inventory_id
inner join film f 
on
	f.film_id = i.film_id
where
	f."film_id" = 7;



--3.
select
	count(*) as "qtd de alugueis"
from
	rental r; -- as e "" serve para apelidar uma coluna 

	
	
--4.
select
	f.title as "titulo",
	replacement_cost as " custo de reposição"
from
	film f
where
	f.film_id = '600';



--5.
select
	s.first_name,
	s.last_name,
	count(r.rental_id) as "qtd de filmes alugados"
from
	staff s
inner join rental r on
	s.staff_id = r.staff_id
group by
	s.first_name,
	s.last_name
order by
	count(r.rental_id) desc
limit 1;



--6
select
	a.address as "endereço" ,
	count(*) as "qtd de funcionários"
from
	staff sta
inner join store sto
on
	sta.store_id = sto.store_id
inner join address a 
on
	a.address_id = sto.address_id
group by
	a.address; 



--7.
select
	f.title as "titulo",
	l."name" as "idioma",
	f.replacement_cost as "custo de reposição",
	r.rental_date as "data do aluguel",
	c.first_name as "nome do cliente",
	s.first_name as "nome do funcionário",
	s2.store_id as "id da loja", 
	f.rental_rate as "preço do aluguel"
from
	film f
inner join "language" l 
on
	l.language_id = f.language_id
inner join inventory i 
on
	i.film_id = f.film_id
inner join rental r 
on
	r.inventory_id = i.inventory_id
inner join customer c 
on
	c.customer_id = r.customer_id
inner join staff s 
on
	s.staff_id = r.staff_id
inner join store s2 
on
	s2.store_id = s.store_id
order by
	r.rental_date desc
limit 1;



--8.
select
	count (*) as "qtd de atores"
from
	film_actor fa
where
	fa.film_id = 1; 

	

--9.
select
	s.store_id as "id da loja",
	count(i.inventory_id) as " qtd de inventário"
from
	store s
inner join staff s2 
on
	s2.store_id = s.store_id
inner join rental r 
on
	r.staff_id = s2.staff_id
inner join inventory i 
on
	i.inventory_id = r.inventory_id
group by
	s.store_id
order by
	count(i.inventory_id) desc
limit 1;

	



