-- TASK 1: Find Rock tracks longer than 5 minutes
SELECT Name,
    GenreId,
    Milliseconds
FROM Track
WHERE GenreId = 1
    AND Milliseconds > 300000;
-- TASK 2: Find customers from specific cities
SELECT FirstName,
    LastName,
    City
FROM Customer
WHERE City IN ('Paris', 'London', 'Berlin');
-- TASK 3: List tracks sorted by Name and then by Price
FROM Track
ORDER BY Name ASC,
    UnitPrice DESC;
-- TASK 4: Invoices from Oslo OR Prague with total > 5
SELECT *
FROM Invoice
WHERE (
        BillingCity = 'Oslo'
        OR BillingCity = 'Prague'
    )
    AND Total > 5;
-- TASK 5: The 10 most recent invoices
SELECT *
FROM Invoice
ORDER BY InvoiceDate DESC
LIMIT 10;