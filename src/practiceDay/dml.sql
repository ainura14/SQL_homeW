create table stud(id serial primary key, name varchar(50), age integer);
insert into stud(name, age) VALUES ('Ainura', 20),
                                   ('Akmaral', 21),
                                   ('Aidar', 20);


delete from stud where id in (3,4);

update stud set id = 3 where name = 'Aidar';

select * from stud;

update stud set age = 23 where name = 'Aidar';
delete from stud where id = 6;

alter table employees
    add column age int check(age >= 0);


alter table employees
    add column email varchar check(email ilike '%gmail.com');

insert into employees(name, surname, position, salary, company, age, email)
values ('grrg', 'dfhh', 'drerhre', 123, 1, 12,'sgr@gmail.com');

select * from employees where name like('%ai%');

select * from employees where name in('Aruuke');

select * from employees where id between 1 and 3;

select * from employees where id not between 1 and 2;

--as ubaktyluu polenin aty
select name as first_name from employees;

-- concat
select concat(name, ' ', surname) from employees;

CREATE TABLE developers (
                            id serial PRIMARY KEY,
                            first_name varchar(50) NOT NULL,
                            last_name varchar(50) NOT NULL,
                            date_of_birth date,
                            gender varchar(10),
                            email varchar(100) UNIQUE NOT NULL,
                            programming_language varchar(50) NOT NULL,
                            experience int,
                            salary numeric,
                            phone_number varchar(13)
);

select * from developers;
--1 task Бардык программисттердин аты, фамилиясы, программалоо тили тилкелерин алыңыз.
select developers.first_name, last_name, developers.programming_language from developers;

--2 task  Программистердин атын, фамилиясын тандаңыз жана жылдык эмгек акыны эсептеп чыгарыныз. (annual_salary)*
select developers.first_name, developers.last_name, developers.salary * 12 from developers;

--3 task  *Программистердин аты менен фамилиясын бириктирип алыныз*
select concat(developers.first_name, ' ', developers.last_name) from developers;

--4 task get by asc Программисттерди тажрыйбасы боюнча азайуу иретинде сорттоп чыгарыныз*
select experience from developers order by developers.experience asc;

--5 task get uniq *Уникалдуу программалоо тилдерин алуу*
select distinct developers.programming_language from developers;

--6 task   "3" жылдан ашык тажрыйбасы бар программисттерди алуу*
select developers.experience from developers where experience >= 3;

--7 task  Биринчи 5 программистти чыгарыңыз*
select * from developers where id <= 5;

--8 task  6-саптан баштап программисттерди чыгарыңыз*
select * from developers where id >= 6;

-- 9 task 4 жылдан 6 жылга чейинки тажрыйбасы бар программисттерди алыңыз*
select * from developers where experience between 4 and 6;

--10 task  "Mar" менен башталган аттары бар программисттерди чыгарыңыз*
select first_name from developers where first_name like 'Mar%';

--11 task *Жынысы боюнча г*руппировка кылып, *Программисттерди жынысы боюнча санаңыз*
select gender from developers group by gender;

select count(gender) from developers where gender like('Male');
select gender ,count(gender) from developers group by gender;

--12 task Программисттердин санын санагыла:*
select count(*) from developers;

--13 task Максималдуу жана минималдуу тажрыйбаны табыңыз:*
select max(developers.experience) from developers;
select min(developers.experience) from developers;

--14 Орточо эмгек акыны эсептөө:*
select avg(developers.salary) from developers;

--15 *Жалпы эмгек акыны эсептөө:*
select sum(developers.salary) from developers;
-- offset || limit
select * from developers offset 10 limit 10;