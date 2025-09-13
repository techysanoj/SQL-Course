use world;

show tables;

select * from city;

describe city;

create table newCity(ID int primary key auto_increment, Name CHAR(35) NOT NULL, 
CountryCode CHAR(3) NOT NULL, District CHAR(20) NOT NULL, Population int NOT NULL DEFAULT 0 );

select * from newCity;

-- now inserting the city records into newCity
insert into newCity
select * from city; -- for copying all the data


-- for copying some data 
create table newCity1(ID int primary key auto_increment, Name CHAR(35) NOT NULL, CountryCode CHAR(3) NOT NULL);

insert into newCity1
select id, name, countrycode from city;

select * from newCity1;

-- if we want to do some column when there are multiple column then
insert into newCity1(id, name)
select id, name from city; -- this can also be done


-- we can also use where clause means we can do anything with the select statement accordingly and then store the data