use world;
-- logical operator---
-- 1. and ---
-- 2. or ---
-- 3. not---
select name ,continent from country where Continent="asia" or Continent="africa";


SELECT 
    name, continent, Region
FROM
    country
WHERE
    Continent = 'asia'
        OR region = 'middle east';

SELECT 
    name, continent, Region
FROM
    country
WHERE
    Continent = 'asia'
        AND region = 'middle east';

SELECT 
    name, continent, Region, IndepYear
FROM
    country
WHERE
    Continent = 'asia' OR IndepYear = 1901;

SELECT 
    name, continent, Region, IndepYear
FROM
    country
WHERE
    Continent = 'asia' AND IndepYear = 1947;