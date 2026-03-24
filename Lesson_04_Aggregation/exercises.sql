-- TASK 1: Total number of customers
SELECT COUNT(*) AS Total_Customers
FROM Customer;
-- TASK 2: Total revenue (sum of all invoices)
SELECT SUM(Total) AS Total_Revenue
FROM Invoice;
-- TASK 3: Average and Max track duration
SELECT AVG(Milliseconds) AS Avg_Duration,
    MAX(Milliseconds) AS Max_Duration
FROM Track;
-- TASK 4: Sales total by country
SELECT BillingCountry,
    SUM(Total) AS Country_Sales
FROM Invoice
GROUP BY BillingCountry
ORDER BY Country_Sales DESC;
-- TASK 5: Genres with more than 100 tracks
SELECT GenreId,
    COUNT(*) AS Number_of_Tracks
FROM Track
GROUP BY GenreId
HAVING COUNT(*) > 100;