-- Create a view for employee and department details
CREATE VIEW Employee_Department_View AS
SELECT e.employee_id,
       e.employee_name,
       e.designation,
       d.department_name,
       d.location
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;

-- Create a view for pending salary payments
CREATE VIEW Pending_Payments_View AS
SELECT e.employee_name,
       p.net_salary,
       p.payroll_month,
       p.payment_status
FROM Employee e
INNER JOIN Payroll p
ON e.employee_id = p.employee_id
WHERE p.payment_status = 'Pending';


-- Create a view for paid employees only
CREATE VIEW Paid_Employees_View AS
SELECT e.employee_name,
       p.net_salary,
       p.payment_date,
       p.payment_status
FROM Employee e
INNER JOIN Payroll p
ON e.employee_id = p.employee_id
WHERE p.payment_status = 'Paid';


-- Create a view for employee attendance
CREATE VIEW Employee_Attendance_View AS
SELECT e.employee_name,
       a.attendance_date,
       a.status,
       a.working_hours
FROM Employee e
INNER JOIN Attendance a
ON e.employee_id = a.employee_id;

