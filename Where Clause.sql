-- The WHERE Clause: Helps filter our records or rows of data based on the specified conditions.
SELECT
	*
FROM
	parks_and_recreation.employee_salary;
-- Retrieves all the data from the employee_salary table located in the parks_and_recreation database.

SELECT
	*
FROM
	parks_and_recreation.employee_salary
WHERE
	first_name = 'Leslie';
-- Returns all rows in the employee_salary table where first_name column has value 'Laslie'. If no records match, the value will be empty. 

SELECT
	*
FROM
	parks_and_recreation.employee_salary
WHERE 	
	salary >= 50000;
-- Returns all columns for any rows where the salary is greater than or equal to 50,000. 

SELECT
	*
FROM
	parks_and_recreation.employee_salary
WHERE
	salary< 50000;
-- Returns all columns for any rows where the salary is less 50,000. 

SELECT
	*
FROM
	parks_and_recreation.employee_salary
WHERE
	salary <=50000;
-- Returns all columns for any rows where the salary is less than or equal to 50,000. 
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics;
-- Retrieves all the data from the employee_demographics table located in the parks_and_recreation database.
  
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender = 'Female';
-- Returns all columns for any rows where the gender is female. 

SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender !='Female';
-- Returns all columns for any rows where the gender NOT EQUAL to female. 
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date > '1985-01-01';
-- Returns all columns for any rows where the birth_date is greater than 1985-01-01. 
    
 -- Logical statements AND, OR , NOT    
 
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date > '1985-01-01'
    AND
    gender = 'Male';
-- Only records that meet both the birth_date and gender condition will appear.

SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date > '1985-01-01'
    OR
    gender = 'Male';
-- If either the condition is met (birth_date or gender) the results will be displayed
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date > '1985-01-01'
    OR NOT
    gender = 'Male';
-- If row has birth_date after 1985-01-01 will be included regardless of gender
-- if row has a gender value other than male it will be included regardless of birth_date
-- if rows meets both conditons will also be included in the results 
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	(first_name = 'Leslie' AND age = 44)
    OR 
		age > 55;
-- this query will return all rows from employee_demographics table where first_name is leslie and age is exatly 44 or age greatre than 55 regardless of the first name.
         
-- Like Statements (%, and  _)

SELECT
	*
FROM
	parks_and_recreation.employee_demographics;
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
WHERE
	first_name
		LIKE 'a%';
-- This query will return all rows from the employee_demographics table where the first_name starts with the letter 'a'.
    