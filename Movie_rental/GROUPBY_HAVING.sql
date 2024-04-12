SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount);


SELECT customer_id, staff_id,SUM(amount)FROM payment
GROUP BY staff_id,customer_id
ORDER BY customer_id;

SELECT DATE(payment_date),SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount);

SELECT customer_id,SUM(amount) FROM payment
WHERE customer_id NOT IN (184,87,477)
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id, COUNT(customer_id)   FROM customer
GROUP BY store_id
HAVING COUNT(*)>300;

SELECT staff_id,count(payment_id) FROM payment
GROUP BY staff_id
ORDER BY count(rental_id);

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating
ORDER BY ROUND(AVG(replacement_cost),2);

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id 
ORDER BY SUM(amount) DESC
LIMIT 5;

SELECT customer_id, COUNT(*) FROM payment
GROUP BY  customer_id
HAVING COUNT(*)>=40;

SELECT customer_id,SUM(amount) FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount)>100;

