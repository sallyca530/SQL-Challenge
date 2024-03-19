## SQL-Challenge

### Introduction

Data engineering and Database project that involves designing database tables to accommodate the data, importing the CSV files into a SQL database, and conducting data analysis to extract insights. The data is employees hired during the 1980s and 1990s and consists of six CSV files.  The aim is to create an effective database schema, import data accurately, and derive valuable information from the database. 


### Entity Relationship Diagram

![image](EmployeeSQL/ERD_schema_image.png)

### PostgreSQL
Using the Entity Relationship Diagram, tables were created for each csv file
(Official_ERD_Schema.sql) 

### Queries
List the employee number, last name, first name, sex, and salary of each employee.

![image](images/one.png)

List the first name, last name, and hire date for the employees who were hired in 1986.

![image](images/two.png)

List the manager of each department along with their department number, department name, employee number, last name, and first name.

![image](images/three.png)

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

![image](images/four.png)

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

![image](images/five.png)

List each employee in the Sales department, including their employee number, last name, and first name.

![image](images/six.png)

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

![image](images/seven.png)

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

![image](images/eight.png)

### Resources

* Count Frequency - https://joshfrankel.me/blog/calculating-frequency-distribution-in-postgresql/


