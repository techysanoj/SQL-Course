use temp_db;

show tables;

describe emp;

select * from emp;

-- insert the data into emp table without set autocommit = 0; here it is automatically set autocommit = 1;
insert into emp values(4, 'Kumar', 5);

-- this will make all these changes in this code to be temporary and gets deleted when we restart our sql workbench
set autocommit = 0;
insert into emp values(6, 'Khushi Kumar', 7);

-- so to make all these changes permanent use set autocommit = 1; else 0

-- this will be for all the inserting, updating, and deleting the records
set autocommit = 0;
delete from emp; -- temporary delete
