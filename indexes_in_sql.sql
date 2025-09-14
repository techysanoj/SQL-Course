/*
	- we can create index for the tables
    - why do we need to create? it will improve the performance i.e we can retrieve the records at a faster speed from the tables
    - tables having indexes has higher retrieval speed then those which do not have index
    
    - understand this by taking example of table of content of a book which makes it faster to search for a topic in a book.
    - unnecessary indexing makes insertion speed slower
    - indexes makes retrieval faster and insertion slower.
*/

use temp_db;

show tables;

create table emp3(id int, name varchar(15), exp int, country varchar(15));

select * from emp3;

show indexes from emp3; -- it will show all the index

-- insert the data
insert into emp3 values(1, 'sanoj', 1, 'IND');
insert into emp3 values(2, 'karun', 2, 'USA');
insert into emp3 values(3, 'THARUN', 1, 'UK');

select * from emp3;

-- employess having country usa
select * from emp3 where country = 'USA'; -- normal retrival without indexes
-- it is faster because data is less in this

-- now making the indexes
create index countryindex
on emp3(country); -- now index gets created

show indexes from emp3;

select * from emp3 where country = 'USA'; -- now it will be faster


-- column which is primary key the indexes for this column gets indexed automatically
-- for the unique key also