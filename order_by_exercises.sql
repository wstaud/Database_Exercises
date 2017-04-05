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

SELECT * FROM employees WHERE last_name LIKE 'E%' and last_name LIKE '%E';

SELECT * FROM employees WHERE birth_date LIKE '%%%%-12-25'
AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%';

