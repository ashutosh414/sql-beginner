use sakila;

-- Funtions
-- 	block of code  => code reusable 
-- code readable

-- pre-defiened
-- string funtions
-- lower() and upper()
select first_name,lower(first_name) as lower1, upper(first_name)
from actor;

-- concat() => concate strings
select first_name,last_name,concat(first_name,'-',last_name)
from actor;

-- concat_ws() =>  concat strings with seperator concat_ws(seperator, string1,string2, ...)
select first_name,last_name,concat_ws(' - ', first_name,last_name,'xyz')
from actor;

-- length() 
select first_name,length(first_name)
from actor;

-- SUBSTR(string, start_position, length) => stirng start with index 1.
select first_name,substr(first_name,2) , substr(first_name,2,3) ,substr(first_name,-3)
from actor;


-- TRIM([removal_character] FROM string)
select '   hello   ',trim('   hello   ');
select 'zzzhelzlozzz',trim('z' from 'zzzhelzlozzz');
select 'zzzhelzlozzz',trim(leading 'z' from 'zzzhelzlozzz');
select 'zzzhelzlozzz',trim(trailing 'z' from 'zzzhelzlozzz');

-- INSTR(string, substring) =>  It returns the index of the substring's first character, or 0 if the substring is not found.
select first_name,instr(first_name,'N')
from actor;
 
-- char_length(),char()
select length('hello123'),char_length('hello123'), char(99);

-- LPAD(string, length, pad_string) => (123, 5 ,0) -> 00123 
select lpad(actor_id,5,0) ,first_name from actor;

-- RPAD(string, length, pad_string) => ('Ram', 5 ,*) -> Ram** 
select rpad(first_name,5,'*') ,first_name from actor;


