USE employees;

DESC departments;
DESC dept_emp;
DESC dept_manager;
DESC employees;
DESC salaries;
DESC titles;

SELECT departments.dept_name                                  AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
         LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY `Department Name`;

SELECT departments.dept_name                                  AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
         LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
  AND employees.gender = 'F'
ORDER BY `Department Name`;

SELECT titles.title AS 'Title', COUNT(dept_emp.emp_no) AS 'Total'
FROM titles
         JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd009'
  AND dept_emp.to_date > NOW()
  AND titles.to_date > NOW()
GROUP BY titles.title;

SELECT departments.dept_name                                  AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
       salaries.salary                                        AS 'Salary'
FROM departments
         JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
         LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no
         JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date > NOW()
  AND salaries.to_date > NOW()
ORDER BY `Department Name`;

SELECT CONCAT(employees.first_name, ' ', employees.last_name)           AS 'Employee',
       departments.dept_name                                            AS 'Department',
       CONCAT(Managers_names.first_name, ' ', Managers_names.last_name) AS 'Manager'
FROM employees
         JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
         JOIN dept_manager ON dept_manager.dept_no = dept_emp.dept_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
         JOIN employees AS Managers_names ON Managers_names.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date > NOW()
  AND dept_manager.to_date > NOW()
    ORDER BY `Department`, employees.emp_no;



