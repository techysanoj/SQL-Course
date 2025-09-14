use sakila;

show tables;

select * from customer;

-- all these keywords must be used together
-- so its kind of basically giving the classification to the column values

select 
customer_id,
first_name,
last_name,
CASE
	WHEN address_id > 100 THEN 'Address is greather than 100'
    WHEN address_id < 100 THEN 'Address is less than 100'
    WHEN address_id = 100 THEN 'Address is equal to 100'
END as address_id_range
from customer; -- now according to the value of the address_id the column will show this kind of output


-- we can also use this in where clause accordingly
select * from city;

select * from city 
where country_id = 
(	
	CASE
		WHEN country_id in (82,87, 101, 60) then country_id
        WHEN country_id NOT IN (82, 87, 101, 60) then 90
	END
); -- here all those country_id follows the first case there result will be shown


-- in order by clause also
select * from city 
order by
(	
	CASE
		WHEN country_id in (82,87, 101, 60) then city
        WHEN country_id NOT IN (82, 87, 101, 60) then country_id
	END
);