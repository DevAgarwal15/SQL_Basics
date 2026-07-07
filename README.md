# SQL Basics Practice

This repository contains my SQL practice queries covering the fundamentals of SQL. It is created as part of my learning journey and includes database creation, table creation, data manipulation, filtering, joins, and other commonly used SQL commands.

---

## 📚 Topics Covered

- Create Database
- Use Database
- Create Table
- Insert Records
- Select Queries
- WHERE Clause
- ORDER BY
- LIMIT
- UPDATE
- DELETE
- TRUNCATE
- DROP
- ALTER TABLE
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
  - MAX()
  - MIN()
- BETWEEN Operator
- LIKE Operator
- SQL Joins
  - INNER JOIN
  - LEFT JOIN
  - RIGHT JOIN
  - FULL OUTER JOIN (Concept)
  - CROSS JOIN

---

## 🛠️ Technologies Used

- MySQL 8.x
- MySQL Workbench

---

## 📂 File Structure

```
SQL_Basics.sql
README.md
```

---

## 🚀 How to Run

1. Open MySQL Workbench.
2. Create a new SQL tab.
3. Open `SQL_Basics.sql`.
4. Execute the queries using the ⚡ Execute button or press:

```
Ctrl + Shift + Enter
```

---

## 📖 Sample Queries Included

```sql
CREATE DATABASE company;
USE company;

CREATE TABLE professor (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    employee_dept VARCHAR(50),
    employee_salary INT
);

SELECT * FROM professor;

UPDATE professor
SET employee_salary = 80000
WHERE employee_id = 103;

DELETE FROM professor
WHERE employee_id = 104;
```

---

## 🎯 Purpose

This repository is intended for:

- SQL beginners
- College students
- Placement preparation
- Interview practice
- Database fundamentals

---

## 📌 Future Improvements

- Subqueries
- Views
- Stored Procedures
- Triggers
- Indexes
- Normalization
- Window Functions
- Practice Interview Questions

---

## 👨‍💻 Author

**Dev Agarwal**

GitHub: https://github.com/DevAgarwal15

---

⭐ If you found this repository useful, consider giving it a star!
