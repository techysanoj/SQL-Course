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