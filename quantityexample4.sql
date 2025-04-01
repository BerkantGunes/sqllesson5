use Northwind

-- En cok siparis verilen urunler listesi
select top 10
P.ProductName,
Sum(OD.Quantity) as TotalQuantity

from 
Products P
inner join [Order Details] OD on P.ProductID = OD.ProductID

group by
P.ProductName

order by
TotalQuantity DESC;