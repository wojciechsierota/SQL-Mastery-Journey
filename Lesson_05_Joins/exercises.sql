-- TASK 1: Tracks and Genres
SELECT Track.Name AS Song_Name,
    Genre.Name AS Genre_Name
FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId;
-- TASK 2: Tracks and Albums
SELECT Track.Name AS Track_Name,
    Album.Title AS Album_Title
FROM Track
    JOIN Album ON Track.AlbumId = Album.AlbumId;
-- TASK 3: Artists and their Albums
SELECT Artist.Name AS Artist_Name,
    Album.Title AS Album_Title
FROM Artist
    JOIN Album ON Artist.ArtistId = Album.ArtistId;
-- TASK 4: Invoices and Customers
SELECT Invoice.InvoiceId,
    Invoice.InvoiceDate,
    Customer.FirstName,
    Customer.LastName
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId;
-- TASK 5: Connecting Track, Genre, and Album in a single query
SELECT Track.Name AS Song_Title,
    Genre.Name AS Genre,
    Album.Title AS Album_Title
FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId
    JOIN Album ON Track.AlbumId = Album.AlbumId;