use temp_db;

show tables;

describe emp;

-- to add new column in the emp table
alter table emp add location varchar(15);

-- to change the data type of the location column
alter table emp modify column location int;
-- size of the varchar can also be increased
alter table emp modify column location varchar(20);

-- to change the column name
alter table emp rename column location to loc;

-- to delete the column
alter table emp drop column loc;

