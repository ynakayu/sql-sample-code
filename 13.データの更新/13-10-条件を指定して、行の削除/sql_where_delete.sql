/* 商品ID 1001は、
間違いで登録してしまったものだから、削除してほしい。*/
select * from products where id = 1001;

delete from products where id = 1001;

select * from products where id = 1001;