SELECT *
FROM payment
LIMIT 5;

SELECT ROUND(AVG(amount),2)
FROM payment;

SELECT MIN(amount)
FROM payment;

SELECT amount
FROM payment
ORDER BY amount;

SELECT SUM(amount)
FROM payment;

SELECT customer_id
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id;

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;

SELECT rental_duration, COUNT(rental_duration)
FROM film
GROUP BY rental_duration;

SELECT AVG(rental_rate), rating
FROM film
GROUP BY rating;

SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id;

SELECT staff_id, COUNT(payment_id), SUM(amount)
FROM payment
GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount) as amt
FROM payment
GROUP BY customer_id
ORDER BY amt DESC
LIMIT 5;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

SELECT rating, ROUND(AVG(rental_rate),2)
FROM film
WHERE rating IN('R','G','PG')
GROUP BY rating
HAVING AVG(rental_rate) < 3;

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

SELECT rating, ROUND(AVG(rental_duration),2)
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;

-- Assessment Test

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

SELECT COUNT(title)
FROM film
WHERE title ILIKE('j%');

SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE('e%') AND address_id < 500
ORDER BY customer_ID DESC
LIMIT 1;


















































































































































































































































































