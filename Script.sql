CREATE TABLE if not exists genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(100) NOT NULL
);

--исполнители
CREATE TABLE if not exists artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(200) NOT NULL
);

--в каких музыкальных жанрах выступают исполнители 
CREATE TABLE if not exists artist_genre (
	artist_id INTEGER REFERENCES artist(artist_id),
	genre_id INTEGER REFERENCES genre(genre_id),
	CONSTRAINT artist_genre_pk PRIMARY KEY (
		artist_id,
		genre_id
	)
);

--музыкальные альбомы
CREATE TABLE if not exists album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL,
	release_year NUMERIC(4) CONSTRAINT positive_release_year CHECK (
		release_year > 0
	)
);

--исполнители-авторы альбомов
CREATE TABLE if not exists album_artist (
	artist_id INTEGER REFERENCES artist(artist_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT album_artist_pk PRIMARY KEY (
		artist_id,
		album_id
	)
);

--треки
CREATE TABLE if not exists track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	duration SMALLINT CONSTRAINT positive_duration CHECK (
		duration > 0
	),
	album_id INTEGER REFERENCES album(album_id) NOT NULL
);

--сборники
CREATE TABLE if not exists collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name varchar(100) NOT NULL,
	release_year NUMERIC(4) CONSTRAINT positive_release_year CHECK (
		release_year > 0
	)
);

--треки сборников
CREATE TABLE if not exists collection_track (
	collection_id INTEGER REFERENCES collection(collection_id),
	track_id INTEGER REFERENCES track(track_id),
	CONSTRAINT collection_track_pk PRIMARY KEY (
		collection_id,
		track_id
	)
);