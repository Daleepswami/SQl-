-- FUNCTION IN SQL
/*
set of statement
fuctions
code reusuable


type of fuction:- 
                1. scaler function --> row by row (result for each row):-
                                  scaler can apply : date , int , float , string 
                2. multi line function --> multi line par apply and give 1 output
                

*/
-- string functions
-- case conversion
use world;
-- lower and upper

SELECT 
    name, continent, UPPER(name), LOWER(name)
FROM
    country;
    
    
    
    
    
-- concat and concat with a seperater 0


SELECT 
    name, continent, CONCAT(continent, '-', code, '-', 'regex')
FROM
    country;


SELECT 
    name, continent, CONCAT_WS('-', continent, code, 'regex')
FROM
    country;

-- substr(substring):- character extract based on the position
-- in substr we are give the value like:- substr(column, start_element_num ,end_element_num)


SELECT 
    name, SUBSTR(name, 1, 3)
FROM
    country;
    
SELECT 
    name, SUBSTR(name, 1), SUBSTR(name, - 5, 3)
FROM
    country;
    
SELECT 
    name, continent
FROM
    country
WHERE
    SUBSTR(name, 1, 1) = SUBSTR(continent, 1, 1);

SELECT 
    name, continent
FROM
    country
WHERE
    SUBSTR(name, 1, 3) = 'ALG';



-- instr => serch position od character 

SELECT 
    name, INSTR(name, 'e')
FROM
    country;
-- length (In use byte)

-- to get total character
SELECT 
    name, CHAR_LENGTH(name)
FROM
    country;

-- trim => remove the extra white space and remove the charcter
-- ltrim and rtrim
SELECT CHAR_LENGTH('       yash      ');
SELECT CHAR_LENGTH(TRIM('       yash      '));


SELECT 
    TRIM(BOTH 'A' FROM name)
FROM
    country;
    
SELECT 
    TRIM(BOTH 'A' FROM name)
FROM
    country;

SELECT TRIM(BOTH 'g' FROM '      yashggggggg');
-- lpad and rpad 


SELECT 
    name,
    population,
    LPAD(population, 9, '0'),
    rPAD(population, 9, '0')
FROM
    country;




-- Round():-
use world;
select lifeexpectancy,round(lifeexpectancy) from country;


select round(438.558),round(83.687,2),round(276.23,-3);
-- truncate:-->> digit of after decimal point  
select truncate(456.67,0);
-- mod()--->>>  this returns the remainder when dividend is divided by divisor
select mod(10,3);
-- pow():-  calculate a number raised to the power of another number (base and exponent)
select pow(2,3),pow(5,3);

-- ceil():-  upper value the number 
select ceil(45.1216),ceil(00.000000000000001);

-- floor():--->> lower value the number 
select floor(11.112) ;

-- distinct():- findout the the unique values
select distinct(continent) from country;




 





 
