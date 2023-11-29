Schema -
-- Title
-- -
-- TitleID PK int
-- title_id string FK >- Employees.emp_title_id
-- title string

-- Salaries
-- -
-- SalaryID PK int
-- emp_no int  FK >- Employees.emp_no
-- salary int

-- Employees
-- -
-- EmployeeID PK int
-- emp_no int
-- emp_title_id string 
-- birth_date string
-- first_name string 
-- last_name string
-- sex string
-- hire_date string

-- Department_Manager
-- -
-- DeptManagerID PK int
-- dept_no string FK >- Department_Employees.dept_no
-- emp_no int FK >- Employees.emp_no

-- Department_Employees
-- -
-- DeptEmpID PK int
-- emp_no int FK >- Employees.emp_no 
-- dept_no string

-- Departments
-- -
-- DepartmentsID PK int
-- dept_no string FK >- Department_Manager.dept_no 
-- dept_name string
