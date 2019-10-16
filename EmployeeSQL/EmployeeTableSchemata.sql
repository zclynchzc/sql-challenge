--drop table employees;
create table employees(
	emp_no int primary key,
	birth_date varchar(10),
	first_name varchar(100),
	last_name varchar(100),
	gender varchar(1),
	hire_date varchar(10)
);
--via gui, import employees.csv
select * from employees limit 10;

--drop table departments;
create table departments(
	dept_no varchar(4) primary key,
	dept_name varchar(100)
);
--via gui, import departments.csv
select * from departments;

--drop table salaries;
create table salaries(
	emp_no int primary key,
	salary int,
	from_date varchar(10),
	to_date varchar(10),
	foreign key (emp_no) references employees(emp_no)
);
--via gui, import salaries.csv
select * from salaries limit 10;

--drop table titles;
create table titles(
	emp_no int,
	title varchar(100),
	from_date varchar(10),
	to_date varchar(10),
	foreign key (emp_no) references employees(emp_no)
);
--via gui, import titles.csv
select * from titles limit 10;

--drop table dept_emp;
create table dept_emp(
	emp_no int,
	dept_no varchar(4),
	from_date varchar(10),
	to_date varchar(10),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);
--via gui, import dept_emp.csv
select * from dept_emp limit 10;

--drop table dept_manager;
create table dept_manager(
	dept_no varchar(4),
	emp_no int primary key,
	from_date varchar(10),
	to_date varchar(10),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);
--via gui, import dept_manager.csv
select * from dept_manager;