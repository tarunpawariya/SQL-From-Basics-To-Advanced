-- STRING FUNCTION

-- LENGTH -  Pass a column name inside the parentheses to count its characters.
-- Its Best Example is  -- when i  was working with   phone numbers  and check charcter of numbers is it exactly 10 or not and fix them 
SELECT first_name , LENGTH(first_name) 
FROM employee_demographics
ORDER BY 2  
;


-- UPPER -- Convert char into UPPERCase
-- LOWER -- Convert char into LOWERCase

SELECT first_name , UPPER(first_name) AS UPPERCASE 
FROM employee_demographics 
;


-- LOWERcase 
SELECT first_name , LOWER(first_name) AS LOWERCASE 
FROM employee_demographics
;


-- TRIM -- The TRIM() function removes leading and trailing spaces
SELECT TRIM('     SKY    ') AS TRIM  
;



-- The LEFT() and RIGHT() functions allow you to extract a specified number of characters from the left or right side of a string, respectively.

SELECT first_name , LEFT(first_name,4) AS LEFTSTRING ,  
 RIGHT(first_name,4) AS RIGHTSTRING
from employee_demographics;



-- The SUBSTRING() (or SUBSTR()) function is used to extract a substring from a string, starting from a specified position.
SELECT first_name , SUBSTRING(first_name, 3, 2) AS SUBSTRING
FROM employee_demographics ;

SELECT first_name , SUBSTRING(first_name , 3 ,2 ) AS SUBSTRING  ,
SUBSTRING(birth_date , 6,2 )  AS birth_month
FROM employee_demographics ;



-- The REVERSE() function reverses the characters in a string. 
-- It’s useful in situations where we need to process data backward, such as for password validation or certain pattern matching.

SELECT first_name , REVERSE(first_name) AS REVERSESTRING 
FROM employee_demographics ;

-- example
SELECT 
    first_name,
    CASE 
        WHEN first_name = REVERSE(first_name)
        THEN 'Palindrome'
        ELSE 'Not Palindrome'
    END AS palindrome_check
FROM employee_demographics;




-- LOCATE() allows you to find the nth occurrence of a substring in a string. This is especially useful when you need to locate a specific substring based on its position.
SELECT first_name , LOCATE( 'i', first_name , 1)
FROM employee_demographics ;


-- The REPEAT() function repeats a string a specified number of times. It's useful when you need to duplicate a string or pattern for certain operations.

SELECT first_name , REPEAT(  first_name , 2  )
FROM employee_demographics ;


-- CONCAT() is used to combine two more string into one string
-- It is useful when we want to merge fields like first and last names into a full name.

SELECT first_name  , CONCAT(first_name , '  ' , last_name) AS FULLNAME
FROM employee_demographics ;


-- INSTR() is used to find the position of first occurence of a substring with a substring 


-- The REPLACE() function replaces occurrences of a substring within a string with another substring. 
-- This is useful for cleaning up data, such as replacing invalid characters or formatting errors.

SELECT first_name  , REPLACE(first_name , 'A' , 'Z')
FROM employee_demographics ;
