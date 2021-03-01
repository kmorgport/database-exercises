use employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE hire_date IN (
        SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );