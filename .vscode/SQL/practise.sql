-- Numeric Function
SELECT
    power(1230, 10)
FROM
    dual;
SELECT
    power(500, 5)
FROM
    dual;
--SQRT 
SELECT
    sqrt(300)
FROM
    dual;
SELECT
    sqrt(625)
FROM
    dual;
 --MOD/REMINDER 
 --m=165
 --n=4
SELECT
    mod(165, 4)
FROM
    dual;
 --ROUND
 --m=19.4567
SELECT
    round(19.4567)
FROM
    dual;  
SELECT
    round(19.561)
FROM
    dual;   
SELECT
    round(19.45678, 4)
FROM
    dual;   
SELECT
    round(19.143,2)
FROM
    dual;    
 --TRUNC 
SELECT
    trunc(19.656)
FROM
    dual;
  SELECT
    trunc(19.416, 3)
FROM
    dual;
--differnce between trunc and round 
SELECT
    round(19.456, 2),
    trunc(19.456, 2)
FROM
    dual;
--CEIL
   SELECT
    ceil(19.45),
    ceil(19.69)
FROM
    dual;
SELECT
    floor(19.45),
    floor(19.69)
FROM
    dual;
   select sysdate from dual;

   
-- Date function
--DATE Functions
--SYSDATE

SELECT
    sysdate
FROM
    dual;

--CURRENT_DATE

SELECT
    current_date
FROM
    dual;

--SYSDATE vs CURRENT_DATE

SELECT
    to_char(sysdate, 'dd-Mon-yyyy hh24:mi:ss')      system_server_date,
    to_char(current_date, 'dd-Mon-yyyy hh24:mi:ss') user_date
FROM
    dual;
    
--ADD_MONTHS
--d = '18-Mar-2025'
--n = 9

SELECT
    add_months('18-Mar-2025', 9) months_added_date
FROM
    dual;
SELECT
    add_months('19-mar-2025', 99)
FROM
    dual;  
--n = -9

SELECT
    add_months('18-Mar-2025', -9) months_added_date
FROM
    dual;
    
    
SELECT
    to_char(add_months('18-Mar-2025', 9999), 'dd-Mon-yyyy') months_added_date
FROM
    dual;
    

--MONTHS_BETWEEN
--d1 = '18-Dec-2025'
--d2 = '18-Jun-2024'

SELECT
    months_between('18-Dec-2025', '18-Jun-2024')
FROM
    dual;
 SELECT
    months_between('19-mar-2025', '24-apr-2023') months
FROM
    dual;      
SELECT
    months_between('20-jan-2024', '12-aug-2025')
FROM
    dual;
    
    
--NEXT_DAY
--d ='18-Mar-2025'
--day = 'wed'

SELECT
    next_day('18-Mar-2025', 'wed') next_day_date
FROM
    dual;
    
--day ='fri'

SELECT
    next_day('18-Mar-2025', 'fri') next_day_date
FROM
    dual;

SELECT
    next_day('18-Mar-2025', 'Tue') next_day_date
FROM
    dual;
    
    
--LAST_DAY
--d = '18-Mar-2025'

SELECT
    last_day('18-Mar-2025') last_day_date
FROM
    dual;
SELECT
    last_day('24-apr-2023')
FROM
    dual; 
SELECT
    last_day('18-Feb-2025') last_day_date_2025,
    last_day('18-Feb-2024') last_day_date_2024
FROM
    dual;   