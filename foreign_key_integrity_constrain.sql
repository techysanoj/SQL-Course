use temp_db;

show tables;


-- here it is most important constraint because using this we can have relationship constraint
-- like 1 - 1, 1 - M, M-1, M-M
-- it will work when there are multiple tables 
-- lets say there are two tables so there must be a common column between them
-- one is parent table and another is child table and in parent table that column must be primary key 
-- and in child table it will work as foreign key, also child table is dependent on parent table.
/*
	RULES:
		1. Data inserted into the child table should have same data of the common column of parent table.
        2. Cannot delete the record from the parent table having the associated data in child table.
		   if you have to delete this then you need to delete the child table entry first.
           You can do this using ON DELETE CASCADE;
*/

-- parent table
create table emp_parent(id int, name varchar(15), exp int, primary key(id));

insert into emp_parent values(1, 'SANOJ', 1);
insert into emp_parent values(2, 'KUMAR', 2);
insert into emp_parent values(3, 'DEEPAK', 3);

-- child table
create table salary_child(id int, salary int, foreign key(id) references emp_parent(id));

insert into salary_child values(1, 10000); -- no error
insert into salary_child values(9, 1000000); -- will give error because 9 is not present in parent table
insert into salary_child values(2, 200000); -- no error


-- now deleting the value in parent table
delete from emp_parent where id = 1; -- will give error because it has value associated in child table

-- but using the ON DELETE CASCADE we can do this (also deleting one by one can also help);
-- but we need to change the table strucutre and then use ON DELETE CASCADE;

create table salary_new(id int, salary int, foreign key(id) references emp_parent(id) on delete cascade); -- like this
insert into salary_new values(1, 10000); -- no error
insert into salary_new values(9, 1000000); -- will give error because 9 is not present in parent table
insert into salary_new values(2, 200000); -- no error

delete from emp_parent where id = 1; -- here it will not work because it has dependencies on two tables now so we need to remove that first

-- now deleted from salary_child but not from the salary_new
delete from salary_child where id = 1;

-- this will work
delete from emp_parent where id = 1;


select * from emp_parent;

select * from salary_child;

select * from salary_new;