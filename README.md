# 👨‍💼 Employee Management System (Java EE)

A role-based web application built using **Java Servlets**, **JSP**, and **JDBC** for managing employee records with separate access for Admins and Employees.

## 📌 Features

### 🔐 Login Module
- **Admin Login**
  - Hardcoded credentials: `admin@cdgencorp.com` / `admin@cg`
  - Redirects to admin dashboard
- **Employee Login**
  - Validated against database records
  - Redirects to personal profile

### 👨‍💼 Admin Panel
- View all employees
- View single employee details
- Update employee information
- Delete employee records

### 👷 Employee Panel
- View personal profile
- Update own details
- Cannot delete or view other employees

### 📄 Additional Pages
- **About Us** – Overview of the company
- **Contact Us** – Contact information for support or inquiries

---

## 🛠️ Tech Stack

| Technology     | Description                        |
|----------------|------------------------------------|
| Java           | Core application logic (Servlets)  |
| JSP            | Frontend pages                     |
| JDBC           | Database connectivity              |
| MySQL          | Backend database (assumed)         |
| Eclipse IDE    | Development environment            |
| Apache Tomcat  | Local server for deployment        |

---

## 📁 Folder Structure

