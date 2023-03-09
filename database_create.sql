CREATE TABLE IF NOT EXISTS name_genre (
	id SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) UNIQUE NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS executor (
	id SERIAL PRIMARY KEY,
	name_executor VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS executor_genre(
	id SERIAL PRIMARY KEY,
	genre_id INT NOT NULL REFERENCES name_genre(id),
	executor_id INT NOT NULL REFERENCES executor(id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS album_executor (
	id  SERIAL PRIMARY KEY,
	executor_id INT NOT NULL REFERENCES executor(id),
	album_id INT NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	duration INT NOT NULL,
	album_id INT REFERENCES album(id) 
);

CREATE TABLE IF NOT EXISTS collections(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS collections_track(
	id SERIAL PRIMARY KEY,
	collections_id INT NOT NULL REFERENCES collections(id),
	track_id INT REFERENCES track(id)
);