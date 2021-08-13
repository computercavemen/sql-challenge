select e.emp_no, last_name, first_name, sex, salary
from employees e
join salaries s
on (e.emp_no = s.emp_no) 

select first_name, last_name, hire_date
from employees
where hire_date between '1986-1-1' and '1986-12-31' 

select dm.dept_no, dept_name, dm.emp_no, first_name, last_name
from dept_manager dm 
join departments d
on (dm.dept_no = d.dept_no)
join employees e 
on (dm.emp_no = e.emp_no)

select e.emp_no, last_name, first_name, dept_name
from employees e
join dept_emp de
on (de.emp_no = e.emp_no)
join departments d
on (d.dept_no = de.dept_no)

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

select e.emp_no, last_name, first_name, dept_name
from dept_emp de
join employees e
on (de.emp_no = e.emp_no)
join departments d
on (de.dept_no = d.dept_no)
where dept_name = 'Sales'

select e.emp_no, last_name, first_name, dept_name
from dept_emp de
join employees e
on (de.emp_no = e.emp_no)
join departments d
on (de.dept_no = d.dept_no)
where dept_name = 'Sales' or dept_name = 'Development'

select last_name, count(last_name)
from employees
group by last_name
order by "count" DESC;

