use world;

show tables;

select * from city where name = 'Delhi';

delimiter //
-- now creating stored procedure
create procedure getAllCities()
	BEGIN
    -- we can perform multiple thing in this
		select * from city;
    END// -- (if we are using ; it will give error so we can use delimiter)

call getAllCities(); -- to call the stored procedure