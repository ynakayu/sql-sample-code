/* 顧客一覧を取得して欲しい。
都道府県IDで出力されてもよくわからないので、都道府県名も表示してほしい。
必要列は、ユーザーID, 名字, 名前, 都道府県名。
【追加条件】
女性だけのデータが欲しい */

select
    u.id,
    u.last_name,
    u.first_name,
    p.name
from
    users u
inner join
    prefectures p
on u.prefecture_id = p.id
where u.gender = 2;