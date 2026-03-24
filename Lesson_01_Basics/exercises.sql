-- TASK 1: Display all columns from the 'Track' table
SELECT *
FROM Track;
-- TASK 2: Specific columns: Name and Composer
SELECT Name,
    Composer
FROM Track;
-- TASK 3: Name and UnitPrice with a limit of 15 rows
SELECT Name,
    UnitPrice
FROM Track
LIMIT 15;
-- TASK 4: Using Alias to rename 'Name' column to 'Song_Title'
SELECT Name AS Song_Title
FROM Track;
-- TASK 5: Find unique composers (no duplicates)
SELECT DISTINCT Composer
FROM Track;
-- Task 6: Tracks with price exactly 0.99
SELECT Name,
    UnitPrice
FROM Track
WHERE UnitPrice = 0.99;
-- Task 7: Tracks longer than 500,000 milliseconds
SELECT Name,
    Milliseconds
FROM Track
WHERE Milliseconds > 500000;
-- Task 8: Customers living in Poland
SELECT FirstName,
    LastName,
    Country
FROM Customer
WHERE Country = 'Poland';
-- Task 9: Invoices with total value between 10 and 20 USD
SELECT *
FROM Invoice
WHERE Total BETWEEN 10 AND 20;
-- Task 10: Customers using gmail.com domain
SELECT FirstName,
    LastName,
    Email
FROM Customer
WHERE Email LIKE '%gmail.com';
-- Task 11: Tracks without an assigned composer (NULL values)
SELECT *
FROM Track
WHERE Composer IS NULL;