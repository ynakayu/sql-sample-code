/*累計販売数が10個以上の商品については、
価格を5%UPして。*/

select 
    product_id,
    sum(product_qty)
from
    order_details
group by
    product_id
having 
    sum(product_qty) >= 10;

select * from products;

update
    products
set
    price = price * 1.05
where
    id in
    (
    select 
        product_id
    from
        order_details
    group by
        product_id
    having 
        sum(product_qty) >= 10
    );
    
select * from products;