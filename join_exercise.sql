--All curent managers and their department
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
LEFT JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

--All current female managers and their department
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
LEFT JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

--Number of current employees by title working in service department
SELECT title, count(*) AS count 
FROM titles
JOIN dept_emp as de
ON de.emp_no = titles.emp_no
WHERE de.dept_no = 'd009' AND titles.to_date = '9999-01-01'
GROUP BY title;

--Salaries of current managers
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary
FROM employees as e
LEFT JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
JOIN salaries as s
ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

--Bonus
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(dm_name.first_name, ' ', dm_name.last_name) AS DM_NAME
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN dept_manager as dm
ON dm.dept_no = de.dept_no
JOIN employees as dm_name
ON dm_name.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';
