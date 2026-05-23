# 📚 Library Management System

A Java-based desktop application designed to automate and simplify library operations — managing books, DVDs, student records, and the borrowing/return process through an intuitive graphical interface.

---

## 👩‍💻 Author

**L.L. Piyumi Hansani**  
Undergraduate – BSc (Hons) Computer Science
---

## 📌 Project Overview

The Library Management System reduces manual effort in library operations and improves efficiency for librarians. It integrates with a MySQL database to maintain real-time records of inventory and borrowing history.

---

## 📸 Screenshots

### 🔐 Admin Login
![Login](screenshots/Login.png)

### 🏠 Admin Dashboard
![Dashboard](screenshots/dashboard.png)

### 👤 Student Management
![Students](screenshots/students.png)

### 📖 Book Management
![Books](screenshots/books.png)

### 📀 DVD Management
![DVD](screenshots/dvd.png)

### 📤 Issue Book Details
![Issue Book](screenshots/issue.png)

### 📥 Return Book Details
![Return Book](screenshots/return.png)

---

## 🎯 Objectives

- **Manage Student Records** — Store and update library member (student) information
- **Manage Book Records** — Store and update book inventory details
- **Issue & Return Books** — Track borrowing with real-time inventory updates
- **Data Security & Integrity** — Secure database access with error handling and validation

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔐 Admin Login | Secure login with username/password authentication |
| 🏠 Dashboard | Central navigation hub for all system modules |
| 👤 Student Management | Insert, Update, Delete student records |
| 📖 Book Management | Insert, Update, Delete book records |
| 📀 DVD Management | Manage DVD inventory |
| 📤 Issue Books | Issue books to students and update availability |
| 📥 Return Books | Process returns and automatically sync with issuance records |

---

## 🛠️ Tech Stack

- **Language:** Java (JDK 8+)
- **UI:** Java Swing (GUI)
- **Database:** MySQL
- **Connectivity:** JDBC (Java Database Connectivity)

---

## ⚙️ Setup & Installation

### Prerequisites

- Java JDK 8 or higher
- MySQL Server
- Any Java IDE (NetBeans / IntelliJ IDEA / Eclipse)
- MySQL Connector/J (JDBC Driver)

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/library-management-system.git
   cd library-management-system
   ```

2. **Set up the database**
   - Open MySQL and create a new database:
     ```sql
     CREATE DATABASE studentdb;
     ```
   - Import the provided SQL schema file:
     ```bash
     mysql -u root -p studentdb < database/studentdb.sql
     ```

3. **Configure database connection**
   - Open the database connection file in the project
   - Update the credentials to match your MySQL setup:
     ```java
     con = DriverManager.getConnection("jdbc:mysql://localhost/studentdb", "root", "your_password");
     ```

4. **Build and run**
   - Open the project in your IDE (NetBeans recommended)
   - Add the MySQL JDBC `.jar` to the project's build path
   - Run `login.java` as the main entry point

---

## 🔑 Default Login Credentials

| Field | Value |
|---|---|
| Username | `admin` |
| Password | `12345` |

> ⚠️ It is recommended to change the default credentials after first use.

---

## 📂 Project Structure

```
library-management-system/
│
├── src/
│   ├── login.java           # Admin login screen
│   ├── homepage.java        # Admin dashboard
│   ├── student.java         # Student management (Insert/Update/Delete)
│   ├── book.java            # Book management (Insert/Update/Delete)
│   ├── dvd.java             # DVD management
│   ├── issuebook.java       # Book issuance module
│   └── returnbook.java      # Book return module
│
├── screenshots/
│   ├── login.png
│   ├── dashboard.png
│   ├── students.png
│   ├── books.png
│   ├── dvd.png
│   ├── issue_book.png
│   └── return_book.png
│
├── database/
│   └── studentdb.sql        # MySQL schema and seed data
│
└── README.md
```

---

## 🚧 Challenges & Solutions

**Database Connectivity**  
Smooth JDBC integration was achieved through proper exception handling and automatic reconnection logic to manage simultaneous queries reliably.

**Exception Handling**  
A robust error-handling mechanism was built across all modules, displaying clear messages to users and logging detailed errors for debugging — including custom exceptions for overdue books and invalid inputs.

---

## 📄 License

This project was developed as an academic assignment.
