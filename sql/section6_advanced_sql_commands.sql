SELECT SUM(p.amount), extract(month from p.payment_date) as month
FROM payment p
GROUP BY month
ORDER BY SUM(amount) DESC;

SELECT p.customer_id + rental_id as new_id
FROM payment p;

SELECT ROUND(AVG(p.amount),2)
FROM payment p;

SELECT c.first_name || ' ' ||c.last_name as full_name
FROM customer as c;

SELECT c.first_name, char_length(c.first_name)as name_length
FROM customer as c
ORDER BY name_length;

SELECT film_id, title, rental_rate
FROM film f
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT inventory.film_id
FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE rental.return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT film_id,title
FROM film
WHERE film_id IN (
	SELECT inventory.film_id
	FROM rental
	JOIN inventory ON inventory.inventory_id = rental.inventory_id
	WHERE rental.return_date BETWEEN '2005-05-29' AND '2005-05-30'
);

SELECT a.first_name, a.last_name, b.first_name, b.last_name
FROM customer AS a 
JOIN customer AS b
ON a.first_name = b.last_name;






























































































































































