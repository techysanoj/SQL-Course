-- to show databases
show databases;

-- to create a new database
create database temp_db;

-- to delete the database
drop database temp_db;

use sys;

-- to get the different tables in the database
show tables;

use temp_db;

-- to create table
create table employee(ID INT, NAME varchar(15), EXP INT);

-- to get the tables strucutre
describe employee;

-- to create the table using another table (a kind of common table expression (CTE))
create table emp as 
select id, name from employee;

-- to delete the table
drop table emp;



