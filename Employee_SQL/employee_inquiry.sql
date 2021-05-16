
-- Each employee: employee number, last name, first name, sex, and salary.
SELECT employee.emp_no, employee.last_name, employee.first_name,employee.sex, salary.salary
FROM employee
Inner JOIN salary
ON employee.emp_no = salary.emp_no

-- First name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employee
Where hire_date Like '%%%%%1986';


-- The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select department_employee.dept_no, department_employee.emp_no, employee.first_name, employee.last_name, department.dept_name
from department_employee
Inner Join employee 
ON employee.emp_no = department_employee.emp_no
INNER JOIN titles
ON titles.title_id = employee.emp_title_id
Inner Join department
ON department.dept_no = department_employee.dept_no
Where titles.title = 'Manager';

-- The department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.first_name, employee.last_name, department.dept_name
from employee
Inner join department_employee
On employee.emp_no = department_employee.emp_no
Inner Join department 
ON department.dept_no = department_employee.dept_no;

-- First name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name,last_name,sex
From employee
Where first_name = 'Hercules' AND last_name LIKE 'B%';

--All employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.first_name, employee.last_name, department.dept_name
From employee
INNER JOIN department_employee
ON employee.emp_no = department_employee.emp_no
Inner JOIN department
ON department_employee.dept_no = department.dept_no
Where department.dept_name = 'Sales';

-- All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.first_name, employee.last_name, department.dept_name
From employee
INNER JOIN department_employee
ON employee.emp_no = department_employee.emp_no
Inner JOIN department
ON department_employee.dept_no = department.dept_no
Where department.dept_name = 'Sales' OR department.dept_name = 'Development';

-- Frequency count of employee last names, i.e., how many employees share each last name in descending order. 
Select last_name, count(last_name)
FROM employee
Group BY last_name
ORDER BY count(last_name) DESC;