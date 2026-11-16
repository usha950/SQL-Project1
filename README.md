Employee Payroll Management System
1. Project Title
Employee Payroll Management System using MySQL
2. Description
The Employee Payroll Management System is a relational database project
developed using MySQL. It is designed to organize employee information,
department details, attendance, salary components, and monthly payroll
records in one database.

The main objective of this project is to maintain employee records
efficiently, calculate gross and net salaries, track attendance, and
manage salary payments. This project demonstrates the practical
implementation of SQL queries and relational database concepts.
3. Features
- Maintain employee personal and job-related information.
- Store department names and locations.
- Record employee attendance status and working hours.
- Maintain basic salary, HRA, allowances, and deductions.
- Store monthly gross salary, net salary, payment date, and payment
  status.
- Retrieve related information using SQL joins.
- Analyse payroll data using aggregate functions and conditional
  expressions.
- Use subqueries and correlated subqueries.
- Create views for simplified data retrieval.
- Use stored procedures for database operations.
4. Technologies Used
- Database: MySQL
- Query Language: SQL
- Database Tool: MySQL Workbench
5. Database Structure
Database Name: Employee_Payroll

The database consists of five interconnected tables. Each table uses a
primary key, and foreign keys connect employee records to their related
data.
1. Department
Stores department information.
- department_id (Primary Key)
- department_name
- location
2. Employee
Stores employee personal and professional details.
- employee_id (Primary Key)
- employee_name
- gender
- email
- phone
- hire_date
- department_id (Foreign Key)
- designation
3. Attendance
Stores employee attendance information.
- attendance_id (Primary Key)
- employee_id (Foreign Key)
- attendance_date
- status
- working_hours
4. Salary
Stores employee salary components.
- salary_id (Primary Key)
- employee_id (Foreign Key)
- basic_salary
- hra
- allowances
- deductions
5. Payroll
Stores monthly payroll and payment details.
- payroll_id (Primary Key)
- employee_id (Foreign Key)
- payroll_month
- payroll_year
- gross_salary
- net_salary
- payment_date
- payment_status
Database Relationships
- Department to Employee -- One-to-Many
- Employee to Attendance -- One-to-Many
- Employee to Salary -- One-to-Many
- Employee to Payroll -- One-to-Many
Total Tables: 5
Total Sample Records: 75
6. Installation Steps
Follow these steps to install and execute the project:
1. Download and install MySQL Server.
2. Install MySQL Workbench.
3. Open MySQL Workbench.
4. Connect to the MySQL Server.
5. Create a new database:
   CREATE DATABASE Employee_Payroll;
   USE Employee_Payroll;
6. Execute the SQL queries to create all five tables.
7. Insert the sample records into each table.
8. Execute the required queries to verify the database.
7. How to Execute SQL Files
Using MySQL Workbench
1. Open MySQL Workbench.
2. Connect to your MySQL database.
3. Select File → Open SQL Script.
4. Choose the required SQL file from your project folder.
5. Click the Execute button (lightning icon).
6. Check the Action Output and Result Grid to verify successful
   execution.
Using the MySQL Command Line
Open Command Prompt and connect to MySQL:
mysql -u root -p
After connecting, execute the SQL file:
SOURCE C:/path/to/your/project.sql;
Replace the example path with the actual location of your SQL file.
Recommended SQL File Execution Order
01_Create_Database.sql
02_Create_Tables.sql
03_Insert_Records.sql
04_Functions.sql
05_Joins.sql
06_Subqueries.sql
07_Views.sql
08_Stored_Procedures.sql
Run only the files that exist in your project folder. Create the
database and tables, and insert the required records before running
queries that depend on them.
8. Sample SQL Queries
The following examples use the table and column names defined in this
project.
Query 1: Display All Employee Details
SELECT *
FROM Employee;
Query 2: Display Employee Names with Department Names
SELECT e.employee_name,
       d.department_name
FROM Employee AS e
INNER JOIN Department AS d
    ON e.department_id = d.department_id;
Query 3: Find the Highest Basic Salary
SELECT MAX(basic_salary) AS highest_basic_salary
FROM Salary;
Query 4: Calculate Average Basic Salary
SELECT ROUND(AVG(basic_salary), 2) AS average_basic_salary
FROM Salary;
Query 5: Display Employees with Pending Payments
SELECT e.employee_name,
       p.net_salary,
       p.payment_status
FROM Employee AS e
INNER JOIN Payroll AS p
    ON e.employee_id = p.employee_id
WHERE p.payment_status = 'Pending';
Query 6: Find Employees Earning Above Average Basic Salary
SELECT employee_id, basic_salary
FROM Salary
WHERE basic_salary > (
    SELECT AVG(basic_salary)
    FROM Salary
);
Query 7: Calculate Gross Salary and Net Salary
SELECT employee_id,
       basic_salary + hra + allowances AS gross_salary,
       basic_salary + hra + allowances - deductions AS net_salary
FROM Salary;
Query 8: Count Employees in Each Department
SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees
FROM Department AS d
LEFT JOIN Employee AS e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
9. Future Enhancements
The project can be improved by adding the following features:
- Integrate Python with MySQL for database connectivity.
- Develop a web-based payroll management application.
- Generate automated monthly salary slips.
- Implement employee login and authentication.
- Add automated attendance tracking.
- Create interactive payroll dashboards using Power BI.
- Implement triggers for automatic payroll updates.
- Introduce role-based access control.
Conclusion
The Employee Payroll Management System provides practical experience in
designing and managing relational databases using MySQL.

This project demonstrates SQL concepts such as database creation, data
manipulation, joins, aggregate functions, subqueries, correlated
subqueries, views, and stored procedures. It helps develop a strong
understanding of database management and real-world payroll operations.
