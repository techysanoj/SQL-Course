use world;

show tables;

select* from city;

/*
	main difference is that when there are duplicates 
    ROWS: count that as distinct and unique
    RANGE: count that as single entitiy 
    for example: without rows and range data is 10 20 30 40 then running total (sum): 10 30 60 100
    with rows : 10 30 60 100
    with range: 10 30 60 100 same because no duplicates
    when data is 10 20 30 30 40
    with rows: 10 30 60 90 130
    with range: 10 30 90 90 130 as you can see 90 is repeated
*/

select name, countryCode, population,
sum(population) over (order by population) as runningTotal
from city; -- normal behaviour

-- with rows and range
select name, countryCode, population,
sum(population) over (order by population RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as runningTotalRANGE,
sum(population) over (order by population ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as runningTotalROW
from city;

-- WHEN DUPLICATE
select name, countryCode, population,
sum(population) over (order by population RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as runningTotalRANGE,
sum(population) over (order by population ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as runningTotalROW
from city;