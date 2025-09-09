use temp_db;

show tables;

describe emp;

select * from emp;

set autocommit = 0;

-- this will be temp delete operation
delete from emp;

-- this will be permanent change even if we have autcommit = 0;
truncate table emp;

-- make sure to set autocommit = 1;
set autocommit = 1;