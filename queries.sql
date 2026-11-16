-- Display employee names, department names and designations.
SELECT e.employee_name,
       d.department_name,
       e.designation
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;

-- Display all employees, including those who do not have salary records.
SELECT e.employee_name,
       s.basic_salary
FROM Employee e
LEFT JOIN Salary s
ON e.employee_id = s.employee_id;

-- Find the employee who receives the highest basic salary.
SELECT employee_name
FROM Employee
WHERE employee_id =
(
    SELECT employee_id
    FROM Salary
    WHERE basic_salary =
    (
        SELECT MAX(basic_salary)
        FROM Salary
    )
);

-- Find employees working in the IT department.
SELECT employee_name
FROM Employee
WHERE department_id =
(
    SELECT department_id
    FROM Department
    WHERE department_name = 'IT'
);


-- Find employees who have attendance records.
SELECT e.employee_name
FROM Employee e
WHERE EXISTS
(
    SELECT 1
    FROM Attendance a
    WHERE a.employee_id = e.employee_id
);
