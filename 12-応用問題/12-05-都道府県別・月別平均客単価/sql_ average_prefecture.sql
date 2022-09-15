/* 都道府県別・月別平均客単価を教えて

必要な列
都道府県ID
都道府県名
年月
平均客単価（小数第１位で四捨五入）

並び順
都道府県ID昇順, 年月昇順 */

select 
    pref.id as prefecture_id,
    pref.name as prefecture_name,
    date_format(o.order_time, '%Y%m') as order_year_month,
    round(avg(o.amount), 0) as average_customer_spend
from
    orders o
inner join users u
    on o.user_id = u.id
inner join prefectures pref
    on u.prefecture_id = pref.id
group by
    prefecture_id, order_year_month
order by
    prefecture_id, order_year_month;