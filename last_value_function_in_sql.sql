use world;

show tables;

select* from city;
/*
	last value function simply returns the last value for the specified row
    order by is required but partition by is optional
    it work same as kind of running total kind of thing if we do not provide the rows or range
*/

select name, countryCode, population,
last_value(name) over (order by population) as lastVal
from city; -- you can see lastVal is equal to name

-- to fix this we need to use the range or rows
select name, countryCode, population,
last_value(name) over (order by population RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as lastVal
from city;

-- using partition by
select name, countryCode, population,
last_value(name) over (partition by CountryCode order by population RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as lastVal
from city;
