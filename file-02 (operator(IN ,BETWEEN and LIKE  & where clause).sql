use  world;
SELECT 
    *
FROM
    city;


SELECT 
    name, population
FROM
    city;
describe city;

-- where clause we will filter the data 
SELECT 
    *
FROM
    city
WHERE
    district = 'Zuid-Holland'; 
    
SELECT 
    *
FROM
    city
WHERE
    countrycode = 'ARG';
-- -----  6 more than 6 lakh----------------
SELECT 
    *
FROM
    city
WHERE
    population > 600000;
-- <> != (not equals to )
SELECT 
    *
FROM
    city
WHERE
    countrycode <> 'ARG';
    
-- in operator :- In operator  used to filter the data in the specific set of values
SELECT 
    *
FROM
    country
WHERE
    continent = 'North America';
SELECT 
    *
FROM
    country
WHERE
    continent = 'Europe';
-- getting countries in below continents
SELECT 
    *
FROM
    country
WHERE
    continent IN ('North America' , 'Europe', 'asia');
    
SELECT 
    name, continent, indepyear
FROM
    country
WHERE
    indepyear IN (1901 , 1960);

-- between operator :- between operator  used to filter the data in the specific give range values


    SELECT 
    name, continent, indepyear
FROM
    country
WHERE
    indepyear BETWEEN 1901 AND 1960;

    
-- questions practice --
-- Q.1 get the code country region where region is not middle east 
SELECT 
    name, code, Region
FROM
    country
WHERE
    region != 'Middle East';
-- Q.2 get the name indepyear and population where 10 % increase in the population
SELECT 
    name,
    indepyear,
    population + population * 0.1 AS newpopulation
FROM
    country;
-- Q.3 get the all the columns of the country where lifeExpectancy from 38.3 to 66.4
SELECT 
    *
FROM
    country
WHERE
    lifeExpectancy IN (38.3 , 66.4); 

-- Q.4 get the name continent population,GNP  columns from country where population is not from 5 k to 200k

SELECT 
    name, continent, population, GNP
FROM
    country
WHERE
    population NOT BETWEEN 5000 AND 200000;

-- like  operator :- search the pattern in keys 
-- to meet the pattern
-- some special character is called wild card character 
-- (I) "%" [we are finding zero or more character]
SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE 'A%';
SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE '%a';
SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE '%a%';
-- (II) _(underscore)=> 1 character 
SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE 'I____';
SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE '__a__';

SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE 'A%';
SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE '%da%';

SELECT 
    name, continent
FROM
    country
WHERE
    name LIKE '_u%a%';

-- Q.1  get the name continent and region from country where second letter a of region
SELECT 
    name, Continent, Region
FROM
    country
WHERE
    region LIKE '_a%';
-- Q.2  get the name continent and region from country where in continent last third letter I 
SELECT 
    name, Continent, Region
FROM
    country
WHERE
    continent LIKE '%i__';
-- Q.3  get the name continent and region from country where in continent second letter "c" and second letter "i"
SELECT 
    name, Continent, Region
FROM
    country
WHERE
    continent LIKE '_c%i_';
-- Q.4  get the name continent and region from country where in continent atleast two "a" speated by character 
SELECT 
    name, Continent, Region
FROM
    country
WHERE
    continent LIKE '%a_a%';
    
