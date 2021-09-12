select
od.productid
, sum(od.unitprice * od.quantity)
from orderdetails od
group by od.productid 