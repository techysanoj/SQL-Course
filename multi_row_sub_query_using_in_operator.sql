use techysanoj;

show tables;

select * from ecommerce_sales_large limit 10;

-- 1. find the different product which falls into specified categories
-- Books, Home, Clothing

select 
count(distinct product_id) 
from ecommerce_sales_large 
where 
product_category in ('Books', 'Home', 'Clothing');

-- all those product id where the category is like C%
select product_id,
product_category
from ecommerce_sales_large
where product_category like 'E%';

select count(customer_id)
select count(customer_id)
from ecommerce_sales_large
where product_id in (select product_id
from ecommerce_sales_large
where product_category like 'C%');
