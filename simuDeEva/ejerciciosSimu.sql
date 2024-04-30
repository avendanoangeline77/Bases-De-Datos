---Ejercicio 1 --
SELECT title FROM film 
ORDER by title
--Ejer 2 group by = para no repetirce as = cambia columna--
SELECT rating as calificaciones FROM film 
GROUP by rating
ORDER by rating
--Eje 3 --
SELECT  rental_rate, title ,rating FROM film where rating = "PG" or "PG13"
ORDER by rental_rate DESC, title
---Eje 4--
SELECT co.country, ci.city FROM country co 
join city ci on co.country_id = ci.country_id


--Eje 5--
SELECT cou.country, count(cit.city) FROM country cou 
join city cit on cou.country_id = cit.country_id
GROUP by cou.country
ORDER by count(cit.city) DESC


--EJE 6--
SELECT cou.country as pais, count(cit.city) as ciudades FROM country cou 
join city cit on cou.country_id = cit.country_id
GROUP by cou.country
HAVING ciudades> 2 --PARA AGRUPAR como where,siempre entre group by y order by--
ORDER by ciudades DESC


--EJE 7--
SELECT min(rental_date), max(rental_date) FROM rental WHERE return_date is not NULL
--is null= cuando esta vacia is not null = es cuando no esta vacia--






