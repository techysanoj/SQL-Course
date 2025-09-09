use temp_db;

show tables;

-- to use the minus set operator 
-- it will give all the entries after removing the entries of the second table

/*
select * from t1
minus
select * from t2; 
*/ -- this will give all entries of the t1 but removes the entries which is present in the t2;

-- like t1 contains 1, 2, 3 and t2 contains 3, 4, 5
-- then t1 minus t2 -> 1, 2 (as 3 is common so it will be removed)

-- this will not work in the mysql server because it is not a keyword in this it can work in oracle rdbms software
