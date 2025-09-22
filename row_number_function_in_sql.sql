use sakila;

show tables;

select * from film;

-- row number is a function which simply gives row number to the row according to the order and partition
-- for the row number function order by is required but partition by is not

select film_id, title, release_year, rental_duration,
ROW_NUMBER() OVER (ORDER BY rental_duration desc)
from film; -- so it will basically give row number to the rows according to the order by of rental duration

-- if we want that we want to partition the data by the rental_duration and then do order by on the release year 
select film_id, title, release_year, rental_duration,
ROW_NUMBER() OVER (PARTITION BY rental_duration ORDER BY release_year) as rowNum
from film; -- so for every partition the row number counting reset to 1 and then goes to last count

-- use case is that with the help of row number we can delete the duplicate values in the data