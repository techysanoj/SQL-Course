use temp_db;

show tables;

-- giving alias to column
select id as unique_id
from emp1;


-- giving alias to table
select t.id
from emp1 t; -- here like while retriving id we used t.id here t alias name for emp1

select t.id, o.name
from emp1 t, emp2 o; -- here we have used multiple column from different tables


-- getting handson with fresh example
create table emp_details1(id int, firstname varchar(15));
insert into emp_details1 values(1, 'Arun');
insert into emp_details1 values(2, 'Varun');
insert into emp_details1 values(4, 'Tharun');

create table emp_details2(id int, lastname varchar(15));
insert into emp_details2 values(1, 'Kumar');
insert into emp_details2 values(2, 'Sharma');
insert into emp_details2 values(5, 'Purav');

select * from emp_details1;
select * from emp_details2;

-- using alias find id, firstname, and last name where id is same for both the column
select o.id, o.firstname, t.lastname
from emp_details1 o, emp_details2 t
where o.id = t.id;
