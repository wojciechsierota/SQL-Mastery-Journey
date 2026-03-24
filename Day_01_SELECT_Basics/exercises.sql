-- TASK 1: Everything
SELECT *
FROM Track;
-- TASK 2: Two columns together
SELECT Name,
    Composer
FROM Track;
-- TASK 3: Two columns with limit
SELECT Name,
    UnitPrice
FROM Track
LIMIT 15;
-- TASK 4: Alias
SELECT Name AS Song_Title
FROM Track;
-- TASK 5: Unique composers
SELECT DISTINCT Composer
FROM Track;