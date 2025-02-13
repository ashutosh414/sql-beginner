show databases;
use sakila;

show tables;

-- featch description of actor table 
describe actor;

-- fetch all the data from actor table 
select * from actor;

-- featch selected columns
select actor_id,last_name from actor;

select actor_id,first_name, Actor_iD*100 as newActorID from actor;

 -- Filter Condition 
 select * from actor where actor_id<>2;
 -- >, <, <=, >=, =, <> ,!=
 --  operator =>  between , in and like
 
 -- between => range of values
 select * from actor
	where actor_id between 1 and 5; 

-- in => 
 select * from actor
	where actor_id in (2,5,500);
    
-- get the actor id first name only for first use where first name is NICK and ED.
SELECT * from actor where first_name in ('NICK','ED');

-- LIKE => 
	select * from actor where first_name ='E';
    
    -- starting char is E
    select * from actor where first_name like 'E%';

select * from actor where first_name like '%E';

select * from actor where first_name like 'S%Y';

select * from actor where first_name like 'A%A';

select * from actor where first_name like 'E_';

select * from actor where first_name like '_A%';

-- get those name whoes first name have only 4 character
select * from actor 
	where first_name like '____';
-- get all the info from actor table where last 3rd word is 'I'.
select * from actor 
	where first_name like '%I__';
-- you have latter E in middle.
select * from actor 
	where first_name like '%E%';
--  that those uesr that have atlest 4 latter and last 3rd latter R
select * from actor 
	where first_name like '%_R__ ';
 -- EE present in middle the first name 
 select * from actor 
	where first_name like '_%EE%_';
--  2nd latter is H and 2nd last letter Z
select * from actor 
	where first_name like '_H%Z_';
    
-- Assignment

-- SQl Types of Language
-- DBMS vs RDBMS
-- funtions(string funtions)
-- how to read wildcard character + 3 sting funtions video

-- Practice on SqlZOO
-- 1. SELECT name