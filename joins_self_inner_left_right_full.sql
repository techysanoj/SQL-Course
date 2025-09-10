use temp_db;

show tables;

-- we will be using these two tables
select * from emp_details1;
select * from emp_details2;

-- inner join will only give result where id value are equal in both the column
select
o1.id,
o1.firstname,
o2.lastname
from emp_details1 o1 
inner join emp_details2 o2
on o1.id = o2.id;

-- left join will give only those result where id are equal and also the left table entries
select
o1.id,
o1.firstname,
o2.lastname
from emp_details1 o1 
left join emp_details2 o2
on o1.id = o2.id;

-- right join will give only those result where id are equal and also the right table entries
select
o2.id,
o1.firstname,
o2.lastname
from emp_details1 o1 
right join emp_details2 o2
on o1.id = o2.id; -- here i have used o2.id to show the id also for the unmatched values

-- full outer join where both the properties of the left and right without duplicate
select
o1.id,
o1.firstname,
o2.lastname
from emp_details1 o1 
full join emp_details2 o2
on o1.id = o2.id; -- here full outer join in not supported in mysql other like oracle supports this


-- self join where we only use single table and join it with
create table emp_dep(id int, firstname varchar(15), lastname varchar(15), dept_id int);

insert into emp_dep values(1, 'Arun', 'Kumar', 1);
insert into emp_dep values(2, 'Sanoj', 'Kumar', 9);
insert into emp_dep values(3, 'Aruna', 'Sakhi', 3);

select * from emp_dep;

select e1.id,
e1.firstname,
e1.lastname,
e2.dept_id
from emp_dep e1, emp_dep e2
where e1.id = e2.dept_id; -- here we have used , to join the tables and also used the where clause to do the condition

