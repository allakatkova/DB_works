-- количество исполнителей в каждом жанре;

SELECT g.name_genre, count(gs.genre_id) FROM genres g
   JOIN genres_singers gs ON g.genre_id = gs.genre_id
   GROUP BY g.name_genre;

-- количество треков, вошедших в альбомы 2019-2020 годов;

SELECT al.name_album, al.year_album, count(t.track_id) FROM albums al
   JOIN tracks t ON al.album_id = t.album_id
   WHERE al.year_album BETWEEN 2019 and 2020
   GROUP BY al.name_album, al.year_album;
  
-- средняя продолжительность треков по каждому альбому;  
   
SELECT al.name_album, AVG(t.duration) FROM albums al
	JOIN tracks t ON al.album_id = t.album_id
	GROUP BY al.name_album;

-- все исполнители, которые не выпустили альбомы в 2020 году;

SELECT sg.name_singer FROM singers sg
	JOIN albums_singers alsg ON sg.singer_id = alsg.singer_id
	JOIN albums a ON a.album_id = alsg.album_id
	WHERE a.year_album < 2020; 

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
  
SELECT c.name_collection FROM collections c
	JOIN tracks_collections tc ON c.collection_id = tc.collection_id
	JOIN tracks t ON t.track_id = tc.track_id
	JOIN albums al ON al.album_id = t.album_id
	JOIN albums_singers alsg ON al.album_id = alsg.album_id
	JOIN singers sg ON sg.singer_id = alsg.singer_id 
	WHERE sg.name_singer LIKE '%Жанна%';

-- название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT al.name_album FROM albums al
	JOIN albums_singers alsg ON al.album_id = alsg.album_id
	JOIN singers sg ON sg.singer_id = alsg.singer_id
	JOIN genres_singers gs ON gs.singer_id = sg.singer_id
	JOIN genres g ON g.genre_id = gs.genre_id
	GROUP BY sg.name_singer, al.name_album
    HAVING count(gs.genre_id) > 1;
   
-- наименование треков, которые не входят в сборники;
   
SELECT t.name_track FROM tracks t
	LEFT JOIN  tracks_collections tc ON t.track_id = tc.track_id
	WHERE tc.track_id IS null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

SELECT sg.name_singer FROM singers sg
	JOIN albums_singers alsg ON sg.singer_id = alsg.singer_id 
	JOIN albums al ON al.album_id = alsg.album_id
	JOIN tracks t ON t.album_id = al.album_id
	WHERE t.duration = (SELECT min(duration) FROM tracks);

-- название альбомов, содержащих наименьшее количество треков.

SELECT al.name_album, count(t.track_id) FROM albums al
	JOIN tracks t ON al.album_id = t.album_id
	GROUP BY al.name_album 
	HAVING count(t.track_id) in (
							SELECT count(t.track_id) FROM albums al
							JOIN tracks t ON al.album_id = t.album_id
							GROUP BY al.name_album
							ORDER BY count(t.track_id)
							LIMIT 1);
