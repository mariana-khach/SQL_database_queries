WITH row_CTE AS(
    SELECT  first_name,last_name,ROW_NUMBER() OVER(PARTITION BY store_id ORDER BY customer_id) AS RN
    FROM customer 
)
SELECT * FROM row_CTE
WHERE RN = 1; 

WITH my_Nactor_cte AS(
	SELECT title, count(actor_id) AS N_actor FROM film
	JOIN film_actor ON film.film_id=film_actor.film_id	
	GROUP BY title
)
SELECT * from my_Nactor_cte
	WHERE N_actor>5;


WITH my_address_cte AS(
SELECT first_name,last_name,store_id FROM customer
JOIN address ON customer.address_id=address.address_id	
WHERE district='California'
)
SELECT count(first_name) FROM my_address_cte
GROUP BY store_id;



