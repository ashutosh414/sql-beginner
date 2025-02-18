-- Aggregate Funtions

use sakila;

-- sum() => Find the sum of the rows
select sum(amount) from payment;

-- count() => find the count of total rows after filter
select count(amount) from payment;

-- avg() => find average or (sum of values) / (total count values)
select avg(amount) from payment;

--  distinct() => give the unique values in that perticular row
select distinct(amount) from payment;

select count(distinct(amount)) ,count(amount) from payment;

select count(amount), count(*) from payment where amount=0.99;

-- group by
-- you can only select only coumn which is used in groupby 

select amount, count(amount) , count(payment_id)
from payment
group by amount;


-- payment
-- payment_id , amount ,  payment_date ,  month
select payment_id, amount, payment_date, month(payment_date) from payment;

-- total amount for each month

select month(payment_date) as groupByMonth, sum(amount)
 from payment
 group by month(payment_date);
---------------------- OR-------------------------------- 
select month(payment_date) as groupByMonth, sum(amount)
from payment
group by groupByMonth;
--------------------------------------------------------

select * from payment;
-- get the total amount and the avg_amount for each customer.
select customer_id,sum(amount), avg(amount)
from payment
group by customer_id;

-- get the total amount and the maximum and minimum amount for each staff id
select staff_id , sum(amount) , min(amount), max(amount) 
from payment
group by staff_id;

-- get the total number of payment for each staff
select staff_id , count(*) 
from payment
group by staff_id;

-- [[ get the total amount , total amount of entries, avg amount, max amount by each customer
--    where amount value is greater then 2. and payment id is greater then 10.            ]]
select customer_id , sum(amount) , count(amount), round(avg(amount),2), max(amount) 
from payment
where amount > 2.0 and
	payment_id > 10
group by customer_id;

-- having

select amount , sum(amount)
from payment
group by amount
having sum(amount)>50;