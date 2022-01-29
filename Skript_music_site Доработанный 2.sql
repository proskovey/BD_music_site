create table if not exists album (
    id serial primary key,
    name text not null unique,
    year integer,
    executor_id integer references executor(id)
);

create table if not exists executor (
    id serial primary key,
    nickname text,
    genre_id integer references genre(id)
);

create table if not exists track (
    id serial primary key,
    track_name text,
    lenght integer,
    album_id integer references album(id)
);

create table if not exists genre (
    id serial primary key,
    genre_name text
);