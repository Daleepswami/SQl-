-- date :-  mant inbuild function for date time
SELECT 
    NOW(),
    CURDATE(),
    CURRENT_DATE(),
    CURRENT_TIME(),
    CURRENT_TIMESTAMP();
-- add date ,month and year
SELECT 
    NOW(),
    ADDDATE(NOW(), 2),
    ADDDATE(NOW(), INTERVAL 3 MONTH),
    ADDDATE(NOW(), INTERVAL 3 YEAR);
-- subtraction date,month,year
SELECT NOW(), SUBDATE(NOW(), 2), YEAR(NOW());
SELECT NOW(), EXTRACT(WEEK FROM NOW());
SELECT NOW(), EXTRACT(MONTH FROM NOW());
SELECT NOW(), EXTRACT(DAY FROM NOW());

-- date format
SELECT NOW(), DATE_FORMAT(NOW(), 'month is %M and year is %Y');

