1️⃣ QUERY:-

SELECT UPPER(employee_name)
FROM employees;

________________________________________________________________________________________

2️⃣ QUERY:-

SELECT LOWER(employee_name)
FROM employees;

________________________________________________________________________________________

3️⃣ QUERY:-

SELECT 
    employee_name,
    LENGTH(employee_name) AS name_length
FROM employees;

________________________________________________________________________________________

4️⃣ QUERY:-

SELECT COUNT(*) AS total_employees
FROM employees;

________________________________________________________________________________________

5️⃣ QUERY:-

SELECT SUM(salary) AS total_salary
FROM employees;

________________________________________________________________________________________

6️⃣ QUERY:-

SELECT AVG(salary) AS average_salary
FROM employees;

________________________________________________________________________________________

7️⃣ QUERY:-

SELECT MAX(salary) AS highest_salary
FROM employees;

________________________________________________________________________________________

8️⃣ QUERY:-

SELECT MIN(salary) AS lowest_salary
FROM employees;

________________________________________________________________________________________

9️⃣ QUERY:-

SELECT
     ROUND(AVG(salary), 2) AS average_salary
FROM employees;

________________________________________________________________________________________

🔟 QUERY:-

CREATE VIEW employee_details AS
SELECT
    e.employee_id,
    e.employee_name,
    e.email,
    e.salary,
    d.department_name
FROM employees e
JOIN departments d
	ON e.department_id = d.department_id;

SELECT * FROM employee_details;

_______________________________________________________________________________________

1️⃣1️⃣ QUERY:-

CREATE VIEW it_employees AS
SELECT 
    e.employee_id,
    e.employee_name,
    e.email,
    e.salary,
    d.department_name
FROM employees e
JOIN departments d
	ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

SELECT * FROM it_employees;

______________________________________________________________________________________

1️⃣2️⃣ QUERY:-

CREATE VIEW high_salary_employees1 AS
SELECT
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
JOIN departments d
	ON e.department_id = d.department_id
WHERE e.salary > 60000;

SELECT * FROM high_salary_employees;

_______________________________________________________________________________________