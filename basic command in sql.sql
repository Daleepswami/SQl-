show databases;
create database VIT;
use VIT;
-- to see output selsct statement--
select database();
show tables;
create table daleep (salary int , age  int );
describe daleep;
show databases;
use world;
show tables;
describe city;
select * from city;
-- maths opretion--
select name, population+10 from city;
-- query can be multiple line--
-- Sql is not case sensitive--
select *, population+1212-4-5-12-4 as newpopulation from country;
-- alias(nick name)--