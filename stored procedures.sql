-- Procedure to display all employees
DELIMITER //

CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM Employee;
END //

DELIMITER ;

-- Procedure to display employee details using Employee ID
DELIMITER //

CREATE PROCEDURE GetEmployeeByID(IN emp_id INT)
BEGIN
    SELECT *
    FROM Employee
    WHERE employee_id = emp_id;
END //

DELIMITER ;

-- Procedure to insert a new employee
DELIMITER //

CREATE PROCEDURE AddEmployee(
    IN emp_id INT,
    IN emp_name VARCHAR(100),
    IN emp_gender VARCHAR(10),
    IN emp_email VARCHAR(100),
    IN emp_phone VARCHAR(15),
    IN emp_hire_date DATE,
    IN dept_id INT,
    IN emp_designation VARCHAR(50)
)
BEGIN
    INSERT INTO Employee
    VALUES (
        emp_id,
        emp_name,
        emp_gender,
        emp_email,
        emp_phone,
        emp_hire_date,
        dept_id,
        emp_designation
    );
END //

DELIMITER ;


-- Procedure to update employee salary
DELIMITER //

CREATE PROCEDURE UpdateEmployeeSalary(
    IN emp_id INT,
    IN new_salary DECIMAL(10,2)
)
BEGIN
    UPDATE Salary
    SET basic_salary = new_salary
    WHERE employee_id = emp_id;
END //

DELIMITER ;
