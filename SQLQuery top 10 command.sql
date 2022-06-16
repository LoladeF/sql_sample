/*
Assignment Day 1
*/
--1: My first SQL Statement

SELECT *
FROM  Purchasing.PurchaseOrderHeader


--2:
SELECT VendorID, OrderDate
FROM Purchasing.PurchaseOrderHeader


--3
SELECT *
FROM Purchasing.PurchaseOrderHeader
WHERE Status = 4
ORDER BY OrderDate DESC
/*
Status is 4
Orderdate
*/

SELECT  top 10*
FROM Purchasing.PurchaseOrderHeader
WHERE Status = 4
ORDER BY OrderDate DESC
/*
this is a comment for top 10 clause
*/


