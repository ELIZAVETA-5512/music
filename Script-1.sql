--музыкальные жанры
INSERT INTO genre(genre_name)
VALUES ('поп');
INSERT INTO genre(genre_name)
VALUES ('джаз');
INSERT INTO genre(genre_name)
VALUES ('классика');

--исполнители
INSERT INTO artist(artist_name)
VALUES ('Лучанно Паваротти');
INSERT INTO artist(artist_name)
VALUES ('Эрос Рамазотти');
INSERT INTO artist(artist_name)
VALUES ('Луи Армстронг');
INSERT INTO artist(artist_name)
VALUES ('П.И. Чайковский');

--жанры исполнителей
INSERT INTO artist_genre
VALUES (1, 1);
INSERT INTO artist_genre
VALUES (1, 3);
INSERT INTO artist_genre
VALUES (2, 1);
INSERT INTO artist_genre
VALUES (3, 2);
INSERT INTO artist_genre
VALUES (4, 3);


--альбомы
INSERT INTO album(album_name, release_year)
VALUES ('La Bohema', 2019);
INSERT INTO album(album_name, release_year)
VALUES ('In ogni senso', 1990);
INSERT INTO album(album_name, release_year)
VALUES ('Louis Armstrong Live in Europe', 1991);
INSERT INTO album(album_name, release_year)
VALUES ('Щелкунчик', 1960);


--исполнители, выпустившие альбомы
INSERT INTO album_artist(artist_id, album_id)
VALUES (1,1);
INSERT INTO album_artist
VALUES (2,2);
INSERT INTO album_artist
VALUES (3,3);
INSERT INTO album_artist
VALUES (4,4);
INSERT INTO album_artist
VALUES (1,2);


--треки
INSERT INTO track(track_name, duration, album_id)
VALUES ('Royal Garden Blues', 504, 3);
INSERT INTO track(track_name, duration, album_id)
VALUES ('Aranci, ninnili', 1940, 1);
INSERT INTO track(track_name, duration, album_id)
VALUES ('Se Bastasse Una Canzone', 506, 2);
INSERT INTO track(track_name, duration, album_id)
VALUES ('Вальс цветов', 606, 4);
INSERT INTO track(track_name, duration, album_id)
VALUES ('Марш', 220, 4);
INSERT INTO track(track_name, duration, album_id)
VALUES ('My cherie amour', 423, 2);
--

--сборники
INSERT INTO collection(collection_name, release_year)
VALUES ('Pavarotti and Friends for the Children of Liberia', 1998);
INSERT INTO collection(collection_name, release_year)
VALUES ('e²', 2007);
INSERT INTO collection(collection_name, release_year)
VALUES ('Best Live Concert', 2000);
INSERT INTO collection(collection_name, release_year)
VALUES ('Лучшее', 2022);

--треки сборников
INSERT INTO collection_track(collection_id, track_id)
VALUES (1,2);
INSERT INTO collection_track
VALUES (2,3);
INSERT INTO collection_track
VALUES (2,6);
INSERT INTO collection_track
VALUES (3,2);
INSERT INTO collection_track
VALUES (3,1);
INSERT INTO collection_track
VALUES (4,4);
