select
    p.id,
    p.name,
    case
        when sum(od.product_qty) is null then 0 
        else sum(od.product_qty)
    end as num
from 
    products p
left outer join
    order_details od
on p.id = od.product_id
group by p.id;