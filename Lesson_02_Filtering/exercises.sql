-- Task: Tracks with price exactly 0.99
SELECT Name,
    UnitPrice
FROM Track
WHERE UnitPrice = 0.99;
-- Task: Tracks longer than 500,000 milliseconds
SELECT Name,
    Milliseconds
FROM Track
WHERE Milliseconds > 500000;
-- Task: Customers living in Poland
SELECT FirstName,
    LastName,
    Country
FROM Customer
WHERE Country = 'Poland';
-- Task: Invoices with total value between 10 and 20 USD
SELECT *
FROM Invoice
WHERE Total BETWEEN 10 AND 20;
-- Task: Customers using gmail.com domain
SELECT FirstName,
    LastName,
    Email
FROM Customer
WHERE Email LIKE '%gmail.com';
-- Task: Tracks without an assigned composer (NULL values)
SELECT *
FROM Track
WHERE Composer IS NULL;