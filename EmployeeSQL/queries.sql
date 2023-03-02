
-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
select employees.emp_no, last_name, first_name, sex, salary 
from employees 
inner join salaries
on employees.emp_no = salaries.emp_no
;

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
select first_name, last_name, hire_date 
from employees
where date_part('year', hire_date) = 1986
;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
inner join dept_manager as dm on 
e.emp_no = dm.emp_no 
inner join departments as d on 
dm.dept_no = d.dept_no 
;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dep_emp as de on
e.emp_no = de.emp_no 
inner join departments as d on 
de.dept_no = d.dept_no
;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and 
last_name like 'B%'
;

-- List each employee in the Sales department, including their employee number, last name, and first name (2 points)
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dep_emp as de on
e.emp_no = de.emp_no 
inner join departments as d on 
de.dept_no = d.dept_no 
where dept_name = 'Sales'
;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dep_emp as de on
e.emp_no = de.emp_no 
inner join departments as d on 
de.dept_no = d.dept_no 
where dept_name = 'Sales' or 
dept_name = 'Development'
;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
select count(last_name), last_name
from employees
group by last_name
order by count desc
;
