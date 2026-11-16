CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    hire_date DATE,
    department_id INT,
    designation VARCHAR(50),
    FOREIGN KEY (department_id)
    REFERENCES Department(department_id)
);


CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    working_hours DECIMAL(5,2),
    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);


CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    basic_salary DECIMAL(10,2),
    hra DECIMAL(10,2),
    allowances DECIMAL(10,2),
    deductions DECIMAL(10,2),
    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);


CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    employee_id INT,
    payroll_month VARCHAR(20),
    payroll_year INT,
    gross_salary DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_date DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);

