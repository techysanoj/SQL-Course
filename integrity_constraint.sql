use temp_db;

show tables;

/* different types of integrity constraint
	1. NOT NULL
    2. UNIQUE
    3. PRIMARY KEY
    4. FOREIGN KEY
    5. CHECK
    6. DEFAULT
	
    these are applied on table column 
    at the time of creating the table and altering the table
*/

-- example using NOT NULL means we can not be having any NULL values in the table
create table emp_new(s_no int NOT NULL, s_name varchar(15)); -- here s_no can not be null

insert into emp_new values(1, 'SANOJ'); -- successfully inserted
insert into emp_new values (NULL, 'Kumar'); -- it will return error that s_no cannot be null
insert into emp_new(s_name) values ('Kumar'); -- it will also return error same error
