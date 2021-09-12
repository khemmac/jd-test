select
o.paymenttype
, sum(od.unitprice * od.quantity)
from orderdetails od
inner join orders o on od.orderid = o.id
group by o.paymenttype 