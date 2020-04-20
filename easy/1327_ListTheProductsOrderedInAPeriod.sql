-- [Amazon]

-- Mission: get the names of products with greater than or equal to 100 units ordered in February 2020 and their amount.

-- Approach I: Using Month and Year function
select product_name,sum(unit) as unit
from Products a
left join Orders b on a.product_id = b.product_id
where month(order_date) = 2 and year(order_date) = '2020'
group by a.product_id
Having unit >=100

-- Approach II: Left()
select p.product_name,
sum(o.unit) as unit
from Products p
join Orders o
on p.product_id = o.product_id
where Left(order_date, 7) = '2020-02'
group by p.product_name
having sum(o.unit) >= 100