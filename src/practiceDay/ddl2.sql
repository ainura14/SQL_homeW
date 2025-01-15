insert into students(id, name, age) values (3, 'Kanat', 23);
alter table students
    add column email varchar;

insert into students(
    id, name, age, email
) VALUES (4, 'Taalai', 23, 'take@gmail.com');

select * from students;

create table jobs (id serial primary key , professions varchar);
create table employees(id serial primary key , first_name varchar, last_name varchar, email varchar unique , date_of_birth date not null , job_id integer references jobs(id));
insert into jobs (professions) values ('it'),
                                      ('doctor'),
                                      ('teacher');
insert into employees(first_name, last_name, email, date_of_birth, job_id) values ('Ainura', 'Nusubalieva', 'aika@gmail.com', '2004-11-14', 1),
                                                                                  ('Mykty', 'Taalaibekov', 'myky@gmail.com', '2001-12-09', 2),
                                                                                  ('Aida', 'Mizirovna', 'aida@gmail.com', '1990-12-08', 3);

alter table students
    rename column email to gmail;