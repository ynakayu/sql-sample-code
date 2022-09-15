/*都道府県別平均客単価を教えてほしい。

必要な列
都道府県ID
都道府県名
平均客単価（小数第１位で四捨五入）

並び順
都道府県ID昇順

全期間での平均客単価を教えて*/
select
    pref.id as prefecture_id,
    pref.name as prefecture_name,
    round(avg(o.amount), 0) as average_customer_spend
from
    orders o
inner join users u
    on o.user_id = u.id
inner join prefectures pref
    on u.prefecture_id = pref.id
group by
    pref.id
order by
    pref.id;
