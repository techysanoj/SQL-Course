-- make sure this is downloaded in your sql workbench
use world;

show tables;

describe country;

-- this will show all the entries of country tables without group by
select * from country;

-- only name of the country
select name from country;

-- total count of the country
select count(name) from country;

-- here it will show all the country name and its count
select name, count(name) from country group by 1;

-- here it will show all the continent and there count
select continent, count(name) from country group by continent;
select count(name) from country group by continent; -- this will not give any error because we are only getting the count

-- make sure whenever you are using group by clause like here we use group by continent 
-- then the continent column must be getting used in the select statement
-- like this will not get execute
select name, count(name) from country group by continent; -- will give error


-- use sakila db
use sakila;

show tables;

select * from payment;

-- this will show the total_amount for each type of the customer_id
select 
customer_id, 
sum(amount) as total_amount 
from payment
group by customer_id;

