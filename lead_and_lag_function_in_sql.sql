use sakila;

show tables;

select * from film;

-- lead function is used to access subsequent row data along with current row data
-- lag function is used to access previous row data along with current row data
-- order by req
-- partition by optional

-- lead(col_name, offset, default_value) over (order by col1, col2...)
-- here offset means how many rows before or after you want the data by default it is 1 so lets say data is like this 1, 3, 4, 6 then lead(1) will be 3, 4, 6, NULL and lead(2) will be 4, 6, NULL, NULL
-- default value means if the next row or previous row is not present then this will be given by default it is NULL

select title, release_year, rental_duration, length,
LEAD(length) over (order by length) as lead_value
from film limit 10;

select title, release_year, rental_duration, length,
LAG(length) over (order by length) as lead_value
from film limit 10;

select title, release_year, rental_duration, length,
LEAD(length) over (partition by rental_duration order by length) as lead_value
from film limit 10;

select title, release_year, rental_duration, length,
LAG(length) over (partition by rental_duration order by length) as lead_value
from film limit 10;