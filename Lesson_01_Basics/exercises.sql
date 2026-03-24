-- TASK: Display all columns from the 'Track' table
SELECT *
FROM Track;
-- TASK: Specific columns: Name and Composer
SELECT Name,
    Composer
FROM Track;
-- TASK: Name and UnitPrice with a limit of 15 rows
SELECT Name,
    UnitPrice
FROM Track
LIMIT 15;
-- TASK: Using Alias to rename 'Name' column to 'Song_Title'
SELECT Name AS Song_Title
FROM Track;
-- TASK: Find unique composers (no duplicates)
SELECT DISTINCT Composer
FROM Track;