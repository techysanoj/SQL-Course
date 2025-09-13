use temp_db;

show tables;

create table emp_3(id int, salary int);

insert into emp_3 values(1, 10000);
insert into emp_3 values(2, 14253);
insert into emp_3 values(NULL, 1000);
insert into emp_3 values(4, NULL);

select * from emp_3;

-- if we add the value in the NULL

select (salary + 20000) from emp_3; -- here null + 20000 is NULL

select (ifNULL(salary, 0) + 10) from emp_3; -- now it will show 10 where ever is NULL value