/* 全商品を10%引きに設定して。*/

select * from products;
set sql_safe_updates = 0;
update products set price = price * 0.9;

select * from products;