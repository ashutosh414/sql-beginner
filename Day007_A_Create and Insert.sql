create database test1;
use test1;
create table product(pid int,name varchar(20), price int);
insert into product values(10,'tv',100),(20,'apple',200),
(30,'mobile',300),(40,'shoe',1500);

select * from product;

create table orders(oid varchar(20), city varchar(20),
product_id int);
insert into orders values('A1012','Jaipur',10),
('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);
select * from orders;

-- Cross Join or cartisition Join
select pid ,name,price,city from product join orders;

-- Inner Join
	-- Eqi Join (old way) same as Inner Join 
select p.pid ,p.name,p.price,o.city 
from product as p join orders as o
where p.pid=o.product_id;

select p.pid ,p.name,p.price,o.city 
from product as p inner join orders as o
on p.pid=o.product_id;

-- LEFT Join
select p.pid ,p.name,p.price,o.city 
from product as p left join orders as o
on p.pid=o.product_id;

-- RIGHT Join
select p.pid ,p.name,p.price,o.city 
from product as p right join orders as o
on p.pid=o.product_id;

SELECT COUNT(*) 
FROM 
    (SELECT p.pid, p.name, o.city
     FROM product AS p, orders AS o) AS subquery;


-- Non -equi Join
select p.pid,p.name ,o.city 
from product as p , orders as o
where p.pid=o.product_id;

insert into orders values('E2132','JK',10),('F213','MH',30);
insert into product values(10,'Shirt',450);

SELECT count(*)
     FROM product as p;

SELECT count(*)
     FROM orders as o;

SELECT COUNT(*) 
FROM 
    (SELECT p.pid, p.name, o.city
     FROM product AS p, orders AS o) AS subquery;
     
     
describe orders;
-- change Column Name
alter table orders rename column product_id to pid;

-- Natural Join
select p.pid ,p.name,p.price,o.city 
from product as p natural join orders as o;

select p.pid ,p.name,p.price,o.city 
from product as p inner join orders as o
on p.pid=o.pid;

-- Self Join
-- when a table is match with it's own table

use test1;
create table staff(eid int,ename varchar(20),manager_id int);

insert into staff values(10,'tushar',null),(11,'aman',13),(12,'sakshi',10),
						(13,'shubham',11),(14,'ujjwal',12);
-- drop table staff;
select * from staff;

select e.eid,e.ename,e.manager_id,m.ename
from staff as e ,staff as m
where e.manager_id=m.eid;


-- Set operator 
-- set operator are special operator 

use sakila;
show tables;
select * from actor where actor_id in (2,3)
union
select * from actor where actor_id in (3,4);

-- Here actor_id (int) join with first_name (str) then new column will be string 
-- it will for both the colum actor_id and first_name;
select actor_id,first_name,last_name,last_update from actor where actor_id in (2,3)
union
select first_name,actor_id,last_name,last_update from actor where actor_id in (3,4);

-- UNION ALL
select * from actor where actor_id in (2,3)
union all
select * from actor where actor_id in (13,14)
union all
select * from actor where actor_id in (3,4);

-- EXCEPT :- It Connect 2 table and give result from 1st table 
-- 			where records of 1 table not present in other table.
select * from actor where actor_id in (1,2,3)
except 
select * from actor where actor_id in (3,4)
except 
select * from actor where actor_id in (13,2);


select * from actor;
describe actor; -- primeary key (actor_id)
describe film_actor; -- primeary key (actor_id)
describe film;
select * from film;
select * from film_actor;
show tables;

select a.actor_id,a.first_name,a.last_name,count(fa.film_id)  as MovieCount
from actor a 
inner join film_actor as fa
on a.actor_id=fa.actor_id
group by a.actor_id
order by MovieCount desc;


select a.actor_id,a.first_name,a.last_name,f.title,f.release_year
from actor a 
inner join film_actor as fa
on a.actor_id=fa.actor_id
inner join film as f
on f.film_id=fa.film_id;

-- datatypes in SQL