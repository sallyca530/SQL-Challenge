-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Data Modeling of Entity Relationship Diagram of the tables
DROP TABLE IF EXISTS "Title" CASCADE;
DROP TABLE IF EXISTS "Salaries" CASCADE;
DROP TABLE IF EXISTS "Employees" CASCADE;
DROP TABLE IF EXISTS "Department_Manager" CASCADE;
DROP TABLE IF EXISTS "Department_Employees" CASCADE;
DROP TABLE IF EXISTS "Departments" CASCADE;

-- Create all tables--

CREATE TABLE "Title" (
    "TitleID" int   NOT NULL,
    "title_id" Varchar(5)   NOT NULL,
    "title" Varchar(30)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "TitleID"
     )
);

Select * From "Title";
-------------------------------------------
CREATE TABLE "Salaries" (
    "SalaryID" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "SalaryID"
     )
);

Select * From "Salaries";
---------------------------------------------
CREATE TABLE "Employees" (
    "EmployeeID" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "emp_title_id" Varchar(5)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" Varchar(30)   NOT NULL,
    "last_name" Varchar(30)   NOT NULL,
    "sex" Varchar(2)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "EmployeeID"
     )
);

Select * From "Employees";
---------------------------------------------
CREATE TABLE "Department_Manager" (
    "DeptManagerID" int   NOT NULL,
    "dept_no" Varchar(4)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "DeptManagerID"
     )
);

Select * From "Department_Manager";
---------------------------------------------
CREATE TABLE "Department_Employees" (
    "DeptEmpID" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "dept_no" Varchar(4)   NOT NULL,
    CONSTRAINT "pk_Department_Employees" PRIMARY KEY (
        "DeptEmpID"
     )
);

Select * From "Department_Employees";
---------------------------------------------
CREATE TABLE "Departments" (
    "DepartmentsID" int   NOT NULL,
    "dept_no" Varchar(4)   NOT NULL,
    "dept_name" Varchar(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "DepartmentsID"
     )
);
Select * From "Departments";
---------------------------------------------

