-- 1. California sales tax laws have changed and we need to alert our customers to this through email.
--    What are the emails of customers who lives in California?
SELECT district, email FROM customer AS cust
INNER JOIN address AS addr
ON addr.address_id = cust.address_id
WHERE district = 'California';

-- 2. A customer walks in and is a huge fan of the actor "Nick Wahlberg" and wants to know which movies he is in.
--    Get a list of all the movies "Nick Wahlberg" has been in?
SELECT title, first_name, last_name FROM film
INNER JOIN film_actor
ON film_actor.film_id = film.film_id
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id 
WHERE first_name='Nick' AND last_name='Wahlberg';