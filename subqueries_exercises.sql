use employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE hire_date IN (
        SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT title, count(title)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > curdate()
    ) AND gender = 'F';

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        ) AND to_date > curdate()
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT max(salary)
        FROM salaries
        )
    )
limit 1;

SELECT CONCAT(e.first_name,' ', e.last_name), dept_name, CONCAT(man.first_name,' ', man.last_name)
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments as depart ON de.dept_no = depart.dept_no
JOIN dept_manager dm on depart.dept_no = dm.dept_no
JOIN employees man on dm.emp_no = man.emp_no
WHERE de.to_date >curdate()
  AND dm.to_date > curdate()
