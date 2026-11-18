-- A subquery in SQL is a query nested inside another SQL query.
--  It allows complex filtering, aggregation and data manipulation by using the result of one query inside another.


SELECT * FROM employee_demographics 
WHERE employee_id  IN (
             SELECT employee_id 
             FROM employee_salary
             WHERE dept_id = 1);


-- Types of Subqueries 
-- Single Row query -- Returns exactly one row as the result.

SELECT * FROM employee_salary 
WHERE salary = (SELECT MAX(salary) FROM employee_salary ) ;

-- Multi row query  

SELECT * FROM employee_demographics 
WHERE employee_id  IN (
             SELECT employee_id 
             FROM employee_salary
             WHERE dept_id = 1);
             






-- Another example 
SELECT * FROM employee_demographics 
WHERE age < (SELECT AVG(age) From employee_demographics );


SELECT  gender , AVG(age) , MAX(age) , COUNT(age) , MIN(age) 
FROM employee_demographics 
GROUP BY gender ;
 
 
 
 
SELECT   AVG(max_age)
FROM
(SELECT gender , AVG(age) as avg_age , MAX(age) as max_age , COUNT(age) as count_age , MIN(age) as min_age    
FROM employee_demographics                                         
GROUP BY gender ) AS Agg_Table ;                                   
 
 
 










SELECT * from employee_salary ;
SELECT * from employee_demographics ;
SELECT * from parks_departments ;



