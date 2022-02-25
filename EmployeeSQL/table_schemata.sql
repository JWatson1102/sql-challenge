CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR,
	PRIMARY KEY (title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date VARCHAR,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR,
	hire_date VARCHAR,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
);