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