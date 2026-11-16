INSERT INTO Department VALUES
(1, 'IT', 'Hyderabad'),
(2, 'HR', 'Bangalore'),
(3, 'Finance', 'Chennai'),
(4, 'Marketing', 'Mumbai'),
(5, 'Sales', 'Delhi'),
(6, 'Operations', 'Pune'),
(7, 'Support', 'Hyderabad'),
(8, 'Development', 'Bangalore'),
(9, 'Testing', 'Chennai'),
(10, 'Administration', 'Mumbai'),
(11, 'Security', 'Delhi'),
(12, 'Research', 'Pune'),
(13, 'Training', 'Hyderabad'),
(14, 'Logistics', 'Kolkata'),
(15, 'Management', 'Visakhapatnam');


INSERT INTO Employee VALUES
(101, 'Usha', 'Female', 'usha@gmail.com', '9876543210', '2024-01-10', 1, 'Data Analyst'),
(102, 'Harsha', 'Female', 'harsha@gmail.com', '9876543211', '2023-05-15', 2, 'HR Executive'),
(103, 'Ravi', 'Male', 'ravi@gmail.com', '9876543212', '2022-03-20', 3, 'Accountant'),
(104, 'Priya', 'Female', 'priya@gmail.com', '9876543213', '2024-02-12', 4, 'Marketing Executive'),
(105, 'Kiran', 'Male', 'kiran@gmail.com', '9876543214', '2021-06-18', 5, 'Sales Manager'),
(106, 'Sneha', 'Female', 'sneha@gmail.com', '9876543215', '2023-08-25', 6, 'Operations Executive'),
(107, 'Arjun', 'Male', 'arjun@gmail.com', '9876543216', '2022-11-11', 7, 'Support Engineer'),
(108, 'Divya', 'Female', 'divya@gmail.com', '9876543217', '2024-04-05', 8, 'Python Developer'),
(109, 'Rahul', 'Male', 'rahul@gmail.com', '9876543218', '2023-09-14', 9, 'Software Tester'),
(110, 'Meena', 'Female', 'meena@gmail.com', '9876543219', '2021-12-01', 10, 'Admin Officer'),
(111, 'Suresh', 'Male', 'suresh@gmail.com', '9876543220', '2022-07-19', 11, 'Security Officer'),
(112, 'Anjali', 'Female', 'anjali@gmail.com', '9876543221', '2023-02-22', 12, 'Research Analyst'),
(113, 'Manoj', 'Male', 'manoj@gmail.com', '9876543222', '2024-05-16', 13, 'Trainer'),
(114, 'Kavya', 'Female', 'kavya@gmail.com', '9876543223', '2022-10-09', 14, 'Logistics Executive'),
(115, 'Vikram', 'Male', 'vikram@gmail.com', '9876543224', '2021-04-13', 15, 'General Manager');



INSERT INTO Attendance VALUES
(1, 101, '2026-10-01', 'Present', 8.00),
(2, 102, '2026-10-01', 'Present', 8.00),
(3, 103, '2026-10-01', 'Absent', 0.00),
(4, 104, '2026-10-01', 'Present', 8.00),
(5, 105, '2026-10-01', 'Present', 9.00),
(6, 106, '2026-10-01', 'Present', 8.00),
(7, 107, '2026-10-01', 'Half Day', 4.00),
(8, 108, '2026-10-01', 'Present', 8.00),
(9, 109, '2026-10-01', 'Present', 8.00),
(10, 110, '2026-10-01', 'Absent', 0.00),
(11, 111, '2026-10-01', 'Present', 8.00),
(12, 112, '2026-10-01', 'Present', 8.00),
(13, 113, '2026-10-01', 'Present', 8.00),
(14, 114, '2026-10-01', 'Half Day', 4.00),
(15, 115, '2026-10-01', 'Present', 8.00);



INSERT INTO Salary VALUES
(1, 101, 30000, 12000, 5000, 2000),
(2, 102, 25000, 10000, 4000, 1500),
(3, 103, 28000, 11200, 4500, 1800),
(4, 104, 22000, 8800, 3000, 1200),
(5, 105, 45000, 18000, 7000, 3000),
(6, 106, 26000, 10400, 3500, 1500),
(7, 107, 24000, 9600, 3000, 1200),
(8, 108, 35000, 14000, 5000, 2500),
(9, 109, 27000, 10800, 4000, 1800),
(10, 110, 23000, 9200, 3000, 1300),
(11, 111, 20000, 8000, 2500, 1000),
(12, 112, 32000, 12800, 4500, 2000),
(13, 113, 25000, 10000, 3500, 1500),
(14, 114, 24000, 9600, 3000, 1200),
(15, 115, 60000, 24000, 10000, 5000);



INSERT INTO Payroll VALUES
(1, 101, 'October', 2026, 47000, 45000, '2026-11-01', 'Paid'),
(2, 102, 'October', 2026, 39000, 37500, '2026-11-01', 'Paid'),
(3, 103, 'October', 2026, 43700, 41900, '2026-11-01', 'Pending'),
(4, 104, 'October', 2026, 33800, 32600, '2026-11-01', 'Paid'),
(5, 105, 'October', 2026, 70000, 67000, '2026-11-01', 'Paid'),
(6, 106, 'October', 2026, 39900, 38400, '2026-11-01', 'Pending'),
(7, 107, 'October', 2026, 36600, 35400, '2026-11-01', 'Paid'),
(8, 108, 'October', 2026, 54000, 51500, '2026-11-01', 'Paid'),
(9, 109, 'October', 2026, 41800, 40000, '2026-11-01', 'Pending'),
(10, 110, 'October', 2026, 35200, 33900, '2026-11-01', 'Paid'),
(11, 111, 'October', 2026, 30500, 29500, '2026-11-01', 'Paid'),
(12, 112, 'October', 2026, 49300, 47300, '2026-11-01', 'Pending'),
(13, 113, 'October', 2026, 38500, 37000, '2026-11-01', 'Paid'),
(14, 114, 'October', 2026, 36600, 35400, '2026-11-01', 'Paid'),
(15, 115, 'October', 2026, 94000, 89000, '2026-11-01', 'Paid');




