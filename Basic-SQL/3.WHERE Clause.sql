-- WHERE Clause 

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie' ;

SELECT * 
FROM employee_salary 
WHERE salary = '20000'  ; 






-- SEE on other Table 
-- IN Operator 
-- You cansee that here that  ( IN operator used to when we retrieve the specific/MULTIPLE  info by written in bracket it can be in numeric and string both )

SELECT * 
FROM employee_demographics
WHERE first_name IN ('Tom' , 'April' , 'Jerry' ) ;






-- BETWEEN Operator 

SELECT *
FROM employee_demographics
WHERE  age BETWEEN 30 AND 50 ;


-- LIKE operator - match the same rows which you retrieve 
-- here % means anything which we can both written in starting and ending
-- here (_) underscore means speciafic value in if give one underscore  (b_) means only valid for which start with b alphabet and only one value after this alphabet


SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'C%'; 

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'a__';    -- a__%  right 


SELECT * 
FROM employee_demographics 
WHERE birth_date LIKE '1980%';


-- WHERE with Logcial Operator ( AND , OR , NOT )

SELECT * 
FROM employee_demographics
WHERE birth_date >'1970-07-30' 
AND not  gender = 'Male';


-- OR AND  operators together  -- means we apply together multilple conditions
SELECT * 
FROM employee_demographics 
WHERE (first_name = 'April' AND age = 29)  OR age > 25 ;




