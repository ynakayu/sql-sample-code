-- 1) products テーブルから全件取得
select * from products;
-- 2) idが1の行を取得
select * from products where id = 1;
-- 3) 名前が「商品0003」の行を取得
select * from products where name = '商品0003';
-- 4) priceが1000より大きい行を取得
select * from products where price > 1000;
-- 5) price が1000より小さい行を取得
select * from products where price < 1000;
-- 6) priceが100でない行を取得
select * from products where price <> 100;
-- 7) 次のようにもかけます。
select * from products where price != 100;
-- 8) idが1か2か3の行を取得
select * from products where id in(1, 2, 3);
-- 9)idが1か2か3ではない行を取得
select * from products where id not in(1, 2, 3);
-- 10)priceがnullではない行を取得
select * from products where price is not null;
-- 11)priceがnullの行を取得
select * from products where price is null;
-- 12)priceが1000から1900の行を取得
select * from products where price between 1000 and 1900;
-- 13)これは次のようandを使っても書ける。andは、論理積。条件AもBも成り立つ時にtrue（真）。
select * from products where price >= 1000 and price <= 1900;
-- 14)or （論理和）も使える。条件Aか条件Bが一つ以上成り立つ場合にtrue
-- 価格が1000円又は2000円の行を取得
select * from products where price = 1000 or price = 2000;