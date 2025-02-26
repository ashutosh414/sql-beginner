use test1;
create table employee1(eid int);
insert into employee1 values(2147483647);
insert into employee1 values(2147483648); -- Outof range
insert into employee1 values(-2147483649); -- Outof range
select * from employee1;

create table employee2(eid int(4) zerofill);
insert into employee2 values(21);
insert into employee2 values(2); 
insert into employee2 values(483649);
select * from employee2;

create table employee3(eid int unsigned);
insert into employee3 values(-1); -- Out of range
insert into employee3 values(3278892309); 
insert into employee3 values(0);
insert into employee3 values(4294967295);
insert into employee3 values(4294967296); -- out of range
select * from employee3;

-- TinyInt -> Boolean Values are stored here. 0 as False and 1 as True.
-- tinyInt 		1 byte
-- smallInt 	2 byte
-- mediumInt 	3 byte
-- Int       	4 byte
-- bigInt    	8 byte

create table employeeTinyInt(eid);
insert into employeeTinyInt values(-1); -- Out of range
insert into employeeTinyInt values(3278892309); 
insert into employeeTinyInt values(0);
insert into employeeTinyInt values(4294967295);
insert into employeeTinyInt values(4294967296); -- out of range
select * from employeeTinyInt;

-- Float and Double
create table employeeFloat(e_float float);
insert into employeeFloat values(15.3453434534);
select * from employeeFloat;

create table employeeFloat1(e_float float(4,2));
insert into employeeFloat1 values(1675.3453434534);
insert into employeeFloat1 values(15);
insert into employeeFloat1 values(1675); -- Out of range because the real digit size is 2 and number of decimal digits are also 2.
select * from employeeFloat1;




-- varchar -> variable length character
-- char    -> fixed length character

create table employeeChar(e_char char(4));
insert into employeeChar values('z');
insert into employeeChar values('z    ');
insert into employeeChar values('  z    ');
select e_char,length(e_char),char_length(e_char) from employeeChar;


create table employeeVar(e_var varchar(4));
insert into employeeVar values('z');
insert into employeeVar values('zsadasdas    ');
insert into employeeVar values('z            ');
select e_var,length(e_var),char_length(e_var) from employeeVar;


-- date
create table t_date(dob date);
insert into t_date values('2022-05-12');
select * from t_date;


Blob data type .
How we store images in mySQL.


Here are some basic interview questions for MySQL that are commonly asked:

-- 1. What is MySQL?
-- MySQL is an open-source relational database management system (RDBMS) that uses Structured Query Language (SQL) to manage and manipulate data in a relational database.
-- 2. What are the different types of joins in MySQL?
-- INNER JOIN: Returns rows that have matching values in both tables.
-- LEFT JOIN (or LEFT OUTER JOIN): Returns all rows from the left table and matched rows from the right table.
-- RIGHT JOIN (or RIGHT OUTER JOIN): Returns all rows from the right table and matched rows from the left table.
-- FULL JOIN (or FULL OUTER JOIN): Returns all rows when there is a match in one of the tables.
-- CROSS JOIN: Returns the Cartesian product of two tables.
-- 3. What is normalization? Explain different normal forms.
-- Normalization is the process of organizing data in a database to avoid redundancy and improve data integrity. There are different normal forms:
-- 1NF (First Normal Form): Eliminate repeating groups; each column must contain atomic values.
-- 2NF (Second Normal Form): Eliminate partial dependency; all non-key columns must depend on the entire primary key.
-- 3NF (Third Normal Form): Eliminate transitive dependency; non-key columns must not depend on other non-key columns.
-- BCNF (Boyce-Codd Normal Form): A stronger version of 3NF; every determinant must be a candidate key.
-- 4NF (Fourth Normal Form): Eliminate multi-valued dependencies.
-- 4. What are indexes in MySQL?
-- Indexes are used to speed up the retrieval of rows from a database table. They allow MySQL to find data without scanning the entire table. Common types include:
-- PRIMARY KEY: A unique identifier for each record.
-- UNIQUE INDEX: Ensures that all values in a column are different.
-- FULLTEXT INDEX: Used for text searching.
-- INDEX: General-purpose index that helps speed up SELECT queries.
-- 5. What is the difference between CHAR and VARCHAR in MySQL?
-- CHAR: Fixed-length string. It reserves a fixed amount of space regardless of the actual string length.
-- VARCHAR: Variable-length string. It only uses as much space as needed for the actual data.
-- 6. What is a foreign key in MySQL?
-- A foreign key is a column or a set of columns in a table that links to the primary key of another table. It enforces referential integrity between the two tables.
-- 7. What is the difference between DELETE and TRUNCATE in MySQL?
-- DELETE: Deletes rows from a table one at a time and can be rolled back if used within a transaction.
-- TRUNCATE: Deletes all rows from a table without logging individual row deletions, and it cannot be rolled back.
-- 8. What is the purpose of GROUP BY in MySQL?
-- The GROUP BY statement groups rows that have the same values into summary rows, like finding the sum or average of a set of values.
-- 9. What is the difference between HAVING and WHERE clauses?
-- WHERE: Filters records before any groupings are made (used for rows).
-- HAVING: Filters records after grouping is done (used for groups).
-- 10. Explain the concept of ACID properties in a database.
-- ACID stands for:
-- Atomicity: Ensures that all operations in a transaction are either fully completed or none are.
-- Consistency: Ensures that a transaction brings the database from one valid state to another.
-- Isolation: Ensures that the operations of one transaction are isolated from others.
-- Durability: Ensures that the results of a transaction are permanent, even in the case of a system failure.
-- 11. What is a subquery in MySQL?
-- A subquery is a query nested inside another query. It can be used in SELECT, INSERT, UPDATE, or DELETE statements.
-- 12. What is the AUTO_INCREMENT attribute in MySQL?
-- The AUTO_INCREMENT attribute is used to automatically generate a unique number for a column, often used for primary keys.
-- 13. What is the LIMIT clause in MySQL?
-- The LIMIT clause is used to specify the number of records to return from a query result.
-- 14. Explain the concept of NULL in MySQL.
-- NULL represents the absence of a value in a column. It is different from an empty string or zero, and special care is needed when querying NULL values.
-- 15. How would you optimize a slow MySQL query?
-- You can optimize a slow query by:
-- Analyzing and indexing frequently used columns.
-- Using EXPLAIN to check query execution plans.
-- Avoiding unnecessary joins or subqueries.
-- Caching results for frequently requested data.
-- Analyzing and optimizing the database schema.
-- 16. What is the difference between IN and EXISTS in SQL?
-- IN: Compares a value to a list of values.
-- EXISTS: Tests for the existence of rows returned by a subquery.
-- 17. What is a transaction in MySQL?
-- A transaction is a sequence of operations performed as a single unit. If one part of the transaction fails, the whole transaction is rolled back, ensuring data integrity.
-- 18. What is the difference between JOIN and UNION in MySQL?
-- JOIN: Combines columns from multiple tables based on a related column.
-- UNION: Combines rows from multiple result sets, removing duplicates (unless UNION ALL is used).
-- These questions will help you get started with basic MySQL concepts and are commonly asked in entry-level MySQL-related interviews.
