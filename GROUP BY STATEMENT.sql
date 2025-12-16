-- funct
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
SELECT DISTINCT
    (continent)
FROM
    country;
SELECT DISTINCT
    continent, region
FROM
    country;
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

 -- group by --
-- in group by are all
 
SELECT 
    continent, COUNT(*)
FROM
    country
GROUP BY continent;
SELECT 
    indepyear, COUNT(*)
FROM
    country
GROUP BY indepyear;
SELECT 
    governmentform, COUNT(*)
FROM
    country
GROUP BY governmentform;

 -- from city table you have find total city is , total discrict and uniq discrict  the population from the city table 
SELECT 
    *
FROM
    city;
SELECT 
    countrycode,
    COUNT(district),
    COUNT(DISTINCT (district)),
    SUM(population)
FROM
    city
GROUP BY countrycode;




SELECT 
    region, COUNT(name), COUNT(continent)
FROM
    country
GROUP BY region;

SELECT 
    region, AVG(population)
FROM
    country
GROUP BY region;
SELECT 
    district, COUNT(name) AS totalcity
FROM
    city
GROUP BY district;
-- count cities which have a population of more than 1 lac
-- where  => group by
SELECT 
    district, COUNT(name) AS totalcity
FROM
    city
WHERE
    population > 100000
GROUP BY district;
-- get total country which got indepyear after 1950 in each continent 
SELECT 
    continent, COUNT(name)
FROM
    country
WHERE
    indepyear > 1950
GROUP BY continent;


-- where only filter the data 
-- we can apply where filter 


SELECT 
    continent, SUM(population)
FROM
    country
WHERE
    lifeExpectancy > 35
GROUP BY continent;
-- you need find out the total country each govt form where total number > 30
--  you need find out the total country each govt form where total number > 30 only for country having there capital greater than 30 and total population 
 
SELECT 
    Governmentform, COUNT(name)
FROM
    country
GROUP BY governmentForm
HAVING COUNT(governmentForm) > 30;


SELECT 
    Governmentform, COUNT(name), SUM(population)
FROM
    country
WHERE
    capital > 30
GROUP BY governmentForm
HAVING SUM(population) > 300000;

SELECT 
    continent, region, COUNT(name)
FROM
    country
GROUP BY continent , region;











