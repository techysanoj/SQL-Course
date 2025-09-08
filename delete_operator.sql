use temp_db;

-- delete a specific record from table
delete from abc where exp is NULL;
delete from abc where name = 'SANOJ';

-- to delete all the records but structure remains same
delete from abc;

select * from abc;