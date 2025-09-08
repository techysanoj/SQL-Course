use temp_db;

-- table having column 'a' with data type int
create table xyz(a int); 
describe xyz;
select * from xyz;
insert into xyz values (1);
insert into xyz values(1.5); -- it is allowed but only converted value will be stored
insert into xyz values('Sanoj'); -- this will give error because it is string
drop table xyz;

-- table having column name 'a' with data type double
create table xyz(a double);
describe xyz;
select * from xyz;
insert into xyz values(9.12);
insert into xyz values(9); -- this will not give any error because that will be stored as double
drop table xyz;

-- table having column name 'a' with data type boolean
create table xyz(a boolean);
describe xyz;
select * from xyz;
insert into xyz values(true); -- here it will show 1 in the table entries
insert into xyz values(false); -- it will show 0
insert into xyz values(1); -- this will be converted as true because positive integers as true and other as false
insert into xyz values('sanoj'); -- gives error because it is not either true or false
drop table xyz;

-- table having column name 'a' with data type varchar
create table xyz(a varchar(15));
describe xyz;
select * from xyz;
insert into xyz values('Sanoj');
insert into xyz values('Sanoj kumar is best'); -- it will give error because size is greater than 15
drop table xyz;

-- table having column name 'a' with data type date
create table xyz(a date);
describe xyz;
select * from xyz;
insert into xyz values('2002-09-29');
insert into xyz values('Sanoj'); -- this will give error because it is not in date format
drop table xyz;

-- table having column name 'a' with data type time
create table xyz(a time);
describe xyz;
select * from xyz;
insert into xyz values('12:11:09');
drop table xyz;

-- table having column name 'a' with data type datetime
create table xyz(a datetime);
describe xyz;
select * from xyz;
insert into xyz values('2002-09-29 12:11:09');
drop table xyz;

-- table having column name 'a' with data type year
create table xyz(a year);
describe xyz;
insert into xyz values('2002');
insert into xyz values('123'); -- gives error because less than 4 digit number also greater than 4 digit will also gives error
drop table xyz;
