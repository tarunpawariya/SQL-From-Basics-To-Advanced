--  The CASE expression goes through the conditions and stops at the first match (like an if-then-else statement). 
  -- So, once a condition is true, it will stop processing and return the result.
  
  
SELECT  first_name
last_name,
age,
CASE
      WHEN age <= 35 THEN 'YOUNG'
      WHEN age BETWEEN 31 AND 50 THEN 'OLD'
      ELSE "ON Death's Door"
END AS Age_Bracket
FROM employee_demographics
;


-- Example of CASE exppression -- Pay increases and Bonuses
-- whose salary is less than  50000 increase 5%
-- whose salary is  greater than 50000 increase 7%
-- Give 10% bonus to employees working in Finance department
 
SELECT first_name , last_name , salary ,
CASE 
     WHEN Salary < 50000 THEN Salary + (Salary * 0.05)
     WHEN Salary > 50000 THEN Salary + ( Salary * 0.07)
END NEW_Salary ,
CASE 
     WHEN dept_id = 6 THEN Salary * 0.10
END BONUS 
FROM employee_salary ;





SELECT *
from employee_salary ;
SELECT *
from parks_departments ;
  