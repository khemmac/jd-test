select c.email from orderdetails od
inner join orders o on od.orderid = o.id
inner join customer c on o.customerid = c.id
group by c.email
having sum(od.unitprice * od.quantity) > 5000