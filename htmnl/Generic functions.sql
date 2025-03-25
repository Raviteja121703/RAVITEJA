----nvl,nvl2,greatest,least------

select*from employees;
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    nvl(commission_pct, 1)
FROM
    employees e;
    
   SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    nvl(manager_id, 2)
FROM
    employees e;
    
    
    SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    nvl(manager_id, ' is null')
FROM
    employees e;
    
    
    
        SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    nvl(to_char(manager_id), ' is null')
FROM
    employees e;
    
 select*from employees;   
    
    
     SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    nvl(manager_id, '0')
FROM
    employees e;   
    
    
        SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    nvl2(e.manager_id,round(manager_id,1),3)
FROM
    employees e;
    
            SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    nvl2(e.commission_pct,round(commission_pct,1),3)
FROM
    employees e; 
    
  SELECT
    greatest(2, 4, 65, 6)
FROM
    dual;

SELECT
    least(1, 3, 43, 34)
FROM
    dual;
    
     SELECT
    greatest(2, 4, 50, 6),
    least (1, 3, 55, 34)
FROM
    dual;