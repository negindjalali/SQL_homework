-- Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number
SELECT
e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM
employees e
INNER JOIN salaries s ON
e.emp_no = s.emp_no
ORDER BY emp_no

-- Select the first name, last name, and hiring date for all employees hired in 1986 


SELECT
first_name,
last_name,
hire_date
FROM
employees
where extract(year from hire_date) = 1986;

-- Select the department number, department name, employee number, last name, and first name of all managers of each department

SELECT
m.dept_no,
m.emp_no,
d.dept_name,
e.last_name,
e.first_name
FROM
dept_manager m
INNER JOIN departments d
ON d.dept_no = m.dept_no
INNER JOIN employees e
ON e.emp_no = m.emp_no
-- Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM
employees e
LEFT JOIN dept_emp de ON  e.emp_no = de.emp_no
INNER JOIN
departments d
ON
de.dept_no = d.dept_no
ORDER BY emp_no

-- Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
SELECT
first_name,
last_name,
birth_date,
sex
FROM 
employees e
WHERE
e.first_name ='Hercules' AND (lower(e.last_name) like 'b%')

-- Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number
SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM
employees e
LEFT JOIN dept_emp de ON  e.emp_no = de.emp_no
INNER JOIN
departments d
ON
de.dept_no = d.dept_no
WHERE dept_name = 'Sales' 
ORDER BY emp_no

-- Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number
SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM
employees e
LEFT JOIN dept_emp de ON  e.emp_no = de.emp_no
INNER JOIN
departments d
ON
de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name ='Development'
ORDER BY emp_no

-- Count the number of employees, grouped by last name

SELECT
last_name,
COUNT(last_name)

FROM
employees
GROUP BY last_name



