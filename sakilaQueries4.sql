-- Part 1
-- Run the following queries:

-- Create a view named "initialCustomers" that shows the first name, last name, and email address of customers that have an id of less than 100. 
-- Once that is complete, select and view your newly created view.

CREATE VIEW initialCustomers AS
SELECT  first_name, last_name, email
FROM sakila.customer
WHERE customer_id < 100;

SELECT *
FROM initialCustomers;



-- Part 2
-- Complete the following:

-- Create a table named "ProductList". Include the following columns:
-- ProductId
-- ProductName
-- Price
-- DateAdded
-- EmployeeSupportId
-- Include the following requirements:

-- Every product should have an automatically generated id number that should be unique for each product.
-- Give each column a data type that would apply
-- Give the DateAdded column a default value for the current local time.
-- All columns CANNOT be null.
-- Next, insert one product into the table following the given guidelines when the table was created. 
-- When inserting the data, don't include the ProductId or the DateAdded. 
-- Finally, run a query to see the single product in your table.

CREATE TABLE ProductList (
	ProductId INTEGER UNIQUE AUTO_INCREMENT,
	ProductName VARCHAR(30) NOT NULL,
	Price NUMERIC NOT NULL,
	DateAdded DATETIME DEFAULT current_timestamp,
	EmployeeSupportId INTEGER NOT NULL);
    
INSERT INTO sakila.ProductList (ProductName, Price, EmployeeSupportId)
values("Cleaning Kit", 4.99, 2725894);
 
Select *
From sakila.ProductList;




