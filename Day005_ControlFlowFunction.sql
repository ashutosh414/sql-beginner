use sakila;

 -- Alice => as

select * from payment;

select customer_id , count(customer_id) as `select`
from payment 
group by customer_id;

-- order by => select the table in assending or decenfing order using order by.

select * from payment
order by amount desc, rental_id ;

-- Flow Control Functions

	-- if conndition
		select amount ,
		if(amount=0.99,'Correct','False')
		from payment;
        
	-- Nested if else
		select amount ,
		if(amount=0.99,'Correct',
        if (amount=2.99,'Yes','NO'))
		from payment;
        
	-- Case Statement
-- 			select column,
-- 				case
-- 					when condition then statement
--                     when condition then statement
--                     ...
-- 				end
			
		select amount,
			case
				when amount =0.99 then 'Correct'
                when amount =2.99 then 'Yes'
                else concat('NO',' => ',amount)
			end as `Condition`
		from payment;
        
-- Questions
	-- 1. If the count of payment done by each amount greater then 1000. 'then amount of 2.99 has total amount' else 'amount is less then 10000'
		select amount, 
        case
			when count(amount) > 1000 then concat_ws(' ','The amount of',amount,'has',count(amount))
			else 'The amount is less then 1K.'
		end as product
        from payment
        group by amount;
        
    -- 2. If the amount is greater then 1 , 3 , 7 .print 'amount is greate then 1,3,7' else 'amount is less then 1 dollar.
		select amount, 
        case
			when amount > 7 then 'The amount is greater then $7'
            when amount > 3 then 'The amount is greater then $3'
            when amount > 1 then 'The amount is greater then $1'
			else 'The amount is less then $1'
		end as product
        from payment;

-- SubQuery
	-- query within a query
    select * from payment where
    amount = (select amount
				from payment where payment_id=5);