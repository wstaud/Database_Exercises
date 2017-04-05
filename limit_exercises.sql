# Unique last name, descending.. limit 10
SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

# born on christmas, hired in 90s... limit 5
SELECT * FROM employees WHERE birth_date LIKE '%%%%-12-25'
AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

SELECT * FROM employees WHERE birth_date LIKE '%%%%-12-25'
AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
