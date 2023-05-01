USE codeup_test_db;

SELECT 'All albums from database' AS 'Info';
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Info';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';