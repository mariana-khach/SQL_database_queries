Select first_name,last_name,email from customer;

Select DISTINCT(release_year) from film;

SELECT DISTINCT(rental_rate)  FROM film;

SELECT DISTINCT(rating) FROM film;

SELECT count(*) FROM payment;

SELECT COUNT(DISTINCT amount) FROM payment;

SELECT * FROM customer
WHERE first_name='Jared';

SELECT count(*) FROM film
WHERE rental_rate>4 AND replacement_cost>=19.99
	AND rating='R';


SELECT * FROM film
WHERE rating<>'R';


SELECT first_name,last_name, email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas';

SELECT description from film
where title='Outlaw Hanky';

SELECT phone FROM address WHERE address='259 Ipoh Drive';

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

SELECT * FROM payment
WHERE amount <>0.00
ORDER BY payment_date DESC 
LIMIT 5;

SELECT DISTINCT payment_date,customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

SELECT DISTINCT  title,length FROM film
ORDER BY length
LIMIT 5;


SELECT COUNT(*) FROM film
WHERE length<=50;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

SELECT * FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John','Jake','Julie');


SELECT COUNT(*) FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name NOT LIKE '_her%';

SELECT COUNT(*) FROM payment
WHERE amount>5;

SELECT COUNT(*) FROM actor 
WHERE first_name  LIKE 'P%';

SELECT COUNT(DISTINCT district) FROM address;

SELECT DISTINCT district FROM address;

SELECT count(*)  from film
WHERE rating='R' AND replacement_cost BETWEEN 5 AND 15;

SELECT count(*) from film
WHERE title ILIKE '%Truman%';
