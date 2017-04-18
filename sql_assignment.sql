-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

1) Find the albums recorded by the artist Queen.
chinook_development=# SELECT * FROM albums WHERE artist_id = 51

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
chinook_development=# SELECT COUNT(name) FROM tracks WHERE media_type_id = 3;

-- 3) Find the least expensive track that has the genre "Electronica/Dance".
chinook_development=# SELECT MIN(unit_price) FROM tracks WHERE genre_id = '15';


-- 4) Find the all the artists whose names start with A.

chinook_development=# SELECT name FROM artists WHERE name LIKE 'A%';

-- 5) Find all the tracks that belong to playlist 1.

chinook_development=# SELECT COUNT(track_id) FROM playlists_tracks WHERE playlist_id = '1';
