-- Challenge 1 - We are assigning platinum status to customers that have 40 or more transaction payments, find their customer ids?
SELECT customer_id, COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;

-- Challenge 2 - what are the customer ids of customers who have spend more than $100 in payment transactions with our staff_id memner 2?
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id =2 
GROUP BY customer_id
HAVING SUM(amount) >= 100
ORDER BY SUM(AMOUNT);