-- Several friends at a cinema ticket office would like to reserve consecutive available seats.
-- Mission: query all the consecutive available seats order by the seat_id

-- Hint: Consecutive available seats are more than 2(inclusive) seats consecutively available.

-- Approach I: self join
select distinct a.seat_id
from cinema a
join cinema b
on abs(a.seat_id - b.seat_id) = 1
and a.free=true and b.free=true
order by a.seat_id;

-- Approach II:
select C1.seat_id from cinema C1  where 
C1.free=1 
and 
(
    C1.seat_id+1 in (select seat_id from cinema where free=1) 
    or 
    C1.seat_id-1 in (select seat_id from cinema where free=1) 
) 
order by C1.seat_id