use employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
    JOIN dept_manager as dm on d.dept_no = dm.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date >CURDATE()
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm on d.dept_no = dm.dept_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date >CURDATE() AND gender = 'F'
ORDER BY d.dept_name;

Select t.title AS 'Title', COUNT(*) AS 'Count'
FROM employees as e
Join titles as t ON e.emp_no = t.emp_no
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01'
  and de.to_date = '9999-01-01'
  and d.dept_no = 'd009'
GROUP BY t.title;

SELECT DISTINCT d.dept_name AS  'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'SALARY'
FROM departments as d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees as e on dm.emp_no = e.emp_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date >CURRENT_DATE and s.to_date > CURRENT_DATE
ORDER BY d.dept_name

SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name AS 'Department Name',CONCAT(man.first_name,' ',man.last_name)
FROM