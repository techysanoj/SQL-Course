/*
	views are required when we are fetching data again and again from set of tables using joins
    or doing large operation again and again and to minimize the time we can use
    
    using views we can overcome need for creating more tables even though the req column and data
    are available in the exisiting table.
	- its basically make a kind of replica of required table
    - views are nothing but virtual tables. 
	- hide the database implementation of the actual table and show the desired virtual views to the users
*/

use temp_db;

show tables; -- i have dropped all the tables to start from the fresh

-- emp1 id, name, exp
create table emp1(id int, name varchar(15), exp int);

insert into emp1 values(1, 'Sanoj', 1);
insert into emp1 values(2, 'Kumar', 3);
insert into emp1 values(3, 'Deepak', 10);
insert into emp1 values(4, 'Vivek', 15);

select * from emp1;

-- creating view of emp1 having id and name
create view emp1view
as
select id, name from emp1; -- now the emp1view only has id, name

select * from emp1view; -- normally work as the normal table work


create view emp1exp
as
select * from emp1 where exp > 2;

select * from emp1exp;


-- we can do this using two tables also
create table emp2(id int, country varchar(15));

insert into emp2 values(1, 'IND');
insert into emp2 values(2, 'USA');
insert into emp2 values(3, 'UK');
select * from emp2;

-- creating view to show all the emp details
create view empDetails
as
select o.id, o.name, o.exp, t.country 
from emp1 o JOIN emp2 t ON o.id = t.id;

select * from empDetails;


create view viewemp1
as 
select * from emp1; -- replica of the emp1

select * from viewemp1; -- if we do crud operation on the view then or in the original table then what happen to view

insert into emp1 values(1,  'Deepak kumar', 109);

-- now in the view
select * from viewemp1; -- gets updated accordingly

delete from viewemp1 where id = 4;

select * from emp1;
