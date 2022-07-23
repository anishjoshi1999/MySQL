-- To retrive colums from a table
SELECT * FROM bands;
 
SELECT * FROM bands LIMIT 2;
 
SELECT name FROM bands;

 -- RENAME YOUR COLUMN
SELECT id AS "ID", name AS "Band Name" FROM bands;
 -- Display column by order
SELECT * FROM bands ORDER BY name;
SELECT * FROM bands ORDER BY name DESC;
SELECT * FROM bands ORDER BY name ASC;
 
-- Retrive only distinct names from albums
SELECT * FROM albums;
SELECT DISTINCT name FROM albums;
 
 -- To update the existing tuple in the table
UPDATE albums SET release_year = 1982 WHERE id = 1;
 
SELECT * FROM albums WHERE release_year < 2000;
 -- Use of wildcard
SELECT * FROM albums WHERE name LIKE "%er%";
SELECT * FROM albums WHERE name LIKE "%er%" OR band_id = 2;
 
SELECT * FROM albums WHERE release_year = 1984 AND band_id = 1;
 
SELECT * FROM albums WHERE release_year BETWEEN 2000 AND 2018;
 
SELECT * FROM albums WHERE release_year IS NULL;
 -- Delete every single rows inside albums 
DELETE FROM albums ;
 -- to delete a specific row use WHERE clause
DELETE FROM albums WHERE id = 5;
 
SELECT * FROM albums;
 
 -- JOINS
 -- INNER JOIN or BASIC JOIN
SELECT * FROM bands INNER JOIN albums ON bands.id= albums.band_id;
 -- LEFT JOIN
SELECT * FROM bands LEFT JOIN albums ON bands.id = albums.band_id;
-- RIGHT JOIN
SELECT * FROM albums RIGHT JOIN bands ON bands.id = albums.band_id; 
-- AGGREGATE FUNCTIONS AND GROUP BY FUNCTIONS
SELECT AVG(release_year) FROM albums;
SELECT SUM(release_year) FROM albums;

SELECT band_id, COUNT(band_id) FROM albums GROUP BY band_id;
-- Complex SQL Queries
SELECT b.name AS band_name, COUNT(a.id) AS num_albums 
FROM bands AS b
LEFT JOIN albums AS a ON b.id =a.band_id GROUP BY b.id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums 
FROM bands AS b
LEFT JOIN albums AS a ON b.id =a.band_id 
GROUP BY b.id
HAVING num_albums = 1;
 