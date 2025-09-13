use temp_db;

show tables;


-- this is basically used when there is no value provided for a column and we want to have some default value instead of null

create table emp_new3(id int, exp int default 1);

insert into emp_new3 values(1, 1); -- no error
insert into emp_new3 values(NULL, NULL); -- no error

insert into emp_new3(id) values(1); -- no error but the default value of exp is 1 not NULL.

select * from emp_new3;