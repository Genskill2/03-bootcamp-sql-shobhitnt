create table if not exists publisher(
id integer primary key autoincrement,
name text not null unique,
country text not null);

create table if not exists books(
id integer primary key autoincrement,
title text not null unique,
publisher integer not null,
foreign key(publisher) references publisher(id)
);
create table if not exists subjects(
id integer primary key autoincrement,
name text not null unique
);
create table if not exists books_subjects(
book int not null,
subject int not null,
foreign key(book) references books(id),
foreign key(subject) references subjects(id),
constraint b_s unique (book,subject)
);
