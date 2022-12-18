--    название и год выхода альбомов, вышедших в 2018 году;

SELECT NAME_ALBUM, YEAR_ALBUM FROM ALBUMS
	WHERE YEAR_ALBUM = 2018

--    название и продолжительность самого длительного трека;

SELECT NAME_TRACK, DURATION FROM TRACKS
	WHERE DURATION = (SELECT MAX(DURATION) FROM TRACKS)

--    название треков, продолжительность которых не менее 3,5 минуты;

SELECT NAME_TRACK, DURATION FROM TRACKS
	WHERE DURATION >= 210

--    названия сборников, вышедших в период с 2018 по 2020 год включительно;

SELECT NAME_COLLECTION FROM COLLECTIONS
	WHERE YEAR_COLLECTION >= 2018 AND YEAR_COLLECTION <= 2020
	
--    исполнители, чье имя состоит из 1 слова;
	
SELECT NAME_SINGER FROM SINGERS 
	WHERE NAME_SINGER NOT LIKE '% %'
		
--    название треков, которые содержат слово "мой"/"my".

SELECT NAME_TRACK FROM TRACKS
	WHERE NAME_TRACK LIKE '%my%'
