
CREATE TABLE IF NOT EXISTS album(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS musician(
	musician_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS styling(
	styling_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS music(
	music_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	time TIME NOT NULL,
	album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS collection(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_music(
	collection_id INTEGER REFERENCES collection(collection_id),
	music_id INTEGER REFERENCES music(music_id),
	CONSTRAINT cm PRIMARY KEY (collection_id, music_id)
);

CREATE TABLE IF NOT EXISTS musician_album(
	album_id INTEGER REFERENCES album(album_id),
	musician_id INTEGER REFERENCES musician(musician_id),
	CONSTRAINT ma PRIMARY KEY (album_id, musician_id)
);

CREATE TABLE IF NOT EXISTS musician_style(
	musician_id INTEGER REFERENCES musician(musician_id),
	styling_id INTEGER REFERENCES styling(styling_id),
	CONSTRAINT ms PRIMARY KEY (musician_id, styling_id)
);