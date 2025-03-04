create database x1;
use x1;

create table emp (eid int primary key, name varchar(20));
insert into emp values(1,'aman'),(2,'shubham'),(3,'abc');
select * from emp;
create table emp_family(eid int ,name varchar(20),father varchar(20));
insert into emp_family values(1,'aman','raj'),(2,'shubham','kamal'),(3,'abc','aman'),(4,'ujjwal','kaluram');
insert into emp_family values(3,'abc','abc');
select * from emp_family;

-- select




-- empid pk, name, salary , deptid
-- insert data

create table emp123 (eid int ,name varchar(20), salary int ,department_id int, constraint employee_emp123_eid_pk primary key(eid));
insert into emp123 values(1,'tushar',900,10),(2,'shubham',100,10),(3,'aman',50,10),(4,'sakshi',200,11),(5,'naina',300,11);
select * from emp123;
insert into emp123 values(6,'Isha',350,12);
-- Using of Corealated subQuery
select * from emp123 
where salary >(select avg(salary)from emp123 as e
				where emp123.department_id = e.department_id group by e.department_id);

-- Multi Column Subquery
select * from emp123 
where (department_id,salary) in (select e.department_id,avg(salary)from emp123 as e
				group by e.department_id);

-- EXISTS in Correlated Subquery

create table product124 (pid int,p_name varchar(20));
insert into product124 values(1,'laptop'),(2,'Mobile');
insert into product124 values(3,'book');
select * from product124;
-- truncate table product124;
create table order124 (oid int,pid int,o_date date);
insert into order124 values(1,3,curdate()),(2,4,curdate());
select * from order124;

select * from product124
where exists (
select pid from order124
where product124.pid=order124.pid);


use employees;
show tables;




