-- Part 1
-- Run the following queries:

-- Write a query to find the first and last name, customer ID and rental ID for customers who have rented a film.
SELECT first_name, last_name, customer_id, rental_id 
FROM sakila.customer
JOIN sakila.rental USING (customer_id);


-- Write a query that finds all films with actors that have an actor_id 5.
SELECT * 
FROM sakila.film
JOIN sakila.film_actor USING (film_id)
WHERE actor_id = 5;

-- Write a query that lists out all information of every film along with the name of the language for each film, even if a language doesn't exist for that film.
SELECT * 
FROM sakila.film
JOIN sakila.language USING (language_id);

-- Write a query that lists out the title of films and the name of the actors who starred in those films. 
-- Additionally, only list films that starred artists whose first names start with a vowel.
SELECT title, first_name, last_name 
FROM sakila.film
JOIN sakila.film_actor USING (film_id)
JOIN sakila.actor USING (actor_id)
WHERE first_name LIKE 'a%' 
	OR first_name LIKE 'e%'
	OR first_name LIKE 'i%' 
    OR first_name LIKE 'o%' 
    OR first_name LIKE 'u%';
    
    
    
    
-- Part 2

-- You have just been hired as a Data Analyst for a company that rents films to customers. 
-- They would like an inventory list of films that were rented for more than $4.99.

SELECT * 
FROM sakila.inventory
JOIN sakila.rental USING (inventory_id)
JOIN sakila.payment USING (rental_id)
WHERE amount > 4.99;



  
    
    
    
    
    
    
