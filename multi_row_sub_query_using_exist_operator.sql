use techysanoj;

show tables;

select* from ecommerce_sales_large limit 10;
select max(quantity) from ecommerce_sales_large;

-- sub query
select * from ecommerce_sales_large where quantity > 3;


select * 
from ecommerce_sales_large 
where exists 
(select * 
from ecommerce_sales_large 
where quantity > 3);

-- exist means if the inner query returns any no of row (means simply run) 
-- then the outer query will work else it will not


select * 
from ecommerce_sales_large 
where exists 
(select * 
from ecommerce_sales_large 
where quantity > 5); -- now this will not be having any output because inner query return 0 rows. 