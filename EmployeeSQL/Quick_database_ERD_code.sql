-- CODE FROM QUICK DATABASE DIAGRAM - ERD SCHEMA


-- # Modify this code to update the DB schema diagram.
-- # To reset the sample schema, replace everything with
-- # two dots ('..' - without quotes).

-- Title
-- -
-- title_id PK Varchar(5) FK >- Employees.emp_title_id
-- title Varchar(30) 

-- Salaries
-- -
-- emp_no int FK >- Employees.emp_no
-- salary int

-- Employees
-- -
-- emp_no PK int
-- emp_title_id Varchar(5) 
-- birth_date DATE
-- first_name Varchar(30)
-- last_name Varchar(30)
-- sex Varchar(2)
-- hire_date DATE

-- Department_Manager
-- -
-- dept_no Varchar(4) FK -< Department_Employees.dept_no
-- emp_no int FK >- Employees.emp_no

-- Department_Employees
-- -
-- emp_no int FK >- Employees.emp_no 
-- dept_no Varchar(4)

-- Departments
-- -
-- dept_no PK Varchar(4) FK -< Department_Manager.dept_no 
-- dept_name Varchar(30)