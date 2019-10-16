--1) List the following details of each employee: employee number, last name, first name, gender, and salary
select emp.emp_no, emp.last_name, emp.first_name, emp.gender, cast(sal.salary as money)
from employees as emp
join salaries as sal on (emp.emp_no=sal.emp_no);

--2) List employees who were hired in 1986.
select emp_no, last_name, first_name, gender, hire_date
from employees
where hire_date like '1986%';

--3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dept.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name, man.from_date, man.to_date
from dept_manager as man
join employees as emp on (man.emp_no=emp.emp_no)
join departments as dept on (man.dept_no=dept.dept_no);

--4) List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from dept_emp as junc
join employees as emp on (junc.emp_no=emp.emp_no)
join departments as dept on (junc.dept_no=dept.dept_no);

--5) List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, last_name, first_name, gender
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from dept_emp as junc
join employees as emp on (junc.emp_no=emp.emp_no)
join departments as dept on (junc.dept_no=dept.dept_no)
where dept.dept_name = 'Sales';

--7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from dept_emp as junc
join employees as emp on (junc.emp_no=emp.emp_no)
join departments as dept on (junc.dept_no=dept.dept_no)
where dept.dept_name = 'Sales' or dept.dept_name = 'Development'
order by dept.dept_name desc, emp.emp_no asc;

--8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count desc;