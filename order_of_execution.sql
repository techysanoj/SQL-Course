use world;

show tables;

-- so here first group by comes then having then order by
-- overall where > group by > having > order by
select continent, count(name) from country where surfacearea > 200 group by continent having count(name) > 20 order by continent asc;