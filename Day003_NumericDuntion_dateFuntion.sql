-- numeric
-- round ,truncate ,mod, pow

-- round
select round(12.4) , round(12.8) , round(112.122,2);
select round(844.123,-1), round(847.2343,-1), round(847.2343,-2) ,round(847.2343,-3), round(347.2343,-3);

-- truncate => provide the values till positions
select truncate(279.49,1), truncate(279.49,2), truncate(279.49,0) , truncate(279.49,-1);

-- mod => modulas (it find remainder)
select mod(26,2) , mod (49,5);

-- pow() => pow(5,2) => 5 * 5 = 25
select pow(5,2);

-- date functions
-- curdate() = current_date()
-- curtime() = current_time()
-- now() = current_timestamp()
select curdate() , curtime() , now() , current_timestamp() , current_date() , current_time() ;

-- Adddate()
select curdate() , adddate(curdate(),1) , adddate(curdate(),-1);
-- add one month to currentdate or remove one month 
select curdate() , adddate(curdate(), interval 1 month) , adddate(curdate(), interval -1 month);

select datediff(curdate(),adddate(curdate(),interval 1 month)) ;

select date_format(now(), '%M');

select curdate(), '17 2025 02' as date ;
select curdate(), str_to_date('17 2025 02','%d %Y %m') as date ;