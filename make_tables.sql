drop table Customers;

drop table Orders;

drop table Shippings;

 -- Create the 'employee' table

CREATE TABLE employee (

    employee_id INT PRIMARY KEY,

    employee_name VARCHAR(50),

    department_id INT,

    hire_date DATE,

    salary DECIMAL(10, 2)

);

 -- Create the 'department' table

CREATE TABLE department (

    department_id INT PRIMARY KEY,

    department_name VARCHAR(50)

);

 -- Create the 'product' table

CREATE TABLE product (

    product_id INT PRIMARY KEY,

    product_name VARCHAR(50),

    price DECIMAL(10, 2),

    stock_quantity INT

);

 -- Create the 'purchase' table

CREATE TABLE purchase (

    order_id INT PRIMARY KEY,

    employee_id INT,

    product_id INT,

    order_date DATE,

    quantity INT,

    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),

    FOREIGN KEY (product_id) REFERENCES product(product_id)

);

 -- Insert data into the 'employee' table

INSERT INTO employee VALUES

(1, 'John Doe', 1, '2022-01-01', 50000.00),

(2, 'Jane Smith', 2, '2022-02-15', 60000.00),

(3, 'Bob Johnson', 1, '2022-03-20', 55000.00),

(4, 'Alice Brown', 4, '2022-04-10', 70000.00),

(5, 'Charlie Wilson', 2, '2022-05-05', 65000.00);

 -- Insert data into the 'department' table

INSERT INTO department VALUES

(1, 'HR'),

(2, 'Finance'),

(3, 'Sales'),

(4, 'IT'),

(5, 'Marketing');

 -- Insert data into the 'product' table

INSERT INTO product VALUES

(1, 'Laptop', 1200.00, 50),

(2, 'Smartphone', 800.00, 100),

(3, 'Printer', 200.00, 30),

(4, 'Desk Chair', 150.00, 20),

(5, 'Coffee Maker', 50.00, 10);

 -- Insert data into the 'purchase' table

INSERT INTO purchase VALUES

(1, 1, 2, '2023-01-05', 3),

(2, 3, 1, '2023-02-10', 2),

(3, 2, 3, '2023-03-15', 1),

(4, 4, 5, '2023-04-20', 4),

(5, 5, 4, '2023-05-25', 2);