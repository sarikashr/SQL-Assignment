CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    job_title VARCHAR(50),
    salary NUMERIC(10,2) NOT NULL,
    city VARCHAR(30)
);

INSERT INTO employees
(employee_id, employee_name, department, job_title, salary, city)
VALUES
(101, 'Ram Sharma', 'IT', 'Developer', 60000, 'Kathmandu'),
(102, 'Sita Thapa', 'HR', 'HR Officer', 50000, 'Pokhara'),
(103, 'Amit Gurung', 'IT', 'Developer', 65000, 'Kathmandu'),
(104, 'Nisha Rai', 'Finance', 'Accountant', 55000, 'Lalitpur'),
(105, 'Bikash Shrestha', 'IT', 'Tester', 52000, 'Bhaktapur'),
(106, 'Puja Karki', 'HR', 'Recruiter', 48000, 'Kathmandu'),
(107, 'Ramesh Tamang', 'Finance', 'Accountant', 60000, 'Pokhara'),
(108, 'Anu Lama', 'IT', 'Developer', 70000, 'Lalitpur'),
(109, 'Suman KC', 'HR', 'Manager', 75000, 'Kathmandu'),
(110, 'Mina Gurung', 'Finance', 'Manager', 80000, 'Kathmandu'),
(111, 'Dipesh Rai', 'IT', 'Developer', 62000, 'Pokhara'),
(112, 'Sabina Thapa', 'HR', 'HR Officer', 52000, 'Lalitpur');


SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department, MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT department, MIN(salary) AS minimum_salary
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary > 50000
GROUP BY department;

SELECT department, COUNT(*) AS kathmandu_employees
FROM employees
WHERE city = 'Kathmandu'
GROUP BY department;


