use sakila;

show tables;

create table newFilm 
AS
select * from film; -- here we can change our sql statement accordingly

select * from newFilm;

