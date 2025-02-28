use test1;
create table student(id int ,name varchar(20),fee int not null,collName varchar(50) default 'regex',phone varchar(10),
					constraint test1_student_idName_pk primary key (id,name),
                    constraint test1_student_phone_uk unique (phone)
                        );
    -- ON UPDAT CASCADE                    
create table product123 (pid int, pname varchar(20),
						constraint test1_product123_pid_pk primary key (pid) );
                        
insert into product123 values(101,'bike'),(102,'iron'),(103,'car');
insert into product123 values(104,'mobile');                
create table order123 (oid int, city varchar(20),product_id int,
						foreign key (product_id) references product123(pid) on update cascade);

insert into order123 values(9909,'Jaipur',101),(7767,'Indor',102);
-- insert into order123 values(99039,'Delhi',107);
update product123 set pid=105 where pname='bike';
select * from product123;
select * from order123;

UPDATE product123 
SET pid = 105 
WHERE pname = 'bike' and pid=101;

-- ----------------------------------
drop table product123;
drop table order123;


-- ON DELETE CASCADE

create table product123 (pid int, pname varchar(20),
						constraint test1_product123_pid_pk primary key (pid) );
insert into product123 values(101,'bike'),(102,'iron'),(103,'car');
insert into product123 values(104,'mobile');    
            
create table order123 (oid int, city varchar(20),product_id int,
						foreign key (product_id) references product123(pid) on delete cascade);

insert into order123 values(9909,'Jaipur',101),(7767,'Indor',102);
-- insert into order123 values(99039,'Delhi',107);

select * from product123;
select * from order123;

delete from product123 where pname='bike' and pid=101;

select * from product123;
select * from order123;


