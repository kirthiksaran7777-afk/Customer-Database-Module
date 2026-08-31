CREATE DATABASE QuickCart;
USE QuickCart;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Customer
(first_name, last_name, email, phone, password, address, city, pincode)
VALUES
('Rahul', 'Kumar', 'rahul@gmail.com', '9876543210',
 'rahul123', '12 Anna Street', 'Chennai', '600001'),

('Priya', 'Sharma', 'priya@gmail.com', '9876543211',
 'priya123', '25 Gandhi Road', 'Madurai', '625001'),

('Arun', 'Raj', 'arun@gmail.com', '9876543212',
 'arun123', '10 Main Road', 'Coimbatore', '641001'),

('Meena', 'Devi', 'meena@gmail.com', '9876543213',
 'meena123', '45 Market Street', 'Salem', '636001'),

('Karthik', 'Raja', 'karthik@gmail.com', '9876543214',
 'karthik123', '8 Beach Road', 'Thoothukudi', '628001');
 SELECT * FROM Customer;
 SELECT first_name, last_name, email
FROM Customer;
SELECT *
FROM Customer
WHERE city = 'Chennai';
SELECT *
FROM Customer
WHERE customer_id = 1;
UPDATE Customer
SET phone = '9123456780'
WHERE customer_id = 1;
UPDATE Customer
SET city = 'Bangalore'
WHERE customer_id = 3;
SELECT * FROM Customer;
DELETE FROM Customer
WHERE customer_id = 5;
SELECT * FROM Customer;