-- Data Modeling of Entity Relationship Diagram of the tables
DROP TABLE IF EXISTS "Title" CASCADE;
DROP TABLE IF EXISTS "Salaries" CASCADE;
DROP TABLE IF EXISTS "Employees" CASCADE;
DROP TABLE IF EXISTS "Department_Manager" CASCADE;
DROP TABLE IF EXISTS "Department_Employees" CASCADE;
DROP TABLE IF EXISTS "Departments" CASCADE;

-- Create all tables--
---------------------------------------------
CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" Varchar(5)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" Varchar(30)   NOT NULL,
    "last_name" Varchar(30)   NOT NULL,
    "sex" Varchar(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);
Select * From "Employees";
---------------------------------------------
CREATE TABLE "Departments" (
    "dept_no" Varchar(4)   NOT NULL,
    "dept_name" Varchar(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);
Select * From "Departments";
---------------------------------------------
CREATE TABLE "Department_Employees" (
    "emp_no" int   NOT NULL,
    "dept_no" Varchar(4)   NOT NULL);
Select * From "Department_Employees";
---------------------------------------------
CREATE TABLE "Department_Manager" (
    "dept_no" Varchar(4)   NOT NULL,
    "emp_no" int   NOT NULL);
Select * From "Department_Manager";
-------------------------------------------
CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL);
Select * From "Salaries";
---------------------------------------------
CREATE TABLE "Title" (
    "title_id" Varchar(5)   NOT NULL,
    "title" Varchar(30)   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);
Select * From "Title";
---------------------------------------------
ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Title" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");