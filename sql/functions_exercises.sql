use employees;

SELECT CONCAT(first_name, ' ' , last_name) AS Employees
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
ORDER BY emp_no;

SELECT CONCAT(first_name, ' ' , last_name) AS Employees
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ' , last_name) AS Christmas_Employees
FROM employees
WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25;

SELECT CONCAT(first_name, ' ' , last_name) AS 90s_Christmas_Employees
FROM employees
WHERE (MONTH(birth_date) = 12
    AND DAY(birth_date) = 25)
    AND YEAR(hire_date) BETWEEN 1990 AND 1999;

SELECT CONCAT(first_name, ' ' , last_name) AS 90s_Christmas_Employees
FROM employees
WHERE (MONTH(birth_date) = 12
    AND DAY(birth_date) = 25)
    AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

SELECT CONCAT(first_name, ' ' , last_name) AS 90s_Christmas_Employees,
    DATEDIFF(CURDATE(), hire_date) AS Tenure
FROM employees
WHERE (MONTH(birth_date) = 12
    AND DAY(birth_date) = 25)
    AND YEAR(hire_date) BETWEEN 1990 AND 1999;