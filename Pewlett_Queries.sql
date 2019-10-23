--Analysis
--Sort by employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e."last_Name", e."first_Name", e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON s.emp_no=e.emp_no;

--Employees hired in 1986
SELECT * FROM employees
WHERE hire_date BETWEEN '1985-12-31' AND '1987-01-01';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e."last_Name", e."first_Name", m.from_date, m.to_date
FROM departments AS d
INNER JOIN dept_manager AS m 
ON m.dept_no = d.dept_no
INNER JOIN employees AS e
ON e.emp_no = m.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e."last_Name", e."first_Name", d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d_e
ON d_e.emp_no=e.emp_no
INNER JOIN departments AS d
ON d.dept_no=d_e.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees AS e
WHERE e."first_Name" LIKE 'Hercules' AND e."last_Name" LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e."last_Name", e."first_Name", d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d_e
ON d_e.emp_no=e.emp_no
INNER JOIN departments AS d
ON d.dept_no=d_e.dept_no
WHERE d.dept_name LIKE 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT e.emp_no, e."last_Name", e."first_Name", d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d_e
ON d_e.emp_no=e.emp_no
INNER JOIN departments AS d
ON d.dept_no=d_e.dept_no
WHERE d.dept_name LIKE 'Sales' OR d.dept_name LIKE 'development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e."last_Name", COUNT (*) 
FROM employees AS e
Group BY "last_Name"
ORDER BY COUNT(*) DESC
;





