Schema -
Title
-
TitleID PK int
title_id Varchar(5) FK >- Employees.emp_title_id
title Varchar(30) 

Salaries
-
SalaryID PK int
emp_no int  FK >- Employees.emp_no
salary int

Employees
-
EmployeeID PK int
emp_no int
emp_title_id Varchar(5) 
birth_date DATE
first_name Varchar(30)
last_name Varchar(30)
sex Varchar(2)
hire_date DATE

Department_Manager
-
DeptManagerID PK int
dept_no Varchar(4) FK -< Department_Employees.dept_no
emp_no int FK >- Employees.emp_no

Department_Employees
-
DeptEmpID PK int
emp_no int FK >- Employees.emp_no 
dept_no string

Departments
-
DepartmentsID PK int
dept_no Varchar(4) FK -< Department_Manager.dept_no 
dept_name Varchar(30)
