-- Бөлүмдөр таблицасы
CREATE TABLE departments
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Кызматкерлер таблицасы
CREATE TABLE employees
(
    id            SERIAL PRIMARY KEY,
    first_name    VARCHAR(255) NOT NULL,
    last_name     VARCHAR(255) NOT NULL,
    department_id INT REFERENCES departments (id)
);

-- Айлык таблицасы
CREATE TABLE salaries
(
    id             SERIAL PRIMARY KEY,
    employee_id    INT REFERENCES employees (id),
    salary_amount  DECIMAL NOT NULL,
    effective_date DATE    NOT NULL
);


INSERT INTO departments (name)
VALUES ('Marketing'),
       ('IT'),
       ('HR'),
       ('Training'),
       ('Finance'),
       ('Operations'),
       ('Product Management'),
       ('Business Development');


INSERT INTO employees (first_name, last_name, department_id)
VALUES ('Aibek', 'Dusho uulu', 1),
       ('Ainura', 'Nusubalieva', 2),
       ('Baiel', 'Karybaev', 3),
       ('Guljamal', 'Zhanybekova', 4),
       ('Kanchoro', 'Maraimov', 5),
       ('Mukhammedaly', 'Mambetkulov', 1),
       ('Nursultan', 'Juraev', 2),
       ('Almaz', 'Saliev', 3),
       ('Kanbolot', 'Kalbaev', 4),
       ('Nurbol', 'Turatbekov', 5),
       ('Urmat', 'Taichikov', 5),
       ('Mukhammed', 'Taichikov', 5);

INSERT INTO employees (first_name, last_name)
VALUES ('Amir', 'Altymyshov'),
       ('Aruuke', 'Emirsinova'),
       ('Ernis', 'Jaichikov');

INSERT INTO salaries (employee_id, salary_amount, effective_date)
VALUES (1, 35000, '2025-01-01'),
       (2, 45000, '2025-01-01'),
       (3, 55000, '2025-01-01'),
       (4, 60000, '2025-01-01'),
       (6, 37000, '2025-01-01'),
       (7, 46000, '2025-01-01'),
       (8, 56000, '2025-01-01'),
       (9, 41000, '2025-01-01'),
       (10, 61000, '2025-01-01');

INSERT INTO salaries (salary_amount, effective_date)
VALUES (10000, '2025-01-01'),
       ( 70000, '2025-01-01'),
       ( 120000, '2025-01-01');
--1
select e.first_name, d.name from employees e join departments d on e.department_id = d.id;
--2
select e.first_name, s.salary_amount from employees e  left join salaries s on e.id = s.employee_id;

--3
select s.salary_amount, e.first_name from salaries s right join employees e on s.employee_id = e.id;

-- 4
select e.first_name, s.salary_amount, d.name from departments d full join employees e on d.id = e.department_id
                                                                full join salaries s on e.id = s.employee_id;

--5
select d.name, e.first_name from departments d join employees e on d.id = e.department_id;

--6
select d.name, e.first_name from departments d join employees e on d.id = e.department_id where d.name = 'IT';

-- TODO: 7
--  колдонуп, бардык кызматкерлерди жана алардын айлыктарын, айлык жазуу жок болсо да көрсөтүңүз.
-- покажите всех сотрудников и их зарплаты, даже если некоторые сотрудники не имеют зарплаты.

select e.first_name, s.salary_amount from employees e full join salaries s on e.id = s.employee_id;

-- TODO: 8
--  колдонуп, «Marketing» бөлүмүндөгү кызматкерлердин айлыктарын көрсөтүңүз.
-- Напишите запрос , который покажет зарплаты сотрудников из отдела «Marketing».

select d.name, e.first_name from departments d join employees e on d.id = e.department_id where d.name = 'Marketing';

-- TODO: 9
--   колдонуп, эч кандай бөлүмгө кирбеген кызматкерлерди көрсөтүңүз.
-- покажите сотрудников, которые не принадлежат ни к одному из департаментов.
select e.first_name, d.name from employees e left join departments d on e.department_id = d.id where e.department_id is null;

-- TODO: 10
--  колдонуп, кызматкерлердин аттарын, айлыктарын жана бөлүмдөрүн көрсөтүңүз.
-- покажите все возможные комбинации сотрудников, их зарплат и департаментов.
select e.first_name, d.name, s.salary_amount from departments d cross join employees e cross join salaries s;


--1 Вывести все департаменты из таблицы departments.
select d.name from departments d;

--2 Вывести имена и фамилии всех сотрудников. Show the first name and last name of all employees.
select e.first_name, e.last_name from employees e;

-- 3 Найти всех сотрудников, которые работают в департаменте "HR".
select e.first_name, d.name from employees e join departments d on e.department_id = d.id where d.name = 'HR';

-- 4 Найти сотрудников, чьи зарплаты больше 50,000.
select e.first_name, s.salary_amount, d.name from employees e join departments d on e.department_id = d.id join salaries s on e.id = s.employee_id where salary_amount > 50000;

-- 5 Вывести имя и фамилию сотрудника с самой высокой зарплатой.
select e.first_name, e.last_name,s.salary_amount from employees e join salaries s on e.id = s.employee_id order by salary_amount desc limit 1;

-- 6 Вывести все зарплаты для сотрудника с id = 1. Show all salaries for the employee with id = 1
select e.id, e.first_name, e.last_name, s.salary_amount from employees e join salaries s on e.id = s.employee_id where e.id = 1;

--7 Вывести все департаменты, в которых работают сотрудники. Show all departments where employees work.
select e.first_name, d.name from departments d join employees e on d.id = e.department_id;

--8 Найти всех сотрудников, у которых зарплата меньше 40,000. Find all employees whose salary is less than 40,000.
select e.first_name, s.salary_amount from employees e join salaries s on e.id = s.employee_id where salary_amount < 40000;

--9 Вывести всех сотрудников, работающих в департаменте "Marketing". Show all employees working in the "Marketing" department.
select d.name, e.first_name from departments d join employees e on d.id = e.department_id where d.name = 'Marketing';

--10 Посчитать количество сотрудников в таблице employees. Count the number of employees in the employees table.
select count(*) from employees;

--Medium Tasks (Средние задачи / Орто деңгээл тапшырмалар):
-- 1 Посчитать количество сотрудников в каждом департаменте. Count the number of employees in each department.
select d.id, d.name, count(e.id) as employee_count from departments d left join employees e on d.id = e.department_id group by d.id, d.name;

--2 Найти департамент с наибольшим количеством сотрудников. Find the department with the most employees.
select d.name, count(e.id) as employee_count from departments d left join employees e on d.id = e.department_id group by d.id order by employee_count desc limit 1;

-- 3 Посчитать среднюю зарплату по всем сотрудникам. Count the average salary of all employees.
select d.name, avg(salary_amount) from employees join salaries s on employees.id = s.employee_id join departments d on d.id = employees.department_id group by d.name;

--4 Найти всех сотрудников, чья зарплата была обновлена с 2025-01-01. Find all employees whose sdevelopersalary was updated from 2025-01-01.
select e.first_name, e.last_name, s.effective_date from employees e join salaries s on e.id = s.employee_id where effective_date = '2025-01-01';

-- 5 Найти всех сотрудников, у которых нет зарплаты в таблице salaries. Find all employees who do not have a salary in the salaries table.
select * from employees e left join salaries s on e.id = s.employee_id where s.employee_id is null;

-- 6 Вывести список всех сотрудников и их зарплат с сортировкой по зарплате. Show all employees and their salaries, sorted by salary.
select e.first_name, s.salary_amount from employees e join salaries s on e.id = s.employee_id order by salary_amount ;

-- 7 Вывести сотрудников, работающих в департаменте "Finance" и с зарплатой выше 45,000. Show employees working in the "Finance" department with a salary above 45,000.
select e.first_name, d.name, s.salary_amount from employees e join salaries s on e.id = s.employee_id join departments d on e.department_id = d.id where s.salary_amount > 45000 and d.name = 'Finance';

-- 8 Найти всех сотрудников, у которых нет департамента. Find all employees who do not belong to any department.
select e.first_name, d.name as department_name from employees e left join departments d on e.department_id = d.id where name is null;

-- 9 Найти департамент с наименьшей средней зарплатой среди сотрудников. Find the department with the lowest average salary among its employees.
select d.name, avg(s.salary_amount) as lowest_avg_salary from departments d join employees e on d.id = e.department_id join salaries s on e.id = s.employee_id group by d.name order by lowest_avg_salary;

--10 Посчитать общее количество сотрудников по каждой зарплатной категории (менее 40,000, 40,000-60,000, более 60,000). Count the total number of employees in each salary category (less than 40,000, 40,000-60,000, more than 60,000).


--Hard Tasks (Трудные задачи / Кыйын тапшырмалар):
--1 Найти сотрудников с самой высокой и самой низкой зарплатой в каждом департаменте. Find the highest and lowest salaried employees in each department.
select d.name, e.first_name, max(s.salary_amount)
from departments d
    join employees e on d.id = e.department_id
    join salaries s on e.id = s.employee_id
    group by d.name, e.first_name,s.salary_amount order by s.salary_amount desc;

SELECT SUM(s.salary_amount) AS sum_salary,COUNT(s.employee_id) AS count_empl
FROM employees e
JOIN salaries s ON e.id = s.employee_id
GROUP BY s.employee_id, s.salary_amount
HAVING s.salary_amount > (SELECT AVG(salary_amount) FROM salaries);

-- select s.* from salaries s error
-- join(select avg(s1.salary_amount)
-- from salaries s1) as avg_salary
-- on s.salary_amount > avg_salary;
select e.first_name, length(e.first_name)
from employees e where length(first_name) = (select max(length(e2.first_name)) from employees e2);


