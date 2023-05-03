USE employees;

SELECT DISTINCT title FROM titles;
SELECT CONCAT (first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%E' GROUP BY CONCAT (first_name, ' ', last_name);
SELECT CONCAT(COUNT(last_name), ' ', last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;
SELECT COUNT(*) from employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT CONCAT(COUNT(*), ' ', gender) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;