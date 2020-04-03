-- Odd id: mod(id,2)=1  or  id % 2 = 1
-- Order by Desc: where -> order by

-- modulus (mod) and remainder (%) are not the same. 
-- mod(id, 2) is a better option to use since it is generic SQL which could be used with Oracle rather than id % 2 which would work only in MySQL as its not generic SQL

select *
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating DESC
;