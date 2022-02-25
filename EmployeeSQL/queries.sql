--Question 1
SELECT employees.emp_no, employees.last_name, employees.first_name,
	employees.sex, salary.salary FROM employees 
JOIN salaries AS salary
	ON employees.emp_no = salary.emp_no

--Question 2
SELECT first_name, last_name, hire_date
FROM employees WHERE hire_date LIKE '%1986'

--Question 3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name FROM dept_manager
JOIN departments 
	ON departments.dept_no = dept_manager.dept_no 
JOIN employees
	ON employees.emp_no = dept_manager.emp_no

--Question 4
SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name FROM dept_emp
JOIN employees
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
	
--Question 5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

--Question 6
SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name FROM dept_emp
JOIN employees
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
--same as question 4 but add the following line
WHERE departments.dept_name = 'Sales'

--Question 7
SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name FROM dept_emp
JOIN employees
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' 
--same as question 6 but add the following line
	or departments.dept_name = 'Development' 

--Question 8
SELECT last_name,COUNT(last_name) FROM employees 
	GROUP BY last_name
	ORDER BY count DESC
	