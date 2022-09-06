use employees;

SELECT DISTINCT title AS Job_Titles
FROM titles;

SELECT last_name AS E
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
GROUP BY last_name;

SELECT first_name,last_name AS E
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
GROUP BY first_name,last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND NOT last_name LIKE '%qu%'
GROUP BY last_name;


SELECT COUNT(*) AS count ,last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND NOT last_name LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*);

SELECT gender , COUNT(*) AS name_count
FROM employees
WHERE (first_name = 'Irena' || first_name = 'Vidya' || first_name =  'Maya')
GROUP BY gender;