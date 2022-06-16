----Using Wild Cards (%, _, [], ^, -, *)-----

SELECT *
FROM Person.Person
WHERE FirstName LIKE 's%'

SELECT *
FROM Person.Person
WHERE FirstName LIKE '_s%'
---one _ means second character must be an s---
