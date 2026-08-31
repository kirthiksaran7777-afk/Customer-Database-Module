# QuickCart – E-Commerce Database

## Week 1 – Customer Database Module

### 📌 Project Overview

**QuickCart** is a simple e-commerce database project inspired by online shopping platforms such as BigBasket and Meesho.

The application is designed to manage customers, products, sellers, orders, payments, and reviews.

For **Week 1**, the project focuses on the **Customer Database Module**.

---

## 🎯 Objectives

The main objectives of this project are:

* Analyze the requirements of an e-commerce application.
* Identify the major entities in the system.
* Design the Customer table.
* Create the QuickCart database using MySQL.
* Store customer records.
* Perform CRUD operations on customer data.
* Apply database constraints to maintain data integrity.

---

## 🗂️ Main Entities

The complete QuickCart system consists of the following major entities:

* **Customer**
* **Product**
* **Seller**
* **Order**
* **Payment**
* **Review**

The Week 1 implementation focuses only on the **Customer** entity.

---

## 👤 Customer Module

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

## 💻 Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Project Type:** E-Commerce Database Management System

---

## 📁 Project Structure

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

## 🛠️ How to Run the Project

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

## 📊 Sample Customer Data

| Customer ID | Name         | Email                                         | City        |
| ----------: | ------------ | --------------------------------------------- | ----------- |
|           1 | Rahul Kumar  | [rahul@gmail.com](mailto:rahul@gmail.com)     | Chennai     |
|           2 | Priya Sharma | [priya@gmail.com](mailto:priya@gmail.com)     | Madurai     |
|           3 | Arun Raj     | [arun@gmail.com](mailto:arun@gmail.com)       | Coimbatore  |
|           4 | Meena Devi   | [meena@gmail.com](mailto:meena@gmail.com)     | Salem       |
|           5 | Karthik Raja | [karthik@gmail.com](mailto:karthik@gmail.com) | Thoothukudi |

---

## 🔄 CRUD Operations

| Operation | SQL Command | Purpose                    |
| --------- | ----------- | -------------------------- |
| Create    | `CREATE`    | Creates database/table     |
| Insert    | `INSERT`    | Adds customer records      |
| Read      | `SELECT`    | Retrieves customer records |
| Update    | `UPDATE`    | Modifies customer records  |
| Delete    | `DELETE`    | Removes customer records   |

---

## 🚀 Future Development

The following modules can be added in future weeks:

1. **Product Management**
2. **Seller Management**
3. **Order Management**
4. **Payment Management**
5. **Review Management**
6. **Relationships and Foreign Keys**
7. **Advanced Queries and Reports**

---

## 📌 Week 1 Scope

The Week 1 assignment covers:

* Requirement Analysis
* Customer Table Design
* Database and Customer Table Creation
* Customer Record Insertion
* CRUD Operations
* Sample Output Screenshots

---

## 👨‍💻 Project

**Project Name:** QuickCart
**Project Type:** E-Commerce Database Management System
**Database:** MySQL
**Module:** Customer Database Module
**Version:** Week 1
