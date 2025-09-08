use temp_db;

create table abc(id int, name varchar(15), exp int);

-- this will not give any kind of error
insert into abc values(1, 'SANOJ', 1);
insert into abc values(2, 'VIVEK', 2);

-- insert into abc values(3, 'DEEPAK'); -- this will give error 
-- so to insert only some column values  
insert into abc(id, name) values(3, 'DEEPAK');

select * from abc;

-- to fetch all those entries having exp is null
select * from abc where exp = null; -- this will give nothing because it is incorrect way to do this

select * from abc where exp IS NULL;

-- where exp is NOT NULL
select * from abc where exp IS NOT NULL;

