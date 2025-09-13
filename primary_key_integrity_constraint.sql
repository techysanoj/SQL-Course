use temp_db;

show tables;

-- here primary key simplye means = NOT NULL + UNIQUE
-- it is used to uniquely identify a tuple/record

create table temp1(id int PRIMARY KEY, fullname varchar(15));

insert into temp1 values(1, 'SANOJ'); -- no error
insert into temp1 values(2, 'Kumar'); -- no error

insert into temp1 values(1, 'DEEPAK'); -- gives error

insert into temp1 values(NULL, 'DEEPAK kumar'); -- gives error


-- tables can also be defined like this
create table temp2(id int, fullname varchar(15), primary key(id)); -- here id is primary key

create table temp3(id int, fullname varchar(15), primary key(id, fullname)); -- here id and fullname is primary key

insert into temp3 values(1, 'SANOJ'); -- no error
insert into temp3 values(1, 'DEEPAK'); -- no error because combination is primary key
insert into temp3 values(NULL, 'DEEPAK') -- gives error because column can not contain null values

