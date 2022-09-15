/*全商品を累計販売個数で、ランク分けして欲しい。
A : 20個以上  
B : 10個以上
C : 10個未満
ランクが高い順に、並び替えて。
必要な列は、商品ID、商品名、販売個数、ランク（A or B or C）*/

select
    p.id,
    p.name,
    sum(product_qty),
    case
    when sum(product_qty) >= 20 then 'A'
        when sum(product_qty) >= 10 then 'B'
        else 'C'
    end as product_rank
from
    products p
left outer join
    order_details od
    on p.id = od.product_id
group by p.id
order by product_rank;