-- The UNION operator is used to combine the result-set of two or more SELECT statements
-- The UNION operator automatically removes duplicate rows from the result set

SELECT *
from employee_demographics ;

select *
from employee_salary ;

select *
from parks_departments ;


SELECT first_name , last_name ,  'OLD MAN ' AS LABEL 
from employee_demographics 
WHERE age >= 40 AND gender = 'Male'
UNION 
select first_name , last_name , 'OLD LADY' AS LABEL
from employee_demographics 
where gender = 'Female' AND age >= 40 
UNION
select first_name , last_name , 'High paid employee' AS LABEL 
from employee_salary 
WHERE  salary > 70000
ORDER BY first_name  , last_name 
;