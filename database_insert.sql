INSERT INTO
	executor(id, name_executor)
VALUES
	(1, 'Michael Jackson'),
	(2, 'Queen'),
	(3, 'Linkin Park'),
	(4, 'Metallica'),
	(5, 'Kiss'),
	(6, 'Eminem'),
	(7, 'Miles Davis'),
	(8, 'ABBA');


INSERT INTO
	name_genre(id, name_genre)
VALUES
    (1, 'pop'),
	(2, 'Metal'),
	(3, 'rock'),
	(4, 'rap'),
	(5, 'jazz');
    
INSERT INTO 
	executor_genre(genre_id, executor_id)
VALUES 
	(1, 1),
	(3, 1),
	(3, 2),
	(3, 3),
	(2, 4),
	(2, 5),
	(3, 5),
	(4, 6),
	(5, 7),
	(1, 8),
	(3, 8);
	
INSERT INTO
	album(id, name, release_year)
VALUES
    (1, 'IMMORTAL', 2018),
	(2, 'Greatest Hits', 1981),
	(3, 'Voulez-Vous', 1979),
	(4, 'Meteora', 2020),
	(5, 'Master Of Puppets (Remastered)', 1986), 
	(6, 'Dynasty', 2019),
	(7, 'Kind of Blue', 1959),
	(8, 'The Eminem Show', 2002);

INSERT INTO
	track(id, name, duration, album_id)
VALUES
    (1, 'Michael Jackson - Workin Day and Night (Immortal Version)', 217, 1),
	(2, 'The Jackson 5, The Jacksons - Shake Your Body (Down to the Ground) (Immortal Version)', 147, 1),
	(3, 'Bohemian Rhapsody', 325, 2),
	(4, 'Another One Bites the Dust', 215, 2),
	(5, 'As Good as New', 202, 3),
	(6, 'I Have a Dream', 284, 3),
	(7, 'Dont Stay', 187, 4),
	(8, 'Somewhere I Belong', 214, 4), 
	(9, 'Battery', 273, 5),
	(10, 'Master of Puppets', 514, 5),
	(11, 'I Was Made for Lovin You', 271, 6),
	(12, 'Sure Know Something', 361, 6),
	(13, 'So What - Mono Version', 547, 8), 
	(14, 'Freddie Freeloader - Mono Version', 588, 7),
	(15, 'White America', 324, 8),
	(16, 'Business', 251, 8),
	(17, 'my', 333, 8);

INSERT INTO
	collections(id, name, release_year)
VALUES
    (1, 'The best Michael Jackson', 2020),
    (2, 'Favorite artists', 2019),
    (3, 'collection_3', 2019),
    (4, 'collection_4', 2020),
    (5, 'collection_5', 2021),
    (6, 'collection_6', 2002),
    (7, 'collection_7', 2005),
    (8, 'collection_8', 2001);
   
 
INSERT INTO 
	collections_track(collections_id, track_id)
VALUES 
	(1, 1),
    (2, 2),
    (2, 3), 
    (3, 14), 
    (3, 17), 
    (3, 6),
	(3, 5),
	(4, 2),
	(4, 8);
   
   
INSERT INTO
	album_executor(executor_id, album_id) 
VALUES
	(1, 1),
	(2, 2),
	(3, 4),
	(4, 5),
	(5, 6),
	(6, 8),
	(7, 7),
	(8, 3);

--SELECT * FROM collections_track