use employees;

SELECT CONCAT (e.first_name, ' ', e.last_name) AS manager, d.dept_name AS deparment
FROM employees as e
        JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
        JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
        JOIN departments as d ON manager.dept_no = d.dept_no;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS manager, d.dept_name AS department
FROM employees as e
        JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
        JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
        JOIN departments as d ON manager.dept_no = d.dept_no
WHERE e.gender = 'F';

SELECT title, COUNT(titles.emp_no) AS count
FROM titles
        JOIN dept_emp AS de ON titles.emp_no = de.emp_no
        JOIN departments AS dept ON de.dept_no = dept.dept_no
WHERE dept.dept_name = 'Customer Service'
    AND titles.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT d.dept_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS manager, s.salary AS salary
FROM departments AS d
        JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
        JOIN employees AS e ON dm.emp_no = e.emp_no
        JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS manager, d.dept_name AS department
FROM employees as e
        JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
        JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
        JOIN departments as d ON manager.dept_no = d.dept_no
WHERE manager.to_date = '9999-01-01'
ORDER BY dept_name;