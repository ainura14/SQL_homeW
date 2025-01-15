create table people
(
    id         serial primary key,
    first_name varchar(50),
    last_name  varchar(50),
    email      varchar(50),
    gender     varchar(50),
    age        int,
    language   varchar(50)
);
insert into people(first_name, last_name, email, gender, age, language)
VALUES ('Ainura', 'Nusubalieva', 'aika@gmail.com', 'Female', 20, 'kyrguz'),
       ('Fatima', 'Kachkynova', 'fari@gmail.com', 'Female', 19, 'kyrgyz'),
       ('Vladislav', 'Reshetnikov', 'vlad@gmail.com', 'Male', 20, 'russhian');
select * from people;
insert into people(first_name, last_name, email, gender, age, language)
VALUES ('Perizat', 'Temirbelova', 'peri@gmail.com', 'Female', 21, 'turkish'),
       ('Lazat', 'Kerimov', 'ls@gmail.com', 'Male', 22, 'english');

INSERT INTO people (id, first_name, last_name, email, gender, age, language)
VALUES (6, 'Arman', 'Matejic', 'amatejic5@linkedin.com', 'Male', 1996, 'Papiamento'),
       (7, 'Perkin', 'Altham', 'paltham6@hibu.com', 'Male', 1988, 'Zulu'),
       (8, 'Nathan', 'Dommett', 'ndommett7@storify.com', 'Male', 2001, 'Polish'),
       (9, 'Rahal', 'Dericot', 'rdericot8@twitter.com', 'Female', 1960, 'Armenian'),
       (10, 'Alonso', 'Marusik', 'amarusik9@blogtalkradio.com', 'Male', 1970, 'Swahili'),
       (11, 'Clari', 'Wipper', 'cwippera@twitter.com', 'Female', 2006, 'Montenegrin'),
       (12, 'Andonis', 'Pointon', 'apointonb@soundcloud.com', 'Male', 2004, 'Ndebele'),
       (13, 'Orelia', 'Besson', 'obessonc@hubpages.com', 'Female', 2005, 'Czech'),
       (14, 'Tulley', 'Swann', 'tswannd@tinyurl.com', 'Male', 1986, 'Zulu'),
       (15, 'Kirstin', 'Driffill', 'kdriffille@smh.com.au', 'Female', 2012, 'Guaraní'),
       (16, 'Garvy', 'Sherry', 'gsherryf@nyu.edu', 'Male', 1998, 'Punjabi'),
       (17, 'Morgen', 'Snoxell', 'msnoxellg@bandcamp.com', 'Male', 1995, 'Nepali'),
       (18, 'Janine', 'Curl', 'jcurlh@slate.com', 'Female', 1998, 'Kyrgyz'),
       (19, 'Lilllie', 'Barnsdall', 'lbarnsdalli@disqus.com', 'Female', 2006, 'Bulgarian'),
       (20, 'Dynah', 'Tincombe', 'dtincombej@sciencedaily.com', 'Female', 2005, 'Khmer'),
       (21, 'Sacha', 'Matthius', 'smatthiusk@ca.gov', 'Female', 2010, 'Arabic'),
       (22, 'Raynard', 'Gerrans', 'rgerransl@i2i.jp', 'Male', 2001, 'Ndebele'),
       (23, 'Tom', 'Machent', 'tmachentm@mlb.com', 'Male', 2007, 'Polish'),
       (24, 'Fabien', 'Forrest', 'fforrestn@house.gov', 'Male', 2012, 'Aymara'),
       (25, 'Mickie', 'Coal', 'mcoalo@seesaa.net', 'Male', 1998, 'Aymara'),
       (26, 'Tana', 'Weeds', 'tweedsp@shinystat.com', 'Female', 1991, 'Montenegrin'),
       (27, 'Ilka', 'McMichan', 'imcmichanq@bigcartel.com', 'Female', 2004, 'Swahili'),
       (28, 'Mychal', 'Mapplebeck', 'mmapplebeckr@acquirethisname.com', 'Male', 1987, 'Filipino'),
       (29, 'Melody', 'Beck', 'mbecks@pcworld.com', 'Female', 2001, 'Kazakh'),
       (30, 'Lezley', 'Summerbell', 'lsummerbellt@cocolog-nifty.com', 'Male', 2000, 'Maltese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (31, 'Gaye', 'Withringten', 'gwithringtenu@discovery.com', 'Female', 2006, 'Swedish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (32, 'Leonelle', 'Baggallay', 'lbaggallayv@i2i.jp', 'Female', 2004, 'Greek');
insert into people (id, first_name, last_name, email, gender, age, language)
values (33, 'Shir', 'Trevarthen', 'strevarthenw@pagesperso-orange.fr', 'Female', 2000, 'Swahili');
insert into people (id, first_name, last_name, email, gender, age, language)
values (34, 'Ddene', 'Hamlen', 'dhamlenx@theguardian.com', 'Female', 2010, 'Croatian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (35, 'Juditha', 'Yellowlea', 'jyellowleay@cafepress.com', 'Female', 2004, 'Persian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (36, 'Danika', 'Stinson', 'dstinsonz@vinaora.com', 'Female', 1994, 'Bosnian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (37, 'Garrek', 'Bartalini', 'gbartalini10@bing.com', 'Male', 2010, 'Kazakh');
insert into people (id, first_name, last_name, email, gender, age, language)
values (38, 'Seumas', 'Silman', 'ssilman11@usda.gov', 'Male', 2005, 'Indonesian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (39, 'Julius', 'Leftley', 'jleftley12@angelfire.com', 'Male', 2012, 'Lithuanian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (40, 'Jeanine', 'Sprankling', 'jsprankling13@phpbb.com', 'Female', 2001, 'Romanian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (41, 'Clywd', 'Cowles', 'ccowles14@prweb.com', 'Male', 1997, 'Gagauz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (42, 'Rahel', 'Vasilevich', 'rvasilevich15@ustream.tv', 'Female', 1997, 'Zulu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (43, 'Alexandr', 'Obell', 'aobell16@marriott.com', 'Male', 1997, 'Filipino');
insert into people (id, first_name, last_name, email, gender, age, language)
values (44, 'Becky', 'Learoyde', 'blearoyde17@networkadvertising.org', 'Female', 2002, 'Georgian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (45, 'Giustino', 'Putt', 'gputt18@vistaprint.com', 'Male', 1992, 'Estonian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (46, 'Uta', 'Tonbridge', 'utonbridge19@123-reg.co.uk', 'Female', 1993, 'Chinese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (47, 'Granthem', 'Diver', 'gdiver1a@un.org', 'Male', 2009, 'Bengali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (48, 'Livvy', 'Akister', 'lakister1b@nhs.uk', 'Female', 2007, 'Burmese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (49, 'Valle', 'Greenwood', 'vgreenwood1c@tmall.com', 'Male', 2008, 'Guaraní');
insert into people (id, first_name, last_name, email, gender, age, language)
values (50, 'Nicole', 'Coey', 'ncoey1d@mail.ru', 'Female', 2000, 'German');
insert into people (id, first_name, last_name, email, gender, age, language)
values (51, 'Aldo', 'Grigolon', 'agrigolon1e@shop-pro.jp', 'Male', 1967, 'Czech');
insert into people (id, first_name, last_name, email, gender, age, language)
values (52, 'Adam', 'Dalzell', 'adalzell1f@rakuten.co.jp', 'Male', 1991, 'Gujarati');
insert into people (id, first_name, last_name, email, gender, age, language)
values (53, 'Charmian', 'Chatband', 'cchatband1g@archive.org', 'Female', 1998, 'Greek');
insert into people (id, first_name, last_name, email, gender, age, language)
values (54, 'Alic', 'Kinnett', 'akinnett1h@stanford.edu', 'Male', 2006, 'Yiddish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (55, 'Willette', 'Ryles', 'wryles1i@unblog.fr', 'Female', 1986, 'Lao');
insert into people (id, first_name, last_name, email, gender, age, language)
values (56, 'Birk', 'Fleeman', 'bfleeman1j@google.com.br', 'Male', 1998, 'Hungarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (57, 'Artie', 'Ginnelly', 'aginnelly1k@mapquest.com', 'Male', 2002, 'Arabic');
insert into people (id, first_name, last_name, email, gender, age, language)
values (58, 'Ricki', 'Barras', 'rbarras1l@tripadvisor.com', 'Male', 2000, 'Latvian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (59, 'Zondra', 'Scolli', 'zscolli1m@goodreads.com', 'Female', 2005, 'Mongolian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (60, 'Kaitlyn', 'Marle', 'kmarle1n@4shared.com', 'Female', 2004, 'New Zealand Sign Language');

insert into people (id, first_name, last_name, email, gender, age, language)
values (61, 'Cam', 'Jurkowski', 'cjurkowski1o@amazon.de', 'Male', 2010, 'Nepali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (62, 'Pooh', 'Kilgrove', 'pkilgrove1p@dailymotion.com', 'Male', 2002, 'Bulgarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (63, 'Abbe', 'Solway', 'asolway1q@java.com', 'Female', 2006, 'Gagauz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (64, 'Morey', 'Santos', 'msantos1r@is.gd', 'Male', 2005, 'Quechua');
insert into people (id, first_name, last_name, email, gender, age, language)
values (65, 'Tedman', 'Pedley', 'tpedley1s@thetimes.co.uk', 'Male', 1997, 'Māori');
insert into people (id, first_name, last_name, email, gender, age, language)
values (66, 'Hiram', 'Buckham', 'hbuckham1t@mtv.com', 'Male', 2006, 'Punjabi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (68, 'Herb', 'Pickin', 'hpickin1v@upenn.edu', 'Male', 2010, 'Māori');
insert into people (id, first_name, last_name, email, gender, age, language)
values (69, 'Upton', 'Antosch', 'uantosch1w@amazon.com', 'Male', 2005, 'West Frisian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (70, 'Verene', 'Bettesworth', 'vbettesworth1x@g.co', 'Female', 2007, 'Kazakh');
insert into people (id, first_name, last_name, email, gender, age, language)
values (71, 'Allianora', 'Iorizzo', 'aiorizzo1y@ameblo.jp', 'Female', 2008, 'Hiri Motu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (72, 'Abigale', 'Berge', 'aberge1z@usatoday.com', 'Female', 2005, 'Dhivehi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (73, 'Kerrie', 'Husthwaite', 'khusthwaite20@mashable.com', 'Female', 2002, 'Maltese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (74, 'Eberto', 'Gemeau', 'egemeau21@gmpg.org', 'Male', 1965, 'Nepali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (75, 'Anestassia', 'Quarrie', 'aquarrie22@marriott.com', 'Female', 1993, 'Kannada');
insert into people (id, first_name, last_name, email, gender, age, language)
values (76, 'Hillyer', 'Bury', 'hbury23@quantcast.com', 'Male', 2005, 'Tamil');
insert into people (id, first_name, last_name, email, gender, age, language)
values (77, 'Brit', 'Joscelin', 'bjoscelin24@1und1.de', 'Female', 2008, 'Hiri Motu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (78, 'Zilvia', 'Gipps', 'zgipps25@is.gd', 'Female', 1995, 'Finnish');
values (79, 'Rowland', 'Tuite', 'rtuite26@infoseek.co.jp', 'Male', 1999, 'German');
insert into people (id, first_name, last_name, email, gender, age, language)
values (80, 'Uriah', 'Grigolon', 'ugrigolon27@typepad.com', 'Male', 2008, 'Tswana');
insert into people (id, first_name, last_name, email, gender, age, language)
values (81, 'Trumann', 'Paddison', 'tpaddison28@mozilla.com', 'Male', 1996, 'Norwegian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (82, 'Ev', 'Murtimer', 'emurtimer29@myspace.com', 'Male', 2003, 'Bulgarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (83, 'Hyacintha', 'Beddon', 'hbeddon2a@wired.com', 'Female', 1994, 'Lao');
insert into people (id, first_name, last_name, email, gender, age, language)
values (84, 'Milly', 'Dicte', 'mdicte2b@123-reg.co.uk', 'Female', 1993, 'English');
insert into people (id, first_name, last_name, email, gender, age, language)
values (85, 'Omar', 'Keeling', 'okeeling2c@bizjournals.com', 'Male', 2010, 'Czech');
insert into people (id, first_name, last_name, email, gender, age, language)
values (86, 'Marylin', 'Fidoe', 'mfidoe2d@reuters.com', 'Female', 2009, 'Kyrgyz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (87, 'Buckie', 'Chinnery', 'bchinnery2e@rediff.com', 'Male', 2006, 'Tamil');
insert into people (id, first_name, last_name, email, gender, age, language)
values (88, 'Calida', 'Tassaker', 'ctassaker2f@altervista.org', 'Female', 2002, 'New Zealand Sign Language');
insert into people (id, first_name, last_name, email, gender, age, language)
values (89, 'Ronny', 'Meredyth', 'rmeredyth2g@about.me', 'Female', 2011, 'Somali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (90, 'Dee', 'Erik', 'derik2h@unblog.fr', 'Female', 2001, 'Armenian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (91, 'Keeley', 'Engledow', 'kengledow2i@weibo.com', 'Female', 2011, 'Dutch');
insert into people (id, first_name, last_name, email, gender, age, language)
values (92, 'Michele', 'Tibb', 'mtibb2j@shareasale.com', 'Male', 1985, 'Albanian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (93, 'Shauna', 'Lathey', 'slathey2k@goo.ne.jp', 'Female', 1960, 'Bosnian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (94, 'Maighdiln', 'Bellinger', 'mbellinger2l@nba.com', 'Female', 1990, 'New Zealand Sign Language');
insert into people (id, first_name, last_name, email, gender, age, language)
values (95, 'Clea', 'Hurlston', 'churlston2m@patch.com', 'Female', 2011, 'Danish');

insert into people (id, first_name, last_name, email, gender, age, language)
values (96, 'Gardy', 'MacAne', 'gmacane2n@com.com', 'Male', 1973, 'English');
insert into people (id, first_name, last_name, email, gender, age, language)
values (97, 'Caroljean', 'Beake', 'cbeake2o@state.gov', 'Female', 1987, 'Marathi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (98, 'Reinhard', 'Stood', 'rstood2p@simplemachines.org', 'Male', 2007, 'Georgian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (99, 'Zena', 'Vasyuchov', 'zvasyuchov2q@networkadvertising.org', 'Female', 1998, 'Dari');
insert into people (id, first_name, last_name, email, gender, age, language)
values (100, 'Filbert', 'Dewing', 'fdewing2r@ftc.gov', 'Male', 1993, 'Bislama');


-- cast
select people.gender, avg(cast(age as int)) as age_avg from people group by gender;


--1
select * from people;
--2
update people set email = 'ainura@gmail.com' where id = 1;
--3
insert into people(first_name, last_name, email, gender, age, language)
values ('Oksana', 'Ismailova', 'ok@gmail.com', 'Female', 20, 'kyrgyz');
--4
delete from people where id = 10;
--5
select count(*) from people;
--6
select avg(age) from people;
--7
select max(2025 - age) from people;
--8
select sum(2025- age) from people;
--9
select people.first_name, min(age) from people group by first_name;
--10
select avg(2025 - age), gender, count(gender) from people group by gender;
--11
select concat(first_name, ' ', age) from people where language ilike('english');
select first_name, age, language from people where language ilike('english');
--12
select first_name, count(people.language) from people where language ilike('Kazakh') group by first_name;
--13
select concat(people.last_name, ' ', people.email, ' ', id) from people where gender ilike('Female');
--14
select (first_name, last_name) as full_name from people where gender ilike('Male') and age > 2000;
--15
select count(people.first_name) from people where first_name like('A%');
--16
select email from people order by email asc;
--17 Вывести 20 записей пропустив первые 5 записи
select * from people offset 4 limit 20;

--18 Подсчитать количество людей для каждого языка
select language, count(people.language) from people group by language;

--19 Найти средний возраст для каждого языка, где количество людей больше 2
select people.language, avg(2025 - age) as avg_age from people group by language having count(*) > 2;

--20 Вывести количество записей где почта закончивается на.com
select people.email from people where email like('%.com');

-- 21 Найти самый распространенный язык среди женщин
select language, count(*) as count_of_woman_language from people where gender = 'Female' group by language order by count_of_woman_language desc limit 1;

-- 22 Обновить язык для людей, чей возраст между 3 и 10 годами, на 'French'
update people set language = 'French' where age between 3 and 10;

-- 23 Отобразите всех мужчин говорящих на Tamil, Kazakh, Nepali и Russian
select people.language, gender from people where gender = 'Male' group by language,gender  having language in ('Tamil', 'Kazakh', 'Nepali','Russian');

-- 24 Сгруппируте всех по языку на котором они говорят
select people.language, count(language) from people group by language;

-- 25 Отобразите записи фамилии которых содержат только 7 символов и отсортируйте их по айди
select id, people.last_name from people where length(last_name) = 7 order by (id);

-- 26 Отобразите все записи кроме говорящих на French языке
select people.first_name, people.language from people where language not like 'French';

-- 27  Отобразите 5 самых молодых людей у которых почта заканчивается .com
select id, people.first_name, age, people.email from people where email like('%.com') order by age asc limit 5;

-- 28 Отобразите только те записи из таблицы которым есть 18 и которых почта заканчивается на.сот или .uk
select people.first_name, age , people.email
from people
where 2025 - age = 20 and (email like '%.cot' or email like '.uk');
