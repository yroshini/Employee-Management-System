# Employee Management System

A web-based Employee Management System built using **Java**, **Servlets**, **JSP**, and **JDBC**, allowing basic CRUD operations for employee management.

## 🔧 Technologies Used

- Java (Servlets & JSP)
- HTML, CSS
- JDBC
- MySQL
- Apache Tomcat
- Eclipse IDE


## ✅ Features

- Employee Registration
- Login & Logout
- View and Edit Profile
- View All Employees (Admin)
- Add/Update/Delete Employees (Admin)
- Search Employees
- Role-based Access (Admin/User)

## 🛠️ Setup Instructions

### 1. Prerequisites

- Java JDK 8+
- Apache Tomcat 8.5+
- MySQL
- Eclipse IDE

### 2. Database Setup
sql
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    role VARCHAR(20),
    department VARCHAR(50)
);
###3. JDBC Configuration
Update the database credentials in ConnectionManager.java:

java
Copy
Edit
String url = "jdbc:mysql://localhost:3306/employee_db";
String username = "your_username";
String password = "your_password";

###4. Deploy the Project
Import project into Eclipse

Add Apache Tomcat Server

Run on Server: Right-click > Run As > Run on Server

###5. Access Application
bash
Copy
Edit
http://localhost:8080/EmployeeManagementSystem/index.jsp

##👤 Author
Your Name
Email: your.email@example.com
LinkedIn: your-linkedin-profile
