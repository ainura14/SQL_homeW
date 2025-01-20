-- 1. Бардык клиенттердин шаарлары уникалдуу чыксын
select distinct c.city from Customers c;
-- 2. Туулган жылы 1950 жана 1960 - жылдардын арасындагы ишкерлер чыксын
select * from Employees
where BirthDate between #1950-01-01# and #1960-12-12#;
-- 3. Франциялык поставщиктердин аттары жана мамлекети чыксын
select SupplierName, City from Suppliers where City = 'France';
-- 4. Олкосу Испаниядан башка, аты “A” дан башталган клиенттердин аты, адресси жана олкосу чыксын
select c.CustomerName, c.Address, c.Country from Customers c where c.Country <> 'Spain' and c.CustomerName like 'A%';
-- 5. PostalCode бош болгон клиенттер чыксын
select * from Customers where PostalCode is null;
-- 6. Лондондон болгон клиенттердин биринчи эки клиентин чыгаргыла
select * from Customers where Country = 'London';
-- 7. Фамилиясы 4 тамгадан турган ишкерлердин аты жана туулган жылдары чыксын
select e.LastName, year(e.BirthDate) as birth_date from Employees e where len(e.LastName) > 4;
-- 8. Ар бир олкодо канчадан поставщик бар экенин чыгаргыла
select s.Country, count(*) as count_suppl from Suppliers s group by s.Country;
-- 9. Поставщиктердин саны 1 эле болгон олколорду аты менен сорттоп чыгаргыла
select s.Country, count(*) as count_suppl from Suppliers s group by s.Country having count(*) = 1 order by s.Country;
-- 10 Ар бир категориядагы продуктылардын жалпы суммасын чыгаргыла
select c.CategoryName, count(p.ProductID) from Products as p inner join Categories as c on p.CategoryID = c.CategoryID group by c.CategoryName;
-- 11. 6 жана 8 категориясындагы продуктылардын эн арзан баасын жана атын чыгаргыла
select min(p.Price) as min_price, c.CategoryName, c.CategoryID, p.ProductName
from Products as p inner join Categories as c on p.CategoryID = c.CategoryID
where c.CategoryID between 6 and 8 group by c.CategoryName, p.ProductName, c.CategoryID;
-- 12. Продуктылар жана алардын поставщиктеринин аттары чыксын(сортировка болсун)
select p.ProductName, s.SupplierName
from Products as p inner join Suppliers as s on p.SupplierID = s.SupplierID
order by s.SupplierName, p.ProductName;
-- 13. Ар бир поставщиктин канчадан продуктысы бар экени кемуу тартибинде сорттолуп чыксын
select s.SupplierName, p.ProductName, count(p.ProductName)
from Products as p
    inner join Suppliers as s on p.SupplierID = s.SupplierID
group by s.SupplierName, p.ProductName order by count(p.ProductName) desc;
-- 14. Клиенттердин аты CustomerName деп, ага саткан ишкерлердин аты жана алар кандай служба доставки колдонгону тууралуу маалымат чыксын
select c.CustomerName, e.FirstName as employee_name, s.ShipperName
from ((Orders o
    left join Customers as c on o.CustomerID = c.CustomerID)
    left join Employees as e on o.EmployeeID = e.EmployeeID)
    left join Shippers as s on o.ShipperID = s.ShipperID;
-- 15. Кайсы ишкер канча клиент обслуживайтеткен чыксын .
select e.FirstName, count(c.CustomerName) as customer_count
from (Orders o
    left join Employees as e on o.EmployeeID = e.EmployeeID)
    left join Customers as c on o.CustomerID = c.CustomerID group by e.FirstName;


