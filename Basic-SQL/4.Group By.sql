-- GROUP BY ORDER By 

-- Group by commonly used with aggregates functions like COUNT() , Sum() , AVG() , MAX() ..etc

-- Table 1 
SELECT * 
FROM employee_demographics ;

SELECT gender , AVG(age)
FROM employee_demographics 
GROUP BY gender ;

SELECT gender , first_name 
FROM employee_demographics 
GROUP BY gender , first_name ;


-- table 2 
SELECT * 
FROM employee_salary ;


SELECT occupation , AVG(salary) AS average_salary
FROM employee_salary 
GROUP BY Occupation  ;



SELECT occuption , count(*)
FROM employee_salary 
GROUP BY occupation ;




