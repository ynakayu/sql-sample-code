/*新商品を3件データベースに追加してほしい。
商品名：新商品C
価格：3,000

商品名：新商品D
価格：4,000

商品名：新商品E
価格：5,000*/
insert into 
    products (name, price)
values
    ('新商品C', 3000),
    ('新商品D', 4000),
    ('新商品E', 5000);

select * from products;