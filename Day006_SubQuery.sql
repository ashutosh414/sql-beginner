use sakila;
-- subquery => Subquery is a query which is inside of another query;
select * from payment
where amount > (select amount from
			payment where rental_id=1185);
            
-- get the info those payment where month match the payment id of 3.
select * from payment 
where month(payment_date) =( select month(payment_date) from payment
						where payment_id=3);
                        
-- get those amount where the total no. of payemnts for the amount
-- should be greater than the amount 0.99
select amount,count(amount) from payment
group by amount
having count(amount) >(select count(amount) from payment 
							where amount=0.99);
                            
-- get each customer id and the total amount spend where
--  the total amount should be greater then the total 
-- amount spended by cust id =9
select customer_id,sum(amount) 
from payment
group by customer_id 
having sum(amount)>(select sum(amount) 
						from payment 
                        where customer_id =9);
                        
-- Multi-row SubQuery
-- If you have multi-row(which return more then 1 row)
-- subquery we cannot use =,<>,>=,<= etc.
-- Insted we use 
--  => in  
--  => >any (greater then any value from the minimum value of subquery)
--  => <any (less then any value from the maximum value of subquery)
--  => =any (Return any value from the equal value of subquery)
-- => >all
-- => <all

select * from payment
where amount in (select amount from payment 
					where payment_id in (1,3));
                    
-- what is corealated subquery?
-- what is database?
-- what is DBMS ?
-- Types of DBMS ? with example
-- DBMS vs RDBMS
-- where vs having
-- sql and types of sql language 
-- what are keys ? candidate ,super primary, forign etc.
-- 
-- 