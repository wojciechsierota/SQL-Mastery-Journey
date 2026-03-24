--TASK: Top 5 countries spending the most on 'Rock' music
SELECT Customer.Country,
    SUM(InvoiceLine.UnitPrice) AS Total_Spent
FROM Customer
    JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
    JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
    JOIN Track ON Track.TrackId = InvoiceLine.TrackId
    JOIN Genre ON Genre.GenreId = Track.GenreId
WHERE Genre.Name = 'Rock'
GROUP BY Customer.Country
ORDER BY Total_Spent DESC
LIMIT 5;