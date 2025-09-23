use world;

show tables;

select * from city;

-- window function are basically of several types
/*
	1. aggregate func: avg, sum, count, etc
    2. ranking func: rank, dense_rank, row_number, etc
    3. analytic func: lead, lag, first_value, etc
    
    for the window function we use over clause which define partitioning and ordering of rows (i.e windows) for the above function to operate on. hence these are called windows function
    the over clause accept three argument to define a window and for these to operate on:
    a. order by: define logical order of rows
    b. partition by: divides the query result set into partition. the window function is applied on each partition seperately
    c. rows or range: further the limit the rows within the partition by specifying start and end points within partition
		default: RANGE BETWEEN UNBOUNDING PRECEEDING AND CURRENT ROW means (x - 1) to xth row
        for example if the table is having 10 20 30 40 value in a column and we write avg(salary) over (order by salary) then it will give me result like 10 15 30 50 (because default range was x - 1 to xth row)
        if we want it like from the 1st row to last row we need to write ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING then it will give me for the values above example 50 50 50 50
        or if we want like x - 1 to x + 1 th row then we can write like this ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING then it will give me result like this 15, 30, 45, 35

*/

select name, countryCode, population,
count(name) over (order by population) as count_total,
avg(population) over (order by population) as avg_total,
sum(population) over (order by population) as sum_total
from city; -- without using the range

-- using the range
select name, countryCode, population,
count(name) over (order by population RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as count_total,
avg(population) over (order by population RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as avg_total,
sum(population) over (order by population RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as sum_total
from city; 

-- for x - 1 to x + 1 th or anything
select name, countryCode, population,
count(name) over (order by population RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING) as count_total,
avg(population) over (order by population RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING) as avg_total,
sum(population) over (order by population RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING) as sum_total
from city; 