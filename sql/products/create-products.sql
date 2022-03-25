CREATE TABLE products(
 id serial primary key,
 name varchar(255) not null,
 price int not null,
 discount boolean,
 unique(name)
)

CREATE TABLE films(
 id SERIAL PRIMARY KEY,
 title VARCHAR(100) NOT NULL,
 genre VARCHAR(100) NOT NULL,
 release_year int not null,
 score int not null,
 UNIQUE (title)
);

insert into films (title, genre, release_year, score)
 values
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven','Western', 1992, 7)

select * from films
select * from films order by score desc
select * from films order by release_year asc
select * from films where score >= 8
select * from films where score <= 7
select * from films where release_year = 1990
select * from films where release_year < 2000
select * from films where release_year > 1990
select * from films where release_year between 1990 and 1999
select * from films where genre = 'SciFi'
select * from films  where genre = 'SciFi' or genre = 'Western'
select * from films  where genre != 'SciFi'
select * from films  where genre = 'Western' and release_year < 2000
select * from films  where title like '%Matrix%'

-- ***************** 1st exe ******************
select avg(score) from films
select count(title) from films
select avg(score) from films where genre = 'SciFi'

CREATE TABLE directors(
 directorId SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL
);

insert into directors (name) values 
('director1'),
('director2'),
('director3'),
('director4'),
('director5'),
('director6'),
('director7'),
('director8'),
('director9'),
('director10'),
('director11'),
('director12'),
('director13'),
('director14')



insert into films (title, genre, release_year, score)
 values
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9,2 ),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 5),
('The Matrix Resurrections', 'SciFi', 2021, 5, 6),
('The Matrix Reloaded', 'SciFi', 2003, 6, 9),
('The Hunt for Red October', 'Thriller', 1990, 7, 11),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 12),
('Hell or High Water', 'Western', 2016, 8, 1),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 7),
('Unforgiven','Western', 1992, 7, 5)


SELECT films.title, directors.name
FROM films
INNER JOIN directors ON films.directorId=directors.directorId;