USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

SELECT 'Michal Jackson stuff' AS 'NOTICE:';
SELECT artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';

