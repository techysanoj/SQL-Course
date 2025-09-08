use temp_db;

select * from employee;

-- to update the employee table value we are using update operator and set keyword with specific condition using where clause
update employee set exp = '4' where id = 3;

-- to update multiple columnn values together
update employee set exp = 4, id = 4 where name = 'Sanoj Kumar';

-- if no where clause given then the update will happen for all the records
update employee set exp = 4; -- here the exp for all the records will be 4