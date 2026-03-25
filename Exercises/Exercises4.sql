SELECT Customer.FirstName,
    Customer.LastName,
    Customer.Country,
    SUM(Invoice.Total)
FROM Customer
    JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Customer.Country IN ('USA', 'Canada')
GROUP BY Customer.CustomerId
HAVING SUM(Invoice.Total) > 35
ORDER BY SUM(Invoice.Total) DESC