SELECT Customer.FirstName,
    Customer.LastName,
    SUM(Invoice.Total) AS Total_Spent
FROM Customer
    JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId
HAVING SUM(Invoice.Total) > 40