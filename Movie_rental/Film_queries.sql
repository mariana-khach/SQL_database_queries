SHOW TIMEZONE;

SELECT NOW();

SELECT CURRENT_DATE;

SELECT CURRENT_TIME;

SELECT EXTRACT(QUARTER FROM payment_date) AS my_year FROM payment;

SELECT AGE(payment_date) FROM payment;

SELECT TO_CHAR(payment_date,'MM/dd/ YYYY') FROM payment;

SELECT TO_CHAR(payment_date,'MONTH') FROM payment
	GROUP BY TO_CHAR(payment_date,'MONTH');

SELECT TO_CHAR(payment_date,'DAY'),count(*) FROM payment
WHERE TO_CHAR(payment_date,'DAY') ILIKE '%Monday%'
GROUP BY TO_CHAR(payment_date,'DAY');

SELECT round(rental_rate/replacement_cost,2)*100  FROM film;

SELECT CONCAT(first_name,' ',last_name) FROM customer;

SELECT LENGTH(first_name) FROM customer;

SELECT first_name || ' '  || last_name as full_name FROM customer;

SELECT upper(first_name) || ' '  || lower(last_name) as full_name FROM customer;

SELECT LOWER(LEFT(first_name,1)) || '.' || lower(last_name) ||'@gmail.com' from customer;


SELECT film_id, title from film
WHERE film_id IN
(SELECT inventory.film_id FROM rental
JOIN inventory ON inventory.inventory_id=rental.inventory_id	
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id;


SELECT f1.title,f2.title, f1.length 
FROM film  AS f1
JOIN film AS f2 ON
f2.film_id<>f1.film_id AND f1.length=f2.length;


SELECT first_name,last_name FROM customer AS c
WHERE EXISTS 
	(SELECT * FROM payment AS p
	WHERE p.customer_id = c.customer_id
	AND amount>11);



