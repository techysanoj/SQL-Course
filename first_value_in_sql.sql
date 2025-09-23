use world;

show tables;

select * from city;

--  first value function in sql basically gives the first value for the defined column in the function
-- if we write like this first_value(name) then it will give the first value in the name column according to the order 

select name, countryCode, population,
first_value(name) over (order by population) as first_val
from city; -- so for every row the first_val will be same because it the least population will come first;

select name, countryCode, population, 
first_value(name) over (partition by countryCode order by population) as first_val
from city; -- for this it will be different for every countryCode partition