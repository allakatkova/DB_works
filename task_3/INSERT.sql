-- Исполнители

INSERT INTO singers(name_singer) VALUES ('Жанна Агузарова');

INSERT INTO singers(name_singer) VALUES ('Сева Оболонский');

INSERT INTO singers(name_singer) VALUES ('Аркадий Северный');

INSERT INTO singers(name_singer) VALUES ('Lalo Schifrin');

INSERT INTO singers(name_singer) VALUES ('Тимати');

INSERT INTO singers(name_singer) VALUES ('Баста');

INSERT INTO singers(name_singer) VALUES ('Виктор Цой');

INSERT INTO singers(name_singer) VALUES ('Лолита');

INSERT INTO singers(name_singer) VALUES ('Хабиб');

-- Жанры

INSERT INTO genres(name_genre) VALUES ('Рок');

INSERT INTO genres(name_genre) VALUES ('Шансон');

INSERT INTO genres(name_genre) VALUES ('Поп');

INSERT INTO genres(name_genre) VALUES ('Рэп');

INSERT INTO genres(name_genre) VALUES ('Блюз');

-- Альбомы

INSERT INTO albums(name_album, year_album) VALUES ('Жанна Агузарова и Браво', 1987);

INSERT INTO albums(name_album, year_album) VALUES ('Афганский ветер', 2008);

INSERT INTO albums(name_album, year_album) VALUES ('Господа офицеры', 2015);

INSERT INTO albums(name_album, year_album) VALUES ('Blues for Johann Sebastian', 1973);

INSERT INTO albums(name_album, year_album) VALUES ('Black Star', 2006);
 
INSERT INTO albums(name_album, year_album) VALUES ('Баста 3', 2010);

INSERT INTO albums(name_album, year_album) VALUES ('Последний герой', 1989);

INSERT INTO albums(name_album, year_album) VALUES ('Раневская', 2018);

INSERT INTO albums(name_album, year_album) VALUES ('Сборник', 2019);

-- Треки

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Жёлтые ботинки', 207, 3);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Верю я', 182, 3);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Банька', 167, 4);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Я приеду, мама', 187, 4);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Офицеры', 407, 5);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Поручик Голицин', 335, 5);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Troubadour my', 180, 6);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Old Laces', 260, 6);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('В Клубе', 265, 7);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Жара', 256, 7);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Россия', 250, 8);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Олимпиада 80', 309, 8);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Электричка', 352, 9);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Троллейбус', 195, 9);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('На титанике', 232, 10);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Ты моё море', 188, 10);

INSERT INTO tracks(name_track, duration, album_id) VALUES ('Гравитация', 228, 11);
INSERT INTO tracks(name_track, duration, album_id) VALUES ('Как первый снег', 201, 11);


-- Сборники

INSERT INTO collections(name_collection, year_collection) VALUES ('Сборник хитов', 2000);

INSERT INTO collections(name_collection, year_collection) VALUES ('Свежак 2018', 2018);

INSERT INTO collections(name_collection, year_collection) VALUES ('Лучшие хиты шансона', 2015);

INSERT INTO collections(name_collection, year_collection) VALUES ('Блюз не стареет никогда', 1999);

INSERT INTO collections(name_collection, year_collection) VALUES ('Рэп и хип-хоп', 2011);
 
INSERT INTO collections(name_collection, year_collection) VALUES ('Попсовый хит', 2020);

INSERT INTO collections(name_collection, year_collection) VALUES ('Все хиты группы Кино', 2019);

INSERT INTO collections(name_collection, year_collection) VALUES ('Рок жив!', 2015);

-- Исполнители по жанрам

INSERT INTO genres_singers(genre_id, singer_id) VALUES (1,1);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (2,2);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (2,3);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (5,4);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (4,5);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (4,6);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (1,7);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (3,8);

INSERT INTO genres_singers(genre_id, singer_id) VALUES (3,9);

-- Исполнители по альбомам

INSERT INTO albums_singers(album_id, singer_id) VALUES (3,1);

INSERT INTO albums_singers(album_id, singer_id) VALUES (4,2);

INSERT INTO albums_singers(album_id, singer_id) VALUES (5,3);

INSERT INTO albums_singers(album_id, singer_id) VALUES (6,4);

INSERT INTO albums_singers(album_id, singer_id) VALUES (7,5);

INSERT INTO albums_singers(album_id, singer_id) VALUES (8,6);

INSERT INTO albums_singers(album_id, singer_id) VALUES (9,7);

INSERT INTO albums_singers(album_id, singer_id) VALUES (10,8);

INSERT INTO albums_singers(album_id, singer_id) VALUES (11,9);

-- Треки в сборниках

INSERT INTO tracks_collections(track_id, collection_id) VALUES (1,1);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (2,8);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (3,3);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (4,3);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (5,3);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (6,3);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (7,4);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (8,4);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (9,5);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (10,5);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (11,5);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (12,5);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (13,8);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (14,8);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (15,6);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (16,6);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (17,6);

INSERT INTO tracks_collections(track_id, collection_id) VALUES (18,6);