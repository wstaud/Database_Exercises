USE employees;

SELECT * 
FROM employees 
WHERE gender = 'M'
and (first_name = 'Irena' 
or first_name = 'Vidya'
or first_name = 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%%%%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';


