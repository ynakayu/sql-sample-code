/*今、商品に割り振られている商品カテゴリを使うのをやめるので、
商品とカテゴリのひも付きを削除してほしい*/

select * from products_categories;

delete from products_categories;

select * from products_categories;