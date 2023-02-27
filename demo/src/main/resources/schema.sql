CREATE TABLE USERS
(
    id          integer generated always as identity,
    lastName    text not null,
    name        text not null,
    age         DATE not null DEFAULT (CURRENT_DATE - interval '18 year'),
    username    text not null,
    password    text not null,

    CONSTRAINT pk__id__user primary key (id)
);

create table words
(
    id              integer generated always as identity,
    polish_word     text not null,
    english_word    text,
    spanish_word    text,

    CONSTRAINT pk__id__word primary key (id)
);

create table cards
(
    id              integer generated always as identity,
    word_id         integer not null,

    CONSTRAINT pk__id__cards PRIMARY KEY (id),
    CONSTRAINT fk__word_id__cards foreign key (word_id) REFERENCES words (id)
);

