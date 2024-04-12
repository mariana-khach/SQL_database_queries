WITH custrent_cte AS(
SELECT customer.first_name,customer.last_name, rental_date FROM customer
JOIN rental ON rental.customer_id=customer.customer_id
)
SELECT first_name,last_name,
	rental_date-lag(rental_date) OVER(ORDER BY rental_date) FROM custrent_cte;