-- Find out how many films there are for each rating
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating

-- Filter this list further: look for only movies that are under 2 hours long, and whose rental price (rental_rate) is under 3.00
SELECT *
FROM film
WHERE rating IN ('G', 'PG-13') AND rental_rate < 3 AND rental_duration < 2
ORDER BY title ASC

-- Find a customer in the customer table, and change his/her details to your details, using SQL UPDATE
UPDATE customer
SET first_name = 'Michael', last_name = 'Yaps', email = 'michaelyaps@gmail.com'
WHERE customer_id = 5;

-- Now find the customer’s address, and use UPDATE to change the address to your address
UPDATE customer
SET address_id = 3
WHERE customer_id = 5;



