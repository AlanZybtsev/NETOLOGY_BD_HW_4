--1. Название и продолжительность самого длительного трека.
select composition_name, duration from compositions
	where duration = (select max(duration) from compositions);

--2. Название треков, продолжительность которых не менее 3,5 минут.
select composition_name from compositions
	where duration >= (3.5*60);

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select compilation_name from compilations
	where compilation_year between 2018 and 2020;

--4. Исполнители, чьё имя состоит из одного слова.
select musician_name from musicians
	where (LENGTH(musician_name) - LENGTH(replace(musician_name, ' ', ''))) = 0 and 
	(LENGTH(musician_name) - LENGTH(replace(musician_name, '-', ''))) = 0;

--5. Название треков, которые содержат слово «мой» или «my».
select composition_name from compositions c
	where composition_name ilike '% мой %' or 
	composition_name ilike 'мой %' or 
	composition_name ilike '% мой' or 
	composition_name ilike '% my %' or
	composition_name ilike 'my %' or
	composition_name ilike '% my';

