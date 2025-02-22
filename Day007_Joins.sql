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