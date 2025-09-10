use techysanoj;

show tables;

-- you need to create fake entries etc in a new table

select * from ecommerce_sales_large limit 10;

-- 1. find all the customer who are from the same region of customer_id = CUST015796
-- firstly make subquery like
select max(region) from ecommerce_sales_large where customer_id = 'CUST015796';

-- now use this query for outer query
select 
customer_id 
from ecommerce_sales_large 
where region = (select max(region) 
from ecommerce_sales_large 
where customer_id = 'CUST015796');


-- 2. finding the second maximum total_price and its product_cateogry
-- inner query to find the maximum price
select max(total_price) from ecommerce_sales_large;

-- here we get the second maximum price now to find the product_category
select 
max(total_price)
from ecommerce_sales_large 
where total_price 
< (select 
max(total_price) 
from ecommerce_sales_large);

-- it can be multiple rows depend on the data
select product_category from
ecommerce_sales_large
where total_price = 
(
select 
max(total_price)
from ecommerce_sales_large 
where total_price 
< (select 
	max(total_price) 
	from ecommerce_sales_large)
);

-- 3. similarly you can do this for the third maximum price

-- not for multiple row sub query we have to use in, any, all and exits operator

