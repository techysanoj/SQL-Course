use temp_db;

show tables;

describe emp;

set autocommit = 0;
insert into emp values(1, 'Sanoj', 1);

select * from emp;

-- this will delete all the record in the emp; -> temporary changes 
delete from emp;

-- this will revert all the temp changes
rollback;

-- this is permanent changes so it will not get revert back because we are using commit after doing the changes
insert into emp values(1, 'Sanoj', 2);
commit;

rollback;


-- make sure to set autocommit = 1;
set autocommit = 1;
