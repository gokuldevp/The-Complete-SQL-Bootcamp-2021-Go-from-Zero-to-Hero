-- Challenge 1 - How many payments did each staff member handle and who gets the bonus?
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC;

-- Challenge 2 - What is the average replacement cost per MPAA rating?
SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost);

-- Challenge 3 - What are the customer ids of the top 5 customers by total spending?
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;