USE codeup_test_db;
# change album sales
SELECT * FROM albums;
UPDATE albums
SET sales = sales*10;
SELECT * FROM albums;

#change release date
UPDATE albums
SET release_date = (release_date -100)
WHERE release_date<1980;
SELECT name FROM albums WHERE release_date <1880;

#change artist name
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT name FROM albums WHERE artist = 'Peter Jackson';