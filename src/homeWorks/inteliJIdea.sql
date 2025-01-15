create table mentors (id serial primary key, name varchar not null, surname varchar not null, email varchar not null unique);
insert into mentors(name, surname, email)
values('Kalybek', 'Ulukbekov', 'k@gmail.com'),
      ('Saikal', 'Akbaralieva', 'saku@gmail.com');

create table seller (id serial primary key, name varchar not null, address varchar not null);
insert into seller(name, address)
values ('Akylbek', 'Altyn-Ordo'),
       ('Nuraly', 'Ak-Bata'),
       ('Aigerim', 'Jany-Konush');

create table products(id serial primary key, name varchar, productNumber integer not null, price integer);
insert into products(name, productNumber, price)
values ('Milk', 123423, 87),
       ('Fish', 13223, 450),
       ('Bread', 3445, 45);

create table toy (id serial primary key, name varchar not null, feature varchar);

alter table toy rename to toys;
insert into toys(name, feature)
values ('Car', 'strength'),
       ('bear', 'softness');

create table furniture(id serial primary key, name varchar not null, productID integer not null, price integer);
insert into furniture(name, productID, price)
values ('sofa', 12322, 34000),
       ('chair', 33222, 14000),
       ('table', 21111, 8000);

create table sizes(id serial primary key, size varchar);
insert into sizes(size)
values ('XS'),('S'),('M'),('L'),('XL'),('XXL');

create table clothes(id serial primary key, name varchar not null, size integer references sizes(id));
insert into clothes(name, size)
values
    ('Sweat', 1),
    ('T-shirt', 2),
    ('Shirt', 4);

create table laptops(id serial primary key, mark varchar not null, price integer);
insert into laptops(mark, price) values ('macbook', 90000), ('lenovo', 45000), ('asus', 60000);

create table courses(id serial primary key, name varchar, address varchar not null );
insert into courses(name, address) values ('Peaksoft', 'Grajdanskaya 119'), ('MetaLabs', 'Turusbekova'),('MegacCom', 'Turusbekova');

create table classes(id serial primary key, name varchar);
insert into classes(name) values ('1 class'), ('2 class'), ('3 class'), ('4 class'), ('5 class'), ('6 class'), ('7 class'), ('8 class'), ('9 class'), ('10 class'), ('11 class');


create table student(id serial primary key, name varchar, surname varchar, age integer, class integer references classes(id));
insert into student(name, surname, age, class) values ('Aruu', 'Satybaldieva', 12, 5),
                                                      ('Kanat', 'Kadyraliev', 14, 8),
                                                      ('Bermet', 'Imanalieva', 15, 9);