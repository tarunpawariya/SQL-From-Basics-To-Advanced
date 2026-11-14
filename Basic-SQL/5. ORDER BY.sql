 --  ORDER BY  'clause is used to sort the result set of a query by one or more columns. 
-- It organizes output alphabetically, numerically, or chronologically to make data easier to read and analyze.
-- WE use DESC ASC accd. to question 



 SELECT * 
 FROM employee_demographics 
 ORDER BY  gender , age  ; 
 
 -- Number represented the columns 
  
SELECT * 
FROM employee_demographics 
ORDER BY 5  , 4   ; 
  
  
  
  
  
-- Group BY order by together 
 SELECT gender , first_name 
 FROM employee_demographics 
 GROUP BY gender , first_name 
 ORDER BY first_name  ASC ; 
 ORDER BY first_name  ASC ; 
  
  
  