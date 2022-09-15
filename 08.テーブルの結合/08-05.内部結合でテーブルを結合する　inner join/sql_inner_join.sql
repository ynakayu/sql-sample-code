/* 顧客一覧を取得して欲しい。
都道府県IDで出力されてもよくわからないので、都道府県名も表示してほしい。
必要な列は、ユーザーID, 名字, 名前, 都道府県名。*/
/*
select
    users.id,
    users.last_name,
    users.first_name,
    prefectures.name
from
    users
inner join
    prefectures
on users.prefecture_id = prefectures.id;*/

select
    u.id,
    u.last_name,
    u.first_name,
    p.name
from
    users u
inner join
-- join
    prefectures p
on u.prefecture_id = p.id;