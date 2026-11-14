-- LIMIT clauses restricts the max number of rows returned by a select query 
  
-- QUES 1 -- retrieve  the first three  oldeest employee 
  
SELECT * 
FROM employee_demographics
ORDER BY age DESC 
LIMIT 3 
;


SELECT * 
FROM employee_demographics
LIMIT 3 , 3
;


-- ALIASING it means that we give own name for rows columns 

SELECT gender  , AVG(age) AS avg_age 
FROM employee_demographics 
GROUP BY gender 
HAVING avg_age > 40 ; 


-- NOTE - if we not written AS , then it can be  works as we wrtten by AS 

SELECT gender  , AVG(age)  avg_age 
FROM employee_demographics 
GROUP BY gender 
HAVING avg_age > 40 ; 