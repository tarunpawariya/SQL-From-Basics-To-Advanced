-- JOINS 
-- Joins allow you to combine two tables or more together if they have a common column 
-- it doesn't mean the column name has to be same but at least data within it are similar that you can use .


SELECT * 
FROM employee_demographics
;

SELECT * 
FROM employee_salary 
;


-- IF write JOIN then  default behave as INNER JOIN 
-- ON means matching columns based on .

-- INNER JOIN return the matching columns from both tables

SELECT  * 
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;



SELECT  dem.employee_id , age , occupation 
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


-- OUTER JOIN -- TWO types Right Join ,  LEFT join   
-- LEFT JOIN returns all rows from the left table and only matched rows from the right table
-- Right JOIN is opposite the LEFT JOIN 
SELECT  *
FROM employee_demographics AS dem 
LEFT  JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


SELECT  *
FROM employee_demographics AS dem 
RIGHT JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;



-- SELF JOIN 
-- SELF JOIN is Regular Join , but the table is joioned with itself 


SELECT * 
FROM employee_salary AS  emp1 
JOIN employee_salary AS  emp2
    ON emp1.employee_id + 1  = emp2.employee_id
;


SELECT emp1.employee_id AS emp_santa ,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa ,
emp2.employee_id AS emp2_name ,
emp2.first_name AS first_name_emp ,
emp2.last_name AS last_name_emp   
FROM employee_salary AS emp1 
JOIN employee_salary AS emp2 
    ON emp1.employee_id + 1 = emp2.employee_id 
;



-- Multiple JOIN in a query 


SELECT  *
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON  sal.dept_id = pd.department_id
;


SELECT * 
FROM parks_departments
;


