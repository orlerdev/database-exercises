USE employees;

SELECT CONCAT(emp_no, ' ', '-', ' ', last_name, ',', ' ', first_name) AS 'full-name', birth_date AS 'DOB' FROM employees GROUP BY emp_no LIMIT 10;
