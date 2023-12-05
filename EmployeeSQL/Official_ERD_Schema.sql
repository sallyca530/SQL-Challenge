-- Data Modeling of Entity Relationship Diagram of the tables
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS departments CASCADE;

-- Create all tables--
---------------------------------------------
CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id Varchar(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name Varchar(30)   NOT NULL,
    last_name Varchar(30)   NOT NULL,
    sex Varchar(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);
Select * From employees;
-------------------------------------------
CREATE TABLE departments (
    dept_no Varchar(4)   NOT NULL,
    dept_name Varchar(30)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);
Select * From departments;
-------------------------------------------
CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no Varchar(4)   NOT NULL);
Select * From dept_emp;
---------------------------------------------
CREATE TABLE dept_manager (
    dept_no Varchar(4)   NOT NULL,
    emp_no int   NOT NULL);
Select * From dept_manager;
-----------------------------------------
CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL);
Select * From salaries;
---------------------------------------------
CREATE TABLE titles (
    title_id Varchar(5)   NOT NULL,
    title Varchar(30)   NOT NULL,
    CONSTRAINT pk_title PRIMARY KEY (
        title_id
     )
);
Select * From titles;
-------------------------------------------
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");