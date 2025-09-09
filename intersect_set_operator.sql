use temp_db;

show tables;

select * from t1;
select * from t2;

-- intersect will give us common records
/*
select * from t1
intersect
select * from t2;
*/ -- this is not supported in the mySQL server 
-- it can be done in the Oracle SQL and RDBMS software