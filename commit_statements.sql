use temp_db;

show tables;

describe emp;

set autocommit = 0;
insert into emp values(11, 'KK', 10); -- these changes will be temporary

-- to make changes permanent even if we have written set autocommit = 0;
set autocommit = 0;
insert into emp values(11, 'KK', 10);
commit;

select * from emp;

-- make sure to set autocommit = 1 so that for other queries you do not need to write commit always
set autocommit = 1;