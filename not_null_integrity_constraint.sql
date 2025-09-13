use temp_db;

show tables;

describe emp_new; -- here you will see that NULL for s_no is NO 
-- means it can not contain null values

-- also you can create a new table for doing this
create table stu_new(stu_id int NOT NULL, stu_name varchar(15));

-- now while inserting the table
insert into stu_new values(1, 'sanoj'); -- no error

insert into stu_new values(2, NULL); -- also no error

insert into stu_new values(NULL, 'SANOJ'); -- gives an error that stu_id can not be null

insert into stu_new(stu_name) values('SANOJ'); -- will give an error

