# Library Management System (SQL)

A SQL-based database project to manage a library's book issue/return system, including tracking of books, members, and transactions.

## 📌 Features
- Store and manage book records (title, author, genre, copies)
- Maintain member details (name, contact, join date)
- Track book issue and return transactions
- Monitor available vs total copies of each book

## 🗄️ Database Schema
The database consists of 3 main tables:
- **Members** — stores member details
- **Books** — stores book inventory details
- **Transactions** — tracks issue/return records with foreign keys linking Books and Members

## 🛠️ Tools Used
- MySQL / SQL

## 📂 Files
- `schema.sql` — contains table creation queries with relationships

## 🚀 How to Use
1. Run `schema.sql` in your MySQL environment to create the database structure
2. Insert sample data into Members and Books tables
3. Use Transactions table to simulate issue/return operations

## 📈 Future Scope
- Add sample SELECT queries for analytics (overdue books, most issued books, etc.)
- Build a simple dashboard using Power BI/Tableau on top of this data
