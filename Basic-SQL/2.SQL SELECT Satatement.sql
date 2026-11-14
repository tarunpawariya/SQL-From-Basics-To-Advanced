SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name , last_name ,
 birth_date ,
age  ,
(age - 10 ) * 10                                 # PEDMAS is mathematical order of  operation
FROM parks_and_recreation.employee_demographics; 

# PEDMAS


#DISTICT

SELECT DISTINCT gender 
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name , gender                # shows distinct values by first name column
FROM parks_and_recreation.employee_demographics;