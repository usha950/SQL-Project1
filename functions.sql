-- COUNT() – Count total employees
SELECT COUNT(*) AS Total_Employees
FROM Employee;

-- UPPER() – Convert employee names into uppercase
SELECT UPPER(employee_name) AS Employee_Name
FROM Employee;

-- CONCAT() – Combine employee name and designation
SELECT CONCAT(employee_name, ' - ', designation)
AS Employee_Details
FROM Employee;

-- NOW() – Display current date and time
SELECT NOW() AS Current_Date_Time;

-- ROUND() – Round average salary
SELECT ROUND(AVG(basic_salary), 2)
AS Average_Salary
FROM Salary;

-- IFNULL() – Replace NULL values
SELECT employee_name,
IFNULL(email, 'Email Not Available') AS Email
FROM Employee;