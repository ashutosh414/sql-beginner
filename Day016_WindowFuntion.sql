use x1;

show tables;
create table payment as select * from sakila.payment;
select * from payment;

select amount,sum(amount) over(partition by amount order by amount desc)
 from payment where payment_id<10;

select payment_id,staff_id,amount,sum(amount) over(order by amount)
 from payment where payment_id<10;

select payment_id,staff_id,amount,sum(amount) over(order by payment_id)
 from payment where payment_id<10  ;
 
select payment_id,staff_id,amount,sum(amount) over(partition by payment_id)
 from payment where payment_id<10; 
 
 select payment_id,staff_id,amount,sum(amount) over(partition by amount order by staff_id)
 from payment where payment_id<10; 
 
 select amount,avg(amount) over(order by amount desc)
 from payment where payment_id<10 order by amount desc;
 
 
 select payment_id,staff_id,amount,sum(amount) over(partition by amount )
 from payment where payment_id<10; 
 
 create table
 custid,custName
 orderid,price,custid
 custid 10 place 2 order
 custid 11 place 1 order
 find out the custid, and total number of order placed
 we need to identify the custid,custname of the custoemer who place more then one order
 ;
 create table customer121(custId int,custName varchar(20));
 insert into customer121(custId,custName) values(10,'Ash'),(11,'Ram'),(12,'Sahil');
 
  create table order121(orderId int,price int, custId int);
 insert into order121(orderId ,price,custId) values(1,200,10),(2,512,10),(3,100,11);
 
 select * from customer121;
 select * from order121;

 -- find out the custid, and total number of order placed
select c.custid ,count(o.custId) from customer121 c join order121 o on c.custId=o.custId group by c.custId;


--  we need to identify the custid,custname of the customer who place more then one order 
select * from customer121 c where (select count(o.custId) from order121 o where c.custId=o.custId)>=2;

select payment_id,staff_id,amount,sum(amount) over(partition by amount order by payment_id)
 from payment where payment_id<10;
 