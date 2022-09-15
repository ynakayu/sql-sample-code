/* 商品idが3の商品名を、「SQL入門」に変えておいて。*/
select * from  products where id = 3;

update products set name = 'SQL入門' where id = 3;

select * from products where id = 3;

update products set name = 'SQL入門1', price = 1000 where id = 3;

select * from products where id = 3;