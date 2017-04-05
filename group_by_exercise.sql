SELECT DISTINCT title 
FROM titles;

SELECT DISTINCT title 
FROM titles 
GROUP BY title ASC;

SELECT last_name 
FROM employees 
WHERE last_name LIKE 'E%' and last_name LIKE '%E'
GROUP BY last_name;

SELECT last_name, first_name 
FROM employees 
WHERE last_name LIKE 'E%' and last_name LIKE '%E'
Group By first_name ASC, last_name;

SELECT * 
FROM employees 
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name;

