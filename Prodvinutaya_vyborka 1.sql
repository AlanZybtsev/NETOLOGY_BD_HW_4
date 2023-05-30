insert into musicians(musician_name)
values
	('The black keys'),
	('АК-47'),
	('CARMAN'),
	('Мияги');

insert into genres (genre_name)
values
	('Rap'),
	('Pop'),
	('Reggae'),
	('Rock');

insert into albums (album_name, release_year)
values 
	('El Camino', 2011),
	('МегаPolice', 2010),
	('Carmania', 1991),
	('hajime pt.3', 2018);

insert into compositions  (composition_name, duration, album_id)
values 
	('Lonely Boy', 193, 1),
	('Dead and Gone', 221, 1),
	('Gold on the Ceiling', 224, 1),
	('Little Black Submarines', 251, 1),
	('Money Maker', 177, 1),
	('Run Right Back', 197, 1),
	('Sister', 205, 1),
	('Hell of a Season', 225, 1),
	('Stop Stop', 210, 1),
	('Nova Baby', 207, 1),
	('Mind Eraser', 195, 1),
	('АК-47 (Интро)', 63, 2),
	('В Тепле 2 Яйца', 268, 2),
	('Не Сложный, Сложенный', 257, 2),
	('Чё Ты Паришься?', 238, 2),
	('Моя Игра', 341, 2),
	('Под 0 (Скит)', 13, 2),
	('Оля Лукина', 199, 2),
	('Как Страшный Фильм', 309, 2),
	('Никогда Не Сомневался', 136, 2),
	('Не Стесняйся', 250, 2),
	('Позитивный (Скит)', 53, 2),
	('Заборосносимый', 204, 2),
	('Предприниматель Люба', 217, 2),
	('А Ты Чё Думал?', 292, 2),
	('Kill Kill', 218, 2),
	('Моё Промо', 223, 2),
	('Что Бы Изменилось', 218, 2),
	('Второй Альбом По Счёту', 229, 2),
	('Мегаполис', 256, 2),
	('Тем Кто С Нами', 449, 2),
	('Ах, Берёза... (Аутро)', 91, 2),
	('Bad russians', 273, 3),
	('В Багдаде всё спокойно', 249, 3),
	('Бомбей буги', 251, 3),
	('Caribbean girl', 280, 3),
	('Сан-франциско', 291, 3),
	('Филиппинская колдунья', 314, 3),
	('Робин Гуд', 314, 3),
	('День рождения в Монте-Карло', 293, 3),
	('Парень из Африки', 241, 3),
	('Колизей', 267, 4),
	('Дама', 214, 4),
	('Я хочу любить', 228, 4),
	('Фея', 225, 4),
	('Fire Man', 217, 4),
	('Don''t Cry', 222, 4),
	('Fuck the Money', 251, 4),
	('Look at the Scars', 227, 4),
	('Listen to Your Heart', 224, 4),
	('In Love (bonus)', 195, 4);

-- Добавлено для проверки выборки по замечаниям
insert into compositions  (composition_name)
values
	('myself'),
	('by myself'),
	('bemy self'),
	('go my'),
	('myself by'),
	('by myself by'),
	('beemy'),
	('premyne');

insert into compilations (compilation_name, compilation_year)
values
	('Рок, лучшее', 2011),
	('Чувак, это репчик', 2010),
	('Назад в СССР', 1991),
	('Белый реп', 2018);

insert into genres_musicians (genre_id, musician_id)
values
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 1);

insert into musicians_albums (album_id, musician_id)
values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4);

insert into compilations_compositions (compilation_id, composition_id)
values
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(2, 12),
	(2, 13),
	(2, 14),
	(2, 15),
	(2, 16),
	(2, 17),
	(2, 18),
	(2, 19),
	(2, 20),
	(2, 21),
	(2, 22),
	(2, 23),
	(2, 24),
	(2, 25),
	(2, 26),
	(2, 27),
	(2, 28),
	(2, 29),
	(2, 30),
	(2, 31),
	(2, 32),
	(3, 33),
	(3, 34),
	(3, 35),
	(3, 36),
	(3, 37),
	(3, 38),
	(3, 39),
	(3, 40),
	(3, 41),
	(4, 42),
	(4, 43),
	(4, 44),
	(4, 45),
	(4, 46),
	(4, 47),
	(4, 48),
	(4, 49),
	(4, 50),
	(4, 51);

--select * from compilations_compositions
--delete from albums
--select * from musicians m 
--select * from genres g 
--select * from albums