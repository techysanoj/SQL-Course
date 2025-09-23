use sakila;

show tables;

select * from film;


-- ntile function divides the rows into group in the number of group given
-- lets say 10 rows are there and no of groups are divider of no of rows then equal sized group is formed here: lets say no of group = 2 then size of 5 and 2 groups are formed
-- if no of rows are not divisible by no of group then unequal sized group are formed in which higher size group will come first lets say no of group = 3, then size of groups are 4, 3, 3

-- if no of group are greater than no of rows then ntile function try to create at max group it can create by giving the 1 row to 1 group

select title, release_year, rental_duration, length,
NTILE(10) OVER (ORDER BY length) AS ntil
from film; -- it will create 10 groups accordingly if no of rows are divisible

select title, release_year, rental_duration, length,
NTILE(10) over (partition by rental_duration order by length) as ntil_part
from film; -- it will create 10 groups for each partition 

-- order by is req
-- partitiion by is optional