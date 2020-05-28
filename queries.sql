select ProductName as Product, CategoryName as Category
from [Product] as p
join [Category] as c
on p.CategoryId = c.Id

select C.CompanyName, C.Id, O.*
from [Customer] as C
left join [Order] as O
on C.Id = O.CustomerId
order by C.Id;

select C.CategoryName as [Category], count(P.ProductName) as "product count"
from [Product] as P
join [Category] as C
on P.CategoryId = C.Id
group by C.CategoryName
order by C.CategoryName;

select c.CategoryName as Category, min(p.UnitPrice)
from [Product] as p
join [Category] as c
on p.CategoryId = c.Id
group by c.CategoryName
order by c.CategoryName;

select ContactName, count(*) as Orders, Customer.Id
from [Customer]
join [Order]
on [Customer].Id = [Order].CustomerId
group by ContactName;