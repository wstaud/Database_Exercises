
# Find all employees with the same hire data as employee 101010
SELECT CONCAT(first_name, ' ', last_name) AS Name, hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
	);

# Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE title IN (
	SELECT title
	FROM employees
	WHERE first_name = 'Aamod' AND emp_no = titles.emp_no
	);


#All female managers	
SELECT CONCAT(first_name, ' ', last_name) AS Name, emp_no
FROM employees
WHERE gender = 'F' AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
	);
