use techysanoj;

show tables;

select * from ecommerce_sales_large limit 10;

-- all those product_id where quantity is 2
select product_id from ecommerce_sales_large where quantity = 2;

-- want to find those details whose product id is < any this
select * from ecommerce_sales_large 
where product_id < any (select 
product_id from 
ecommerce_sales_large 
where quantity = 2); -- use of any operator is that we can use < and > 
-- so like all those entries will be shown like from the sub query it return like 3, 5, 7 
-- then the outer query will show entris where the product_id is < 3, 5, 7 means till 6 but not 3, 5, 7

