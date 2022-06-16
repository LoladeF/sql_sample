1 /*---------Using thew Person.Person table, write a query that outputs the Title, FullName(FirstName and LastName), 
Modifiedate Where FirstName Starts with D and Last Name starts with R or M
Ordering By BusinessEntityId----------*/

SELECT  Title, FirstName, LastName, ModifiedDate
FROM Person.Person
WHERE FirstName LIKE 'D%' 
AND LastName LIKE 'R%' OR  LastName LIKE  'M%'
ORDER BY BusinessEntityID ASC


2 /*-----------Select all columns
 from Person.Person Where BusinessEntityId is between 120 and 350
----------------*/
SELECT *
FROM  Person.Person
WHERE BusinessEntityID BETWEEN 120 AND 350

3 /*------------Select all columns 
from Person.Person whose FirstName has a second letter of o
---------------*/
SELECT *
FROM Person.Person
WHERE FirstName LIKE '_o%'

4 /*-----------Select BusinessEntityId, FirstName, LastName 
from Person.Person for people who have no
EmailPromotion(0) and have a ModifiedDate year of 2013------------*/

SELECT BusinessEntityId, FirstName, LastName 
FROM Person.Person
WHERE EmailPromotion=0 OR ModifiedDate=2013

5 /*--------The Purchasing.PurchaseOrderDetail table holds information of purchases made, below are
some of the column descriptions
Column Name Description
OrderQty Quantity of Item Ordered
UnitPrice Price of each Item ordered
ReceivedQty Actual quantity received
Write a query to filter out purchases where what was received was less than what was ordered
and the amount to be refunded. The query should have the following Columns:
PurchaseOrderDetailId, OrderQty, UnitPrice, ReceivedQty, RefundAmount (Alias to be
determined by you)--------*/

SELECT PurchaseOrderDetailId, OrderQty, UnitPrice, ReceivedQty, 
(OrderQty-ReceivedQty) * UnitPrice AS RefundAmount
FROM Purchasing.PurchaseOrderDetail 
WHERE ReceivedQty<OrderQty







 



