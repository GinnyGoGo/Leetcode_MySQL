-- Delete duplicate records

Delete p1 /* Delete and Select cannot use the same From*/
From Person p1, Person p2
Where p1.Email = p2.Email AND p1.Id > p2.Id
;