-- We cann't use WHERE to filter based off aggregate results, because those happen after a WHERE is executed.
-- HAVING - help us to filter after an aggregation has already taken place.
-- HAVING - can be used along with GROUP BY to filter aggregate result.
SELECT rating, SUM(replacement_cost) FROM film
GROUP BY rating
HAVING SUM(replacement_cost) > 4000;