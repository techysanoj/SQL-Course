use temp_db;

show tables;

-- in operator is being used when we want to specify multiple values in where clause

-- like here we are filtering based on multiple id
select * from emp1 where id in (1, 2, 3);

-- here we are filering based on multiple names
select * from emp1 where name in ('sanoj', 'Sanoj', 'SANOJ', 'kumar');

-- also we can use not in 
select * from emp1 where name not in ('sanoj', 'Sanoj', 'SANOJ', 'kumar');


-- it can be used in multi row sub query
