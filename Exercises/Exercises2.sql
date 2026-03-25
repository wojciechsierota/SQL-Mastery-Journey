SELECT Genre.Name,
    COUNT(InvoiceLine.TrackId)
FROM Genre
    JOIN Track ON Genre.GenreId = Track.GenreId
    JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Genre.Name
ORDER BY COUNT(InvoiceLine.TrackId) DESC
LIMIT 3;