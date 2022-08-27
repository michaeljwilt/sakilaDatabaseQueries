-- Part 1
-- Run the following queries:

-- Write a query that Inserts a new actor into the database. Once you have completed the insert, write a query to view all information for that specific actor.
INSERT INTO actor (first_name, last_name) 
VALUES ("Michael", "Wont");

SELECT * 
FROM actor 
WHERE first_name = "Michael" AND last_name = "Wont";

-- Write a query to Update the actor that you just inserted. 
-- Give your new actor a first_name of Emmy and a last_name of Rock. When you have completed that update, run another query to see your updated actor.
UPDATE actor 
SET first_name = "Emmy", last_name = "Rock" 
WHERE actor_id = 203;

SELECT * 
FROM actor 
WHERE actor_id = 203;

-- Write a query that finds all staff that do not have a value specified for password.
SELECT *
FROM sakila.staff
WHERE password is NULL;

-- Write a query that finds all staff's information that has a value for first_name and store_id.
SELECT *
FROM sakila.staff
WHERE first_name IS NOT NULL
	AND store_id IS NOT NULL;


-- Write a query that updates all people with a Null value in the address2 column. 
-- If the district is Alberta, put address2 as Canada, and if the district is QLD, put Australia.
UPDATE address
SET address2 = "Canada"
WHERE district = "Alberta";

UPDATE address
SET address2 = "Australia"
WHERE district = "QLD";


















