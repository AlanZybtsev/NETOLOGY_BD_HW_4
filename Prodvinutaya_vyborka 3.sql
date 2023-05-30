--1. Количество исполнителей в каждом жанре.
select count(musician_name), genre_name
from musicians m 
	join genres_musicians gm on m.musician_id =  gm.musician_id
	join genres g on g.genre_id = gm.genre_id
	group by genre_name;

--2. Количество треков, вошедших в альбомы 2019–2020 годов.
select count(composition_name) from compositions c 
	join albums a on a.album_id = c.album_id 
	where a.release_year between 2019 and 2020;

--3. Средняя продолжительность треков по каждому альбому.
select round(avg(duration)), album_name from compositions c
	join albums a on a.album_id = c.album_id 
	group by a.album_name;

--4. Все исполнители, которые не выпустили альбомы в 2020 году.
select musician_name from musicians m
where musician_name not in
	(select musician_name from musicians m
	join musicians_albums ma on ma.musician_id = m.musician_id
	join albums a on a.album_id = ma.album_id 
	where a.release_year = 2020);

--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select distinct(compilation_name) from compilations c
	join compilations_compositions cc on cc.compilation_id = c.compilation_id 
	join compositions c2 on cc.composition_id = c2.composition_id
	join albums a on a.album_id = c2.album_id
	join musicians_albums ma on ma.album_id = a.album_id
	join musicians m on m.musician_id = ma.musician_id 
	where m.musician_name  = 'CARMAN';
