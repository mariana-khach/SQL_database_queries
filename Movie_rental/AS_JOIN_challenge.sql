SELECT email FROM customer
JOIN address on customer.address_id=address.address_id
WHERE district='California';

SELECT film.title FROM film
JOIN film_actor ON film.film_id=film_actor.film_id
JOIN actor ON film_actor.actor_id=actor.actor_id
WHERE actor.first_name='Nick' AND actor.last_name='Wahlberg';

SELECT customer_id,SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id=payment.customer_id
WHERE customer.customer_id IS NULL
OR payment.payment_id IS NULL;

SELECT film.film_id,title,inventory_id,store_id
FROM film
LEFT JOIN inventory ON
inventory.film_id=film.film_id
WHERE inventory.film_id IS NULL;



