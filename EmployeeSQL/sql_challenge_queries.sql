--List all employee salary details
select a.emp_no, a.last_name, a.first_name, a.sex, b.salary
from employees a
INNER JOIN salaries b ON a.emp_no = b.emp_no

--employees hired in 1986
select first_name, last_name, hire_date
from employees where hire_date like '%/1986'

--manager details
select a.emp_no as manager_number, a.dept_no, d.dept_name, b.last_name, b.first_name
from dept_manager a
inner join employees b on a.emp_no = b.emp_no
inner join departments d on a.dept_no = d.dept_no	

--employee details
select a.dept_no as department_number, a.emp_no as employee_number, b.last_name, b.first_name, c.dept_name
from dept_emp a
inner join employees b on a.emp_no = b.emp_no
inner join departments c on a.dept_no = c.dept_no

--Employees with first name Hercules and last name starting with B
select first_name, last_name, sex
from employees where first_name = 'Hercules' and last_name like 'B%'

--employees in Sales department
select a.emp_no as employee_number, c.last_name, c.first_name
from dept_emp a
inner join departments b on b.dept_no = a.dept_no
inner join employees c on a.emp_no = c.emp_no
where b.dept_name = 'Sales'

--employees in Sales and Development department
select a.emp_no as employee_number, c.last_name, c.first_name, b.dept_name
from dept_emp a
inner join departments b on b.dept_no = a.dept_no
inner join employees c on a.emp_no = c.emp_no
where b.dept_name in ('Sales','Development')

--count of employees last name
select last_name, count(emp_no) as count_of_lastname from employees group by last_name order by count_of_lastname desc