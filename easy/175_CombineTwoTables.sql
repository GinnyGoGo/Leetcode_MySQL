-- join on

Select FirstName, LastName, City, State
From Person
Left Join Address
On Person.PersonId = Address.PersonId
;