/* すべての商品について、販売個数一覧を出して */
select
    p.id,
    p.name,
    sum(od.product_qty) num
from 
    products p
left outer join 
-- inner join
    order_details od
on p.id = od.product_id
group by p.id
;