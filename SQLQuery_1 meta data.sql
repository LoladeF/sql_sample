/*--------------Meta Data-------------*/
SELECT TOP 10 * FROM sys.tables

EXEC sp_columns PurchaseOrderHeader

/*------------------ BASIC COLUMN FILTERING------------*/
--get all columns
SELECT *
FROM  Purchasing.PurchaseOrderHeader


---filter by column
SELECT *
FROM  Purchasing.PurchaseOrderHeader


--2:
SELECT VendorID, OrderDate
FROM Purchasing.PurchaseOrderHeader
WHERE [ Status] = 4

/*------Basic Column filter----------------*/
---Comparism operators(=, <>, > , < , <= ,>= )

--Conditional Operators (LIKE, IN, BETWEEN)

--FILTER by column and using aliases
SELECT VendorID AS 'VENDOR ID' , OrderDate AS 'ORDER DATE'
FROM Purchasing.PurchaseOrderHeader

--Conditional Operators (LIKE, IN, BETWEEN)
SELECT TOP 10*
FROM  Person.Person
WHERE FirstName LIKE 'Ken'
/*----------We can use = or LIKE------*/

--Conditional Operators (LIKE, IN, BETWEEN)
SELECT TOP 10*
FROM  Person.Person
WHERE FirstName IN('Ken', 'TERRI') 

/*--------IN MEANS INCLUDE-----*/

--------Get All person information where Businessentity ID is between 100 and 560
SELECT TOP 10*
FROM  Person.Person
WHERE BusinessEntityID BETWEEN 100 and 560
/*----------no quotation for numbers-----------*/

SELECT TOP 10*
FROM  Person.Person
WHERE BusinessEntityID >=100 AND BusinessEntityID <=560

-----Logical Operators (AND, OR, ANY, ALL)---------
SELECT TOP 10*
FROM  Person.Person
WHERE BusinessEntityID > 200 AND PersonType <> 'EM'
-----<> means not equal to Employee----

----Using Wild Cards (%, _, [], ^, -, *)-----

SELECT *
FROM Person.Person
WHERE FirstName LIKE 's%'

SELECT *
FROM Person.Person
WHERE FirstName LIKE '_s%'
---one _ means second character must be an s---

SELECT *
FROM Person.Person
WHERE FirstName LIKE 'd%[oan]%'



