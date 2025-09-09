use temp_db;

show tables;

-- creating new table t1
create table t1(id int);

insert into t1 values(1);
insert into t1 values(2);
insert into t1 values(3);

-- creating new table t2
create table t2(id int);

insert into t2 values(3);
insert into t2 values(4);
insert into t2 values(5);


-- show each tables values
select * from t1;
select * from t2;

-- get the union of the both table overall it will be 1 2 3 4 5
select * from t1 
union 
select * from t2;

-- if we write like this
select id from t1 
union 
select num from t3; -- if t3 has a column named num and type is int

drop table t1;
drop table t2;


-- for more than 1 column
-- create emp1 table
create table emp1(id int, name varchar(15));
insert into emp1 values(1, 'sanoj');
insert into emp1 values(2, 'deepak');
insert into emp1 values(3, 'varun');
insert into emp1 values(5, 'karun');
select * from emp1;

-- create emp2 table
create table emp2(id int, name varchar(15));
insert into emp2 values(2, 'dinesh');
insert into emp2 values(3, 'vivek');
insert into emp2 values(4, 'alice');
select * from emp2;

-- get the union
select * from emp1
union 
select * from emp2; -- this will give all the entries because it will check for the unique values for {id, name}

insert into emp2 values(2, 'deepak'); -- now 2, deepak is available in the emp1 so when union it will only comes once

select * from emp1
union 
select * from emp2;

-- what if we only use one column
select id from emp1
union
select id from emp2; -- here it will check for unique set values based on {id} values


-- now creating table emp3
create table emp3(c1 int, c2 varchar(15), c3 int);
insert into emp3 values(2, 'sanoj', 12);
insert into emp3 values(3, 'varun', 5);
insert into emp3 values(4, 'kiran', 7);
select * from emp3;


-- now doing union using the columns of the third table
select * from emp1
union
select * from emp3; -- it will give error because the no of columns in both the tables are not equal emp1 - 2, emp3 - 3

select id from emp1
union
select c1 from emp3; -- this will work

select id from emp1
union
select c3 from emp3;  -- this will also work

select name from emp1
union
select c1 from emp3; -- this will also work

select id, name from emp1
union
select c1, c3 from emp3; -- this will also work


