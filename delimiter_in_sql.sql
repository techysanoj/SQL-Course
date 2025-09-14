use world;

show tables;

select * from city;

delimiter /

select * from city/

select * from country/

-- now it is working before that delimiter line we need to use semicolon to seperate sql statement but now we can use /
-- we can change this also

delimiter $

select * from city$

select * from city; -- this will also work

-- this will be used in case of stored procedure