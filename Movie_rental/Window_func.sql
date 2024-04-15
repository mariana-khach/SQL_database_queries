WITH custrent_cte AS(
SELECT customer.first_name,customer.last_name, rental_date FROM customer
JOIN rental ON rental.customer_id=customer.customer_id
)
SELECT first_name,last_name,
	rental_date-lag(rental_date) OVER(ORDER BY rental_date) AS time_diff FROM custrent_cte;


SELECT * FROM(
WITH rentpay_cte AS(
SELECT title, rating,rental_date FROM customer
JOIN rental ON rental.customer_id=customer.customer_id
JOIN inventory ON rental.inventory_id=inventory.inventory_id
JOIN film ON film.film_id=inventory.film_id
)
SELECT title,
	ROW_NUMBER() OVER(PARTITION BY rating ORDER BY rental_date) AS rownum
	FROM rentpay_cte
		WHERE (rating='PG' OR rating='PG-13') 
) AS t
WHERE t.rownum=1 ;
