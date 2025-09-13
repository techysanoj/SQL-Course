use sakila;

show tables;

select * from film;

/*
	List out films having the length less than the maximum length and having rental duration 
    equal to the minimum rental duration
*/
-- for maximum length 
select max(length) from film;

-- for minimum rental_duration
select min(rental_duration) from film;

-- overall
select 
title 
from film 
where length < (select 
max(length) 
from film) 
and rental_duration = (select 
min(rental_duration) 
from film);