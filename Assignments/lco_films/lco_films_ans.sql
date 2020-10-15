-- TODO: Which categories of movie released in 2018? Fetch with the number of movies.

-- SELECT DISTINCT category.name, category.category_id, film.release_year, COUNT(category.category_id) AS no_of_films
-- FROM ((category
-- LEFT JOIN film_category ON category.category_id = film_category.category_id)
-- RIGHT JOIN film ON film.film_id = film_category.film_id) 
-- where film.release_year = '2018' GROUP BY category.category_id; 


-- TODO: Update the address of actor with id 36 to "677 Jazz Street".

-- 1. Selecting the address

-- SELECT actor.actor_id, CONCAT(actor.first_name, " ", actor.last_name) AS full_name, address.address 
-- FROM actor
-- INNER JOIN address ON actor.address_id = address.address_id
-- WHERE actor.actor_id = 36;

-- 2. Updating the address

-- UPDATE `address` 
-- INNER JOIN actor ON actor.address_id = address.address_id
-- SET `address` = "677 Jazz Street" 
-- WHERE actor.actor_id = 36;


-- TODO: Add the new actors(id: 105, 95) in film ARSENIC INDEPENDENCE (id: 41)

-- INSERT INTO film_actor(actor_id, film_id) 
-- VALUES(105, 41), (95, 41)
-- ON DUPLICATE KEY UPDATE film_id = VALUES(film_id), actor_id = VALUES(actor_id);


-- TODO: Get the name of films of actors who belongs to india.

-- SELECT DISTINCT film.title, film.film_id
-- FROM (((((film
-- INNER JOIN film_actor ON film_actor.film_id = film.film_id)
-- INNER JOIN actor ON actor.actor_id = film_actor.actor_id)
-- INNER JOIN address ON address.address_id = actor.address_id)
-- INNER JOIN city ON city.city_id = address.city_id)
-- INNER JOIN country ON country.country_id = city.country_id)
-- WHERE country.country = "India";


-- TODO: How many actors are from United States?

-- SELECT COUNT(*) AS "No. of actors from United States"
-- FROM (((actor
-- INNER JOIN address ON actor.address_id = address.address_id)
-- INNER JOIN city ON city.city_id = address.city_id)
-- INNER JOIN country ON country.country_id = city.country_id)
-- WHERE country.country = "United States";


-- TODO: Get all languages in which films are released in the year between 2001 and 2010

-- SELECT language.language_id, language.name, COUNT(language.language_id) AS no_of_films
-- FROM (language
-- LEFT JOIN film ON film.language_id = language.language_id)
-- WHERE film.release_year BETWEEN 2001 AND 2010 
-- GROUP BY language.language_id;


-- TODO: THe film ALON TRIP (id: 17) was actually released in Mandarin, update the info.

-- SELECT * FROM film WHERE film_id = 17;
-- SELECT * FROM language WHERE name = "Mandarin";
-- SELECT language_id FROM film WHERE film_id = 17;

-- My ans:
-- UPDATE film set language_id = 4 WHERE film_id = 17;

-- LCO ans:
-- UPDATE `film` 
-- SET language_id = (SELECT language.language_id 
-- FROM language
-- WHERE language.name = "Mandarin")
-- WHERE film.film_id = 17;


-- TODO: Fetch cast details of films released during 2005 and 2015 with PG rating.



-- TODO: In which year most films where released?

-- SELECT release_year, COUNT(*) AS no_of_films FROM film 
-- GROUP BY release_year
-- ORDER BY no_of_films desc LIMIT 1;

-- SELECT film.release_year, COUNT(film.release_year) AS no_of_films FROM
-- `film` GROUP BY (film.release_year) ORDER BY COUNT(film.release_year) DESC LIMIT 1;