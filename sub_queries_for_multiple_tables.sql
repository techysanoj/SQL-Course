use sakila;

show tables;

-- this type of thing will only work when in multiple tables there is a single column which is common 


select * from city limit 10;

select * from country;

-- so these two tables having a common column named country_id

select 
city as city_name, 
(select 
country as country_name 
from country
 where country.country_id = city.country_id) as country_name 
from city;
-- so as we can see we are using sub query as a column query value
-- but it will only work when there is any common column between them
-- also this is working because this is 1-1 relation 

-- if we change this like country -> city then it will be 1 - M relation which will not work
-- error is sub query returns more than 1 row
select 
country as country_name, 
(select 
city
from city
 where country.country_id = city.country_id) as city_name
from country;