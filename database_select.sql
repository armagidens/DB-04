--Количество исполнителей в каждом жанре.
SELECT ng.name_genre, COUNT(eg.id) FROM name_genre ng
LEFT JOIN executor_genre eg  ON ng.id = eg.genre_id
GROUP BY ng.name_genre;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) name FROM track t 
LEFT JOIN album a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(t.duration / 60) FROM track t 
LEFT JOIN album a ON t.album_id = a.id 
GROUP BY a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT e.name_executor FROM album a
LEFT JOIN album_executor ae ON ae.album_id = a.id 
LEFT JOIN executor e ON e.id = ae.executor_id 
WHERE a.release_year != 2020
GROUP BY e.name_executor;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами - 'Michael Jackson') 
SELECT c.name FROM collections c
LEFT JOIN collections_track ct ON ct.collections_id = c.id 
LEFT JOIN track t  ON ct.track_id = t.id
LEFT JOIN album a ON t.id = a.id 
LEFT JOIN album_executor ae ON ae.album_id  = a.id 
LEFT JOIN executor e ON ae.executor_id = e.id 
WHERE e.name_executor LIKE 'Michael Jackson';

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.name FROM album a
LEFT JOIN album_executor ae ON ae.album_id = a.id 
LEFT JOIN executor e ON ae.executor_id = e.id 
LEFT JOIN executor_genre eg ON eg.executor_id = e.id 
LEFT JOIN name_genre ng ON eg.genre_id = ng.id 
GROUP BY a.name
HAVING count(e.name_executor) > 1

--Наименования треков, которые не входят в сборники.
SELECT t.name FROM track t
LEFT JOIN collections_track ct ON ct.track_id = t.id 
WHERE ct.track_id is NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT e.name_executor FROM executor e 
LEFT JOIN album_executor ae ON ae.executor_id = e.id 
LEFT JOIN album a ON ae.album_id = a.id 
LEFT JOIN track t ON a.id = t.album_id 
WHERE t.duration = (SELECT MIN(duration) FROM track);

--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name, COUNT(*) FROM album a
LEFT JOIN track t ON t.album_id  = a.id 
GROUP BY a.name
HAVING COUNT(*) = 
				(SELECT COUNT(*) FROM album a
				LEFT JOIN track t ON t.album_id  = a.id
				GROUP BY a.name
				ORDER by COUNT(*) 
				LIMIT 1);
--select * FROM collections_track
