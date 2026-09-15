# QuickCart – E-Commerce Database

## Week 1 – Customer Database Module

###  Project Overview

**QuickCart** is a simple e-commerce database project inspired by online shopping platforms such as BigBasket and Meesho.

The application is designed to manage customers, products, sellers, orders, payments, and reviews.

For **Week 1**, the project focuses on the **Customer Database Module**.

---

##  Objectives

The main objectives of this project are:

* Analyze the requirements of an e-commerce application.
* Identify the major entities in the system.
* Design the Customer table.
* Create the QuickCart database using MySQL.
* Store customer records.
* Perform CRUD operations on customer data.
* Apply database constraints to maintain data integrity.

---

##  Main Entities

The complete QuickCart system consists of the following major entities:

* **Customer**
* **Product**
* **Seller**
* **Order**
* **Payment**
* **Review**

The Week 1 implementation focuses only on the **Customer** entity.

---

##  Customer Module

The Customer table stores:

* Customer ID
* First Name
* Last Name
* Email
* Phone Number
* Password
* Address
* City
* Pincode
* Account Creation Date

The table uses constraints such as:

* `PRIMARY KEY`
* `AUTO_INCREMENT`
* `NOT NULL`
* `UNIQUE`
* `DEFAULT`

---

##  Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Project Type:** E-Commerce Database Management System

---

##  Project Structure

```text
QuickCart/
│
├── README.md
│
├── Requirement_Analysis.docx
│
├── Customer_Table_Design.docx
│
└── QuickCart.sql
```

---

##  How to Run the Project

### Step 1: Open MySQL

Open MySQL Workbench, MySQL Command Line, or another MySQL-compatible environment.

### Step 2: Create the Database

Run:

```sql
CREATE DATABASE QuickCart;

USE QuickCart;
```

### Step 3: Create the Customer Table

Run the Customer table creation query from `QuickCart.sql`.

### Step 4: Insert Records

Execute the INSERT statements provided in the SQL script.

### Step 5: Perform CRUD Operations

The SQL script contains:

```text
CREATE
INSERT
SELECT
UPDATE
DELETE
```

These operations demonstrate the basic database functionality required for Week 1.

---

## Sample Customer Data

| Customer ID | Name         | Email                                         | City        |
| ----------: | ------------ | --------------------------------------------- | ----------- |
|           1 | Rahul Kumar  | [rahul@gmail.com](mailto:rahul@gmail.com)     | Chennai     |
|           2 | Priya Sharma | [priya@gmail.com](mailto:priya@gmail.com)     | Madurai     |
|           3 | Arun Raj     | [arun@gmail.com](mailto:arun@gmail.com)       | Coimbatore  |
|           4 | Meena Devi   | [meena@gmail.com](mailto:meena@gmail.com)     | Salem       |
|           5 | Karthik Raja | [karthik@gmail.com](mailto:karthik@gmail.com) | Thoothukudi |

---

##  CRUD Operations

| Operation | SQL Command | Purpose                    |
| --------- | ----------- | -------------------------- |
| Create    | `CREATE`    | Creates database/table     |
| Insert    | `INSERT`    | Adds customer records      |
| Read      | `SELECT`    | Retrieves customer records |
| Update    | `UPDATE`    | Modifies customer records  |
| Delete    | `DELETE`    | Removes customer records   |

---

##  Future Development

The following modules can be added in future weeks:

1. **Product Management**
2. **Seller Management**
3. **Order Management**
4. **Payment Management**
5. **Review Management**
6. **Relationships and Foreign Keys**
7. **Advanced Queries and Reports**

---

##  Week 1 Scope

The Week 1 assignment covers:

* Requirement Analysis
* Customer Table Design
* Database and Customer Table Creation
* Customer Record Insertion
* CRUD Operations
* Sample Output Screenshots

---

##  Project

**Project Name:** QuickCart
**Project Type:** E-Commerce Database Management System
**Database:** MySQL
**Module:** Customer Database Module
**Version:** Week 1


# Product Category Management System

##  Project Overview

The **Product Category Management System** is a MySQL database project designed to manage products and organize them into different categories.

The database stores product details such as product name and price, while maintaining a relationship between products and their respective categories.

##  Technologies Used

* **MySQL**
* **SQL**
* **Relational Database Management System (RDBMS)**

##  Database Structure

The project contains two tables:

### 1. Category Table

Stores the different product categories.

| Column        | Data Type   | Description          |
| ------------- | ----------- | -------------------- |
| category_id   | INT         | Primary key          |
| category_name | VARCHAR(50) | Name of the category |

### 2. Product Table

Stores information about individual products.

| Column       | Data Type     | Description                      |
| ------------ | ------------- | -------------------------------- |
| product_id   | INT           | Primary key                      |
| product_name | VARCHAR(100)  | Name of the product              |
| price        | DECIMAL(10,2) | Price of the product             |
| category_id  | INT           | Foreign key referencing category |

##  Categories Used

The database contains the following categories:

* Furniture
* Food
* Stationery
* Kitchen Items

##  SQL Concepts Demonstrated

This project demonstrates the following SQL concepts:

* Database creation
* Table creation
* Primary Key
* Foreign Key
* `AUTO_INCREMENT`
* `NOT NULL`
* Data insertion using `INSERT`
* Data retrieval using `SELECT`
* `JOIN`
* `LEFT JOIN`
* Aggregate functions such as `COUNT()` and `AVG()`
* `GROUP BY`
* `HAVING`
* Subqueries
* Finding the maximum-priced product in each category
* Updating records using `UPDATE`
* Deleting records using `DELETE`

##  Queries Included

### Display all categories

```sql
SELECT * FROM category;
```

### Display all products

```sql
SELECT * FROM product;
```

### Display products with their categories

```sql
SELECT p.product_id,p.product_name,p.price,c.category_name
FROM product p
JOIN category c
ON p.category_id=c.category_id;
```

### Count products in each category

```sql
SELECT c.category_name,COUNT(p.product_id) AS product_count
FROM category c
LEFT JOIN product p
ON c.category_id=p.category_id
GROUP BY c.category_id,c.category_name;
```

### Find the highest-priced product in each category

```sql
SELECT c.category_name,p.product_name,p.price
FROM category c
JOIN product p
ON c.category_id=p.category_id
WHERE p.price=(
    SELECT MAX(p2.price)
    FROM product p2
    WHERE p2.category_id=p.category_id
);
```

### Find categories having more than 5 products

```sql
SELECT c.category_name,COUNT(p.product_id) AS product_count
FROM category c
JOIN product p
ON c.category_id=p.category_id
GROUP BY c.category_id,c.category_name
HAVING COUNT(p.product_id)>5;
```

### Calculate average price by category

```sql
SELECT c.category_name,AV_
```

# E-Commerce Inventory Analysis

##  Project Overview

This project is a simple **E-Commerce Inventory Management and Analysis System** developed using **MySQL**.

The project manages seller details and inventory information. It also performs basic CRUD operations and analyzes inventory data using SQL queries.

---

##  Objectives

- Store seller information.
- Store product inventory details.
- Connect sellers with their inventory using a foreign key.
- Perform CRUD operations.
- Find the total number of products.
- Identify products that are out of stock.
- Find the highest-stocked product.
- Calculate the average inventory quantity.
- Calculate the total inventory quantity.
- Display seller and product information using JOIN.

---

##  Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Concepts:** 
  - CREATE DATABASE
  - CREATE TABLE
  - PRIMARY KEY
  - FOREIGN KEY
  - INSERT
  - SELECT
  - UPDATE
  - DELETE
  - JOIN
  - COUNT()
  - MAX()
  - AVG()
  - SUM()
  - Subquery

---

##  Database Structure

### 1. Seller Table

The `Seller` table stores information about sellers.

| Column | Data Type | Description |
|---|---|---|
| seller_id | INT | Primary key |
| seller_name | VARCHAR(100) | Name of seller |
| phone | VARCHAR(15) | Seller phone number |

### 2. Inventory Table

The `Inventory` table stores product and stock information.

| Column | Data Type | Description |
|---|---|---|
| inventory_id | INT | Primary key |
| seller_id | INT | Foreign key referencing Seller |
| product_name | VARCHAR(100) | Name of product |
| quantity | INT | Available stock quantity |

---

##  Relationship

The relationship between the tables is:

```text
Seller
   |
   | 1
   |
   | N
Inventory
