use temp_db;

show tables;

select * from t1;
select * from t2;

-- union all operator
select * from t1
union all
select * from t2; -- this does not delete duplicates from the data
-- this will allow the duplicates to come in the final output

select * from emp1;
select * from emp2;
select * from emp3;

select * from emp1
union all
select * from emp2; -- check difference between this and union
