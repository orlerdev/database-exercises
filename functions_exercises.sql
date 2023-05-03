USE employees;

SELECT *
from employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY last_name, first_name;

SELECT *
from employees
WHERE first_name = ('Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';

SELECT *
from employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT CONCAT(first_name, ' ', last_name)
from employees
WHERE last_name LIKE 'E%E';

SELECT *
from employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

SELECT *
from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT *
from employees
WHERE DAYOFMONTH(birth_date) = 25
  AND MONTH(birth_date) = 12;

SELECT CONCAT(first_name, ' ', last_name, ':', ' ', FLOOR((UNIX_TIMESTAMP(hire_date) / 86400)) - FLOOR((CURDATE() / 86400)), ' ', 'days') AS 'Employees hired in the 1990\'s and born on Christmas'
from employees
WHERE DAYOFMONTH(birth_date) = 25
  AND MONTH(birth_date) = 12
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
    ORDER BY DATEDIFF(birth_date, CURDATE()), DATEDIFF(hire_date, CURDATE()) DESC;
;
