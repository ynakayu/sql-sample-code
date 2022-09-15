/* 一個も売れていない商品は、売るのをやめるので削除して。*/

select 
    product_id
from
    order_details
group by
    product_id;   
delete 
from
    products
where
    id not in(
        select 
            product_id
        from
            order_details
        group by
            product_id
    );    
select * from products;