use employees;

show tables;

-- get e-- mpn. wheer salary is less then salary no. 10003;
select * from salaries where emp_no=10003 order by salary; -- 43699 (max salary)
select * from salaries where emp_no=10012 order by salary;

select emp_no from salaries where salary  < all(select salary from salaries where emp_no=10003);

select * from employees;
desc employees;
select * from titles;
desc titles;

select e.emp_no,e.first_name,t.title from employees e 
inner join titles t on e.emp_no=t.emp_no;
-- ---------OR----------
select e.emp_no,e.first_name,t.title from employees e 
inner join titles t using(emp_no);

select e.emp_no,e.first_name,t.title from employees e 
inner join titles t on e.emp_no=t.emp_no where title = 'Manager';

select e.emp_no,e.first_name,t.title from employees e 
inner join titles t on e.emp_no=t.emp_no where title = 'Manager';

-- I need to get empno ,fnmae,lname,titile, form emp table where the person as manager position and worked on other position before

select e.emp_no,e.first_name,e.last_name,t.title from employees e 
inner join titles t on e.emp_no=t.emp_no 
where t.title='Manager' and 1 <(select count(e.emp_no) from employees es where es.emp_no=e.emp_no);

select e.emp_no,e.first_name,e.last_name,t.title from employees e 
inner join titles t on e.emp_no=t.emp_no 
where t.title='Manager' and e.emp_no= any (select emp_no from employees join titles using (emp_no) where title<> 'Manager');

select * from titles where emp_no=110022;

select distinct e.emp_no,e.first_name,e.last_name,t.title from employees e 
inner join titles t on e.emp_no=t.emp_no 
inner join titles t1 on t1.emp_no=e.emp_no
where t.title='Manager'
and t1.title<>'Manager';


select * from employees;
desc employees;
select * from titles;
desc titles;
-- get eno,fname,titile,higher date for all the employeees

select e.emp_no,e.first_name,e.last_name,t.title,e.hire_date from employees e 
inner join titles t on e.emp_no=t.emp_no
where t.title='Assistant Engineer';
-- group by t.from_date;

-- get all detail of ass._eng. eher hire is less then (before) hiring date of that curr emp working on manager position
select * from titles where emp_no=10153;
select distinct * from titles t
inner join employees e on t.emp_no=e.emp_no
inner join titles t1 on t1.emp_no=e.emp_no
 where t.title='Assistant Engineer' and t1.title='Manager'
 and t1.hire_date<t.hire_date;
-- using subquery
select emp_;

-- emp_no,title,yearof hiring date for curr manager postion where the person has been promoted in same year is he is working on anyoher position 
select * from employees;
desc employees;
select * from titles;
desc titles;
select * from titles t 
where t.title='Manager' and 
(t.emp_no,year(t.from_date)) in (select emp_no ,year(from_date) from titles
		where title<>'Manager');

-- single column and 
-- single row multiple subquery 
-- IN and =ANY are equal
-- =all is not possible in multi column subquery

 -- multi column can only use 'IN' operator and can't use 'any' and 'all'










