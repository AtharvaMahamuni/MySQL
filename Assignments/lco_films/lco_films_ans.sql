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

-- SELECT CONCAT(actor.first_name, " ", actor.last_name) AS cast_name, film.title, film.release_year, film.rating 
-- FROM ((film
-- INNER JOIN film_actor ON film_actor.film_id = film.film_id)
-- INNER JOIN actor ON actor.actor_id = film_actor.actor_id) 
-- WHERE film.rating = "PG" AND film.release_year BETWEEN 2005 AND 2015;


-- TODO: In which year most films where released?

-- SELECT release_year, COUNT(*) AS no_of_films FROM film 
-- GROUP BY release_year
-- ORDER BY no_of_films desc LIMIT 1;

-- SELECT film.release_year, COUNT(film.release_year) AS no_of_films FROM
-- `film` GROUP BY (film.release_year) ORDER BY COUNT(film.release_year) DESC LIMIT 1;


-- TODO: In which year least no. of films where released

-- SELECT film.release_year, COUNT(film.release_year) AS no_of_films
-- FROM film GROUP BY release_year ORDER BY COUNT(release_year) ASC LIMIT 1;


-- TODO: Get the details of the film with maximum length released in 2014

-- SELECT film.title, film.release_year, film.length, film.description 
-- FROM film
-- WHERE film.release_year = 2014 ORDER BY film.length DESC LIMIT 1;


-- TODO: Get all Sci-Fi movies with NC-17 rating and language they are screened in.

-- SELECT film.title, category.name, film.rating , language.name 
-- FROM (((film
-- LEFT JOIN film_category ON film_category.film_id = film.film_id)
-- LEFT JOIN category ON category.category_id = film_category.category_id)
-- RIGHT JOIN language ON film.language_id = language.language_id)
-- WHERE category.name="sci-fi" AND film.rating = "nc-17";

-- TODO: The actor FRED COSTNER(ID: 16) shifted to a new address:
--      055, Piazzale Michelangelo, Postal Code - 50125, District - Rifredi at Florence, Italy.
--      Insert the new city and update the address of actor.

-- SELECT * FROM actor WHERE actor_id = 16;
-- SELECT * FROM address WHERE address_id = 65;
-- SELECT * FROM city WHERE city LIKE "F%";
-- SELECT * FROM country where country_id = "24";
-- Florence is not present in our city data base so first we need to insert this city into database

-- FIXME: step 1:

-- INSERT INTO `city`(`city`, `country_id`)
-- VALUES("Florence", (SELECT country_id FROM `country` WHERE country.country = "Italy"));

-- FIXME: step 2:
-- TO SEE ACTOR DETAILS.

-- SELECT CONCAT(actor.first_name, " ", actor.last_name) AS actor_name, address.address, address.district, address.city_id, address.postal_code, city.city, country.country 
-- FROM(((address
-- RIGHT JOIN actor ON actor.address_id = address.address_id)
-- LEFT JOIN city ON city.city_id = address.city_id)
-- INNER JOIN country ON country.country_id = city.country_id)
-- WHERE actor.actor_id = 16;

-- TO UPDATE DATA

-- UPDATE `address` SET address.address="055, Piazzale Michelangelo", 
-- address.district="Rifredi", 
-- address.city_id=(SELECT city_id FROM city WHERE city ="Florence"), 
-- address.postal_code = 50125 
-- WHERE address.address_id =(SELECT `address_id` FROM `actor` WHERE actor.actor_id = 16);


-- TODO: A new film "No Time to Die" is releaing in 2020 whose details are:
--      Title:- No Time to Die
--      Description: Recruited tho rescue a kidnapped scientist, globe-trotting spy James Bond finds
--      himself hot on the trail of a mysterious villain, who's armed with a dangerous new technology.
--      Language: English
--      Org. Language: English
--      Length: 100
--      Rental duration: 6
--      Rental rate: 3.99
--      Rating: PG-13
--      Replacement cost: 20.99
--      Special Features: Trailer, Deleted Scenes

-- Insert the above data