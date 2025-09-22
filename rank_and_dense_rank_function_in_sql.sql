use world;

show tables;

select * from city;

-- rank and dense rank function are used to give the rank to each row according to the order by clause for the rows
-- order by is required but partition by is optional

-- difference between rank and dense rank is that if the values are equal means rows order are equal then rank will skip the value but dense rank will not
-- for eg: for rank: 1, 1, 3 (here rank 2 is missed) for dense_rank: 1, 1, 2 (here 2 is given)

-- find the second highest population
-- if the two countries have equal population then rank will not work so we will use dense_rank

with results as(
select name, countryCode,
DENSE_RANK() over (order by population desc ) as rank_order
from city)

select * from results where rank_order = 2;

-- now getting the all the cities according to the country code means for each country

with results as (
	select name, countryCode, population,
    DENSE_RANK() over (partition by countryCode order by population desc) as rank_order
    from city
)

select * from results where rank_order = 2 order by countryCode;

