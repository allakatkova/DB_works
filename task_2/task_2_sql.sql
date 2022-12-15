CREATE TABLE IF NOT EXISTS Genres (
	genre_id SERIAL PRIMARY KEY, 
	name_genre VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE IF NOT EXISTS Singers (
	singer_id SERIAL PRIMARY KEY, 
	name_singer VARCHAR(100) NOT NULL UNIQUE); -- alias
	
CREATE TABLE IF NOT EXISTS genres_singers (
	genre_id INTEGER REFERENCES Genres(id), 
	singer_id INTEGER REFERENCES Singers(id), 
	CONSTRAINT genres_singers_pk PRIMARY KEY (genre_id, singer_id));	

CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY, 
	name_album VARCHAR(100) NOT NULL, 
	year_album INTEGER NOT NULL);
	
CREATE TABLE IF NOT EXISTS albums_singers (
	singer_id INTEGER REFERENCES Singers(id), 
    album_id INTEGER REFERENCES Albums(id), 
	CONSTRAINT albums_singers_pk PRIMARY KEY (album_id, singer_id));

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY, 
	name_track VARCHAR(100) NOT NULL, 
	duration INTEGER NOT NULL, 
	album_id INTEGER REFERENCES Albums(id));

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY, 
	name_collection VARCHAR(100) NOT NULL, 
	year_collection INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS tracks_collections (
	track_id INTEGER REFERENCES Tracks(id), 
	collection_id INTEGER REFERENCES Collections(id), 
	CONSTRAINT tracks_collections_pk PRIMARY KEY (track_id, collection_id));