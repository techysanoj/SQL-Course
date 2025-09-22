use sakila;

show tables;

select * from film; 

-- running total is basically for finding the prefix sum kind of thing in the data for a particular column
-- like running salary sum

select title, rental_duration, length,
SUM(length) over (order by film_id) as runningLength
from film; -- so here basically we are finding the running length of the length column

-- in order by column why we do not use the length because we know that primary key will be unique and will not contain any duplicate 
-- so all the summation will be unique 
-- lets say we do the order by length
-- and the data is 1 2 3 3 4 5 then summation willl be 1 3 10 10 14 19 (here 10 is repeated) that is not required

select title, rental_duration, length,
sum(length) over (order by length) as runningLength
from film; -- as you can see in the output 