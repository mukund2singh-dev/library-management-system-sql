-- Sample Analytical Queries for Library Management System

-- 1. List all currently issued books (not yet returned)
SELECT b.title, m.name, t.issue_date, t.due_date
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
JOIN Members m ON t.member_id = m.member_id
WHERE t.status = 'Issued';

-- 2. Find overdue books (past due date, not returned)
SELECT b.title, m.name, t.due_date
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
JOIN Members m ON t.member_id = m.member_id
WHERE t.status = 'Issued' AND t.due_date < CURRENT_DATE;

-- 3. Most issued books (top 5)
SELECT b.title, COUNT(t.transaction_id) AS times_issued
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
GROUP BY b.title
ORDER BY times_issued DESC
LIMIT 5;

-- 4. Members with the most books issued
SELECT m.name, COUNT(t.transaction_id) AS total_books_issued
FROM Transactions t
JOIN Members m ON t.member_id = m.member_id
GROUP BY m.name
ORDER BY total_books_issued DESC;

-- 5. Available copies of each book
SELECT title, available_copies, total_copies
FROM Books
ORDER BY available_copies ASC;
