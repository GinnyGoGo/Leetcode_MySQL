-- Find the records not exist other table

-- Approach I: Not In (Faster)
Select name As 'Customers'
From customers
where customers.id Not In
(
    Select customerid from orders
);


-- Approach II: Join & Null
Select name As 'Customers'
From customers As c
Join orders As o
On c.id = o.customerid
where o.customerid Is Null