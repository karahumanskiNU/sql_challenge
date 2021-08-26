-- employee number, last name, first name, sex, and salary.
SELECT
	emp.emp_no, emp.last_name, emp.first_name,emp.sex, sal.salary
FROM
	Employees emp
JOIN
	Salaries sal ON emp.emp_no=sal.emp_no;

--first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM Employees
WHERE hire_date  BETWEEN '1986-01-01' AND '1996-12-31';

--manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
	man.dept_no, dep.department, man.emp_no, emp.last_name, emp.first_name
FROM
	Dept_Manager man
JOIN
	Departments dep on man.Dept_no = dep.Dept_no
JOIN
	Employees emp on man.emp_no=emp.emp_no;

--department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	emp.emp_no, emp.last_name,emp.first_name, dep.department
FROM
	Departments dep 
JOIN
	Dept_emp depemp ON dep.dept_no=depemp.dept_no
JOIN
	Employees emp ON emp.emp_no= depemp.emp_no;
-- first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE employees.first_name= 'Hercules' AND employees.last_name LIKE 'B%';

--employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
	dep.department, emp.emp_no, emp.last_name, emp.first_name
FROM
	Departments dep
JOIN
	Dept_emp depemp ON dep.dept_no=depemp.dept_no
JOIN
	Employees emp ON depemp.emp_no=emp.emp_no
WHERE
	dep.department = 'Sales';
	
--employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	dep.department, emp.emp_no, emp.last_name, emp.first_name
FROM
	Departments dep
JOIN
	Dept_emp depemp ON dep.dept_no=depemp.dept_no
JOIN
	Employees emp ON depemp.emp_no=emp.emp_no
WHERE
	dep.department = 'Sales' or dep.department = 'Development';

--descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT last_name, COUNT(*) AS "Number of Last name"
FROM Employees
GROUP BY last_name;
