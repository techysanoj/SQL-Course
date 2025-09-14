use sakila;

show tables;

create table newFilm 
AS
select * from film; -- here we can change our sql statement accordingly

select * from newFilm;


create table newFilm2
AS
select film_id, title, release_year from film;

select * from newFilm2;