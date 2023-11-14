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
where extract (year from e.hire_date) = 1986;
	--https://www.commandprompt.com/education/how-to-extract-year-from-date-in-postgresql/#:~:text=Conclusion-,To%20extract%20a%20year%20from%20a%20date%2C%20the%20built%2Din,date%20fields%20will%20be%20extracted.

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--List each employee in the Sales department, including their employee number, last name, and first name.

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

