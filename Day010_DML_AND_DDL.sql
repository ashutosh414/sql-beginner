-- day 10
use sakila;

select max(amount) from payment
where amount < (select max(amount) from payment);

select distinct(amount) from payment order by amount desc limit 1,1;

-- common table as select
create database hello;
use hello;

create table y3 as select * from sakila.actor;
select * from y3;
create table y2 as select first_name,last_name from sakila.actor;
select * from y2;
describe y3;

-- DDL 
-- insert 
-- update
-- delete

SET SQL_SAFE_UPDATES = 1;
SHOW VARIABLES LIKE 'sql_safe_updates';


delete from y3 where actor_id in (2,4);
select * from y3;


update y3 set first_name ='REGEX'
where actor_id in (1,3);
select * from y3;	

-- DDL 
-- drop 
-- truncate

drop table y3;
select * from y3;	

create table y3 as select * from sakila.actor;
select * from y3;

truncate table y3;
select * from y3;	

-- delete -: deletet one or more record from table 
desc y3;
select * from y3;	
alter table y3 add constraint hello_y3_actorID_pk primary key(actor_id) ;
alter table y3 add constraint hello_y3_firstName_uk unique(actor_id) ;
alter table y3 drop constraint hello_y3_firstName_uk;