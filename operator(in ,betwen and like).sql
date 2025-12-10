use world;
show tables;
select * from city where name='India';
select name ,population from city;
select * from city where countrycode='ARG';
select * from city where district='Zuid-Holland';
select * from city where population>600000;
select * from city where countrycode='AUS';
select * from city where countrycode <> 'ARG';
select * from country where continent='north America';
select * from country where continent='Europe';
-- in operator use the filter the data in specific set of values--
select * from country where continent in ('north America','Europe','Asia');


select name ,continent from country where indepyear in (1901,1960);

-- range of values by between operator--
select name ,continent from country where indepyear between 1901 and 1960;
select name ,continent indepyear from country where indepyear  not between 1901 and 1960;


select * from country;
select name, region from country where region != 'Middle East';
select name, indepyear,population,population+(population*0.1) from country;

select * from country where lifeExpectancy in (38.3,66.4);
select Name, continent, population, GNP from country where population not between 5000 and 200000;

-- like operator:- serach the pattern ---
-- to meet with pattern
-- special character is called wild card character
-- % (we are finding zero or more charactor 


select name, continent from country where name like 'a%';
select name, continent from country where name like '%a';
select name, continent from country where name like '%a%';
select name, continent from country where name like '%india%';

-- (underscore) 
select name continent from country where name like 'Ir__';
