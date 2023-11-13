--Data Analysis

--List the employee number, last name, first name, sex, and salary of each employee.
select e.employee_number, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries s
on (e.employee_number = s.employee_number);
	--did not show salary, why?
	--need to call at top with others
--List the first name, last name, and hire date for the employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees as e
	--need to find only 1986
where e.hire_date = 1986;
--List the manager of each department along with their department number, department name, employee number, last name, and first name.

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--List each employee in the Sales department, including their employee number, last name, and first name.

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

