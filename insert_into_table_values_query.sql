use temp_db;

show tables;

-- to show all the column types of a table;
describe employee;

-- to show all the entries
select * from employee;

-- to insert the data
insert into employee values (1, 'Sanoj', 1);
insert into employee values(2, 'Deepak', 2);
insert into employee values (3, 'Vivek', 3);

-- this will give me error because it has only 2 column values needed 3
-- insert into employee values (3, 'Vivek'); 
-- so to fix this we will use and other values will be NULL (if NULL are allowed in that)
insert into employee(id, name) values (3, 'Sanoj Kumar');

select * from employee;