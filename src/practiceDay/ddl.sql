create table school
(
    id                serial primary key,
    name              varchar,
    address           varchar,
    count_of_students integer
);

alter table school
    add constraint username_unique unique (name);

alter table school
    add column surname varchar unique;

alter table school
    add constraint surname_unique unique (surname);

alter table school
drop constraint surname_unique;

alter table school
drop column surname;

create table students
(
    id         serial primary key,
    first_name varchar(50),
    last_name  varchar(60),
    age        integer,
    school     integer references school (id)
);
alter table students
    rename column school to school_id;

insert into school(name, address, count_of_students)
values ('C.Sadykov', 'Bishkek', 122),
       ('Seytek', 'Chyu', 300);

insert into students(first_name, last_name, age, school_id)
values ('Ainura', 'Nusubalieva', 18, 1),
       ('Akmaral', 'Muktarova', 19, 2);

alter table students
    add column email varchar(90);

alter table students
    add constraint email_unique unique (email);

create table Author
(
    id            serial primary key,
    name          varchar,
    date_of_birth date,
    nationality   varchar
);
-- add column && drop column
alter table Author
    add column email varchar(80),
drop column nationality;

-- add constraint && set constraint
alter table Author
    add constraint email_u unique (email),
alter column name set not null;

-- update type
alter table Author
alter column name type text;

-- rename table
alter table Author
    rename to Authors;


-- 2-task
create table Book
(
    id             serial primary key,
    name           varchar,
    published_year date,
    author         integer references Authors (id)
);

--add constraint && set not null
alter table Book
    add constraint name_unique unique (name),
alter column name set not null;

insert into Authors(name, date_of_birth)
values ('C.Aitmatov', '1928-12-12'),
       ('Halid Hoseyni', '1990-09-23');


insert into Book (name, published_year, author)
VALUES ('Ak keme', '2000-08-09', 1),
       ('Бегущий за ветром', '2005-06-12', 2);



create table company
(
    id       serial primary key,
    name     varchar,
    industry varchar
);

create table employees
(
    id       serial primary key,
    name     varchar,
    surname  varchar,
    position varchar,
    salary   integer,
    company  integer references employees (id)
);

insert into company(name, industry) values ('Peaksoft', 'teaching'),
                                           ('Codex', 'programming'),
                                           ('Apple', 'technique');

insert into employees(name, surname, position, salary, company)
values ('Akmaral', 'Muktarova', 'teacher', 12000, 1),
       ('Saikal', 'Akmatova', 'coder', 2000, 2),
       ('Kainar', 'Satybaldiev','seller', 3000, 3);

alter table company
    add column date_of_foundation date;

update company set date_of_foundation = '2001-02-12' where id = 1;
update company set date_of_foundation = '2000-09-12' where id = 2;
update company set date_of_foundation = '2003-12-02' where id = 3;

select * from company;

alter table company
    rename column industry to sphere_of_activity;

alter table company alter column name set not null ;
