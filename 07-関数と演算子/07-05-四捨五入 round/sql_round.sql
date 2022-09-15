/* 商品価格一覧を作成する時に、税込み価格を出力してほしい。
ただし、小数第1位で四捨五入して出力 */
select id, name, price * 1.08 from products;

select id, name, round(price * 1.08, 0) from products;

select round(10.555, 0);

select round(10.555, 1);

select round(10.555, 2);