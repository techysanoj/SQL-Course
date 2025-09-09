use world;

show tables;

-- this will retrieve all the records from the country;
select * from country;

-- to filter out based on some condition
select * from country where continent = 'ASIA';

-- to filter out in the group by statement
select count(name) from country group by continent;
select continent , count(name) from country group by continent;

-- using having clause we can filter out the records
select continent, count(name) from country group by continent having count(name) > 30;