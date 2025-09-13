use temp_db;

show tables;

create table emp_new1(id int, name varchar(15), exp int, check(exp > 2));

insert into emp_new1 values(1, 'SANOJ', 3); -- no error
insert into emp_new1 values(NULL,'DEEPAK', 4); -- no error

insert into emp_new1 values(2, 'KUMAR', 2); -- will gives error

-- so basically check constraint is used on the column for checking the values according to the 
-- given condition


create table emp_new2(id int, name varchar(15), exp int, location varchar(15), check(exp > 2 and location in ('india', 'usa', 'Uk')));

insert into emp_new2 values(1, 'SANOJ', 3, 'india'); -- no error
insert into emp_new2 values(NULL,'DEEPAK', 1, 'india'); -- gives error because of exp check

insert into emp_new2 values(2, 'KUUMAR', 4, 'new delhi'); -- will give error