USE employees;

# Find number of each gender
SELECT count(*), gender 
FROM employees 
WHERE first_name = 'Irena' 
or first_name = 'Vidya'
or first_name = 'Maya'
GROUP BY gender; 


SELECT * 
FROM employees 
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT * FROM employees WHERE hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%%%%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name LIKE 'E%' or last_name LIKE '%E';

# combine first and last name
SELECT CONCAT(first_name, last_name) 
FROM employees 
WHERE last_name LIKE 'E%' and last_name LIKE '%E';

# Sort by name, show how many days hired, all born on Christmas in 1990s
SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(NOW(), hire_date) AS 'Days Hired'
FROM employees WHERE birth_date LIKE '%%%%-12-25'
AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;

# show names where last name has a 'q' in it but not 'qu'. SHow how many repeats
SELECT count(*), first_name, last_name
FROM employees 
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY repeats DESC;



