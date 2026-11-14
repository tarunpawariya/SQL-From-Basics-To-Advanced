-- HAVING clause used after Group By it exists because its standard (WHERE clause) cannot be used agrregate function - COUNT, max , min , avg etc..

SELECT * 
FROM employee_salary ;

-- lets join all  Clauses as much as you done so far 
SELECT occupation , AVG(salary)
FROM employee_salary 
WHERE occupation LIKE 'city%'
GROUP BY occupation                                         
HAVING AVG(salary) >= 57000
ORDER BY AVG(salary) DESC ;