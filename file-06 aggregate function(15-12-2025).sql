-- aggregate function (to perform the calculation on set of rows (multi line function) 
use world;
select * from country;
select count(indepyear) from country where indepyear between 1991 and 2000; 
select count(*) from country;
select distinct continent ,region from country;
select count(population), sum(population),avg(population) from country;
select *  from country;
select count(distinct governmentform) from country;
select  count(governmentform ) ,count(distinct governmentform) from country where continent='Asia';
select count(name) , sum(population), count(distinct indepyear) from country where continent="africa";


select count(name),avg(surfacearea),sum(population) from country 
where indepyear > 1947 and indepyear <1998;

select count(name) ,count(distinct continent),avg(population),sum(capital) from country
 where name like "A% " or name like "D%";
 
 -- function:-->>
--  count 
use world;
SELECT 
    *
FROM
    country;
SELECT 
    COUNT(indepyear)
FROM
    country;
SELECT 
    COUNT(*)
FROM
    country;
SELECT 
    COUNT(indepyear), COUNT(*)
FROM
    country;
-- distinct :- unique 
SELECT DISTINCT
    (continent)
FROM
    country;
SELECT DISTINCT
    continent, region
FROM
    country;
-- sum(), avg():--
SELECT 
    COUNT(population), SUM(population), AVG(population)
FROM
    country;
SELECT 
    SUM(population), COUNT(name), COUNT(DISTINCT indepyear)
FROM
    country
WHERE
    continent = 'africa';
-- get total contry avg sefec area and total population for the counrt which has indepyear from 1947(exclude) to 1998(exclude)

SELECT 
    COUNT(name), AVG(surfaceArea), SUM(population)
FROM
    country
WHERE
    Indepyear BETWEEN 1948 AND 1997;
-- get total number of counrty and number od uniq continenet
-- along whith ave population and total number of capital 
-- for the counrt and starting with a  or d

SELECT 
    COUNT(name),
    COUNT(DISTINCT continent),
    AVG(population),
    SUM(capital)
FROM
    country
WHERE
    name LIKE 'a%' OR name LIKE 'd%';
 
