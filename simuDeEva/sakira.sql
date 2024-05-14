--EJ1--
SELECT rating, count(title) from film
GROUP by rating -- agrupa para ver cuantos elementos hay --
--eje2--
select c.name as categoria, count(f.title) as cant_pelis from category c
join film_category fc on c.category_id = fc.category_id
join film f on  fc.film_id = f.film_id
GROUP by c.name
order by cant_pelis DESC
--eje3--
SELECT a.first_name, a.last_name, count(f.title) as cant FROM actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
group by first_name
order by cant desc
limit 10

--EJE8--
SELECT cus.first_name, cus.last_name, ad.address ,city , country FROM customer cus
JOIN address ad on ad.address_id = cus.address_id
JOIN city ci on ci.city_id = ad.city_id
JOIN country cou on cou.country_id = ci.country_id
