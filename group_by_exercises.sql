USE titles;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY first_name, last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%' GROUP BY last_name;

SELECT DISTINCT last_name, COUNT(*) FROM employees WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%' GROUP BY last_name;

SELECT DISTINCT COUNT(first_name), gender FROM employees WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
            first_name = 'Maya'
        GROUP BY gender;