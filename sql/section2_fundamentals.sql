SELECT first_name, last_name, email
FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT title, description
FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone
FROM address
WHERE address.address = '259 Ipoh Drive';

SELECT COUNT(DISTINCT(amount)) FROM payment;

SELECT * FROM customer LIMIT 5;

SELECT first_name, last_name, email
FROM customer
ORDER BY email DESC;

SELECT first_name, last_name
FROM customer
ORDER BY first_name ASC, last_name DESC;


SELECT first_name
FROM customer
ORDER BY last_name DESC;

SELECT customer_id, amount
FROM payment
ORDER BY amount DESC
LIMIT 10;

SELECT title, film_id
FROM film
WHERE film_id <= 5 AND film_id >=0;

SELECT title, film_id
FROM film
WHERE film_id NOT BETWEEN 1 AND 5
ORDER BY film_id;

SELECT customer_id, rental_id, return_date 
FROM rental
WHERE customer_id NOT IN (1,2,3)
ORDER BY return_date DESC;

SELECT * FROM payment 
WHERE amount IN (7.99, 8.99);

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'B%y';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_obb%';

SELECT first_name, last_name
FROM customer
WHERE first_name NOT ILIKE '_A%';

-- General Challenge Task

SELECT COUNT(amount)
FROM payment
WHERE amount > 5;

SELECT COUNT(*)
FROM actor
WHERE first_name ILIKE('p%');

SELECT COUNT(DISTINCT (district))
FROM address;

SELECT DISTINCT (district)
FROM address
ORDER BY district;

SELECT COUNT(*)
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

SELECT COUNT(*)
FROM film
WHERE title ILIKE('%truman%');














