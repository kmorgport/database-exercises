USE employees;

SELECT CONCAT (first_name,' ',last_name) FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E';

SELECT *, CONCAT(first_name,' ',last_name,' has worked here for ',DATEDIFF(now(),hire_date), ' ','days.') FROM employees WHERE birth_date LIKE '%12-25' AND year(hire_date) BETWEEN 1990 and 1999
ORDER BY birth_date, hire_date DESC;