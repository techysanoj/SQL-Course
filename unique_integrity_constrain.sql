use temp_db;

show tables;

-- unique integrity constraint simply means that values in a column must be unique

create table stu_2(stu_id int UNIQUE, stu_name varchar(15));

create table stu_3(stu_id int, stu_name varchar(15), unique(stu_id)); -- here we have provided the constraint at column level

-- here stu_id must be unique

insert into stu_2 values(1, 'SANOJ'); -- this will not give any error
insert into stu_2 values(NULL, 'KUMAR'); -- this will not give any error because NULL is a unique value till now

insert into stu_2 values(1, 'DEEPAK'); -- will give error because 1 is already in the column (saying duplicate entry)

insert into stu_2 values(2, 'SANOJ'); -- this will work because we have condition on id not name

insert into stu_2 values(NULL, 'KUMAR'); -- gives error because NULL is already present

select * from stu_2; -- so multple null values can be inserted while defining unique constraint

