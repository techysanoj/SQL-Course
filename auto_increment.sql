use temp_db;

show tables;

create table emp_1(id int primary key auto_increment, name varchar(15)); 
-- here we have created table with id as primary key then we can specify auto_increment
-- if we are using auto_increment for non primary key then auto_increment will give error;

-- it will increase the last value in the table by 1
insert into emp_1 values(1, 'Sanoj'); -- now only 1 data is there with id = 1

insert into emp_1(name) values('DEEPAK'); -- will not give error because id will now contain previous value + 1;
-- id here will be 2

insert into emp_1 values(5, 'kumar');

insert into emp_1(name) values ('soni'); -- now the id avlue will be 6;

select * from emp_1;


create table emp_2(id int primary key auto_increment, name varchar(15)); 

select * from emp_2; -- as there is no entries in this

insert into emp_2(name) values('SANOJ'); -- then here the value will be 1 for id


-- if we want to set the starting value then we can do this
create table emp_3(id int primary key auto_increment, name varchar(15)) auto_increment = 100;