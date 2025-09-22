use world;

show tables;

select * from city;

-- so basically over clause we can use when we want aggregated data with non aggregated values

select CountryCode, count(CountryCode) as count
from city
group by CountryCode; -- so it will give me all the country with its count (means how many values are there)
-- but if we want to use like name, etc with this count we will get error 

select Name, District, Population,
COUNT(CountryCode) OVER (PARTITION BY CountryCode) as total_city,
AVG(Population) OVER (PARTITION BY CountryCode) as avg_population
from city; -- now like we are able to see the non aggregated values with aggregated values
