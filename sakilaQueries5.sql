-- Part 1
-- Run a query that creates a table named Authors that has the following columns: AuthorID, FullName, BirthCountry.

-- AuthorID is the primary key and auto increments.

-- Add the following Authors table:
-- FullName	BirthCountry
-- Jane Austen	England
-- Charles Dickens	England
-- Mark Twain	United States
-- Run a query to see all of the authors within the database.

CREATE TABLE Authors(
AuthorID INTEGER PRIMARY KEY AUTO_INCREMENT,
FullName VARCHAR(50) NOT NULL,
BirthCountry VARCHAR(50) NOT NULL
);

INSERT INTO Authors (FullName, BirthCountry)
values 
("Jane Austen", "England"),
("Charles Dickens", "England"),
("Mark Twain", "United States");

SELECT *
FROM Authors;




-- Part 2
-- Run a query that creates a table named Books that has the following columns: BookID, Name, AuthorID.

-- BookID is the primary key and auto increments.
-- AuthorID is a foreign key that referenced the Authors table on the AuthorID column.
-- Add the following the Books table:

-- Name	AuthorID
-- Pride and Prejudice	1
-- Sense and Sensibility	1
-- The Pickwick Papers	2
-- Run a query to see all of the books within the database.

CREATE TABLE Books(
BookID INTEGER PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
AuthorID INTEGER NOT NULL,
FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Books (Name, AuthorID)
values 
("Pride and Prejudice", 1),
("Sense and Sensibility", 1),
("The Pickwick Papers", 2);

SELECT *
FROM Books;




-- Part 3
-- Run a query that joins the Authors and Books table together using the AuthorID foreign key.

-- Next, create a view named AuthorBooks using the join query created in step 1 adding the following parameters:

-- Show only the Authors full name and book name.
-- Rename the column name results using the AS keyword.
-- The Authors FullName should display as AuthorName.
-- The Books Name should display as BookName.
-- Order the results alphabetically by the authors full name.
-- Lastly, run a query to see the view you just created.


CREATE VIEW AuthorBooks as
SELECT FullName AS AuthorName, Name AS BookName
FROM Authors
JOIN Books USING(AuthorID)
ORDER BY AuthorName;

SELECT *
FROM AuthorBooks;





