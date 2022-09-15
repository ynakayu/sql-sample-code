/* 2017年1月の、東京都に住むユーザーの、注文情報一覧を出して。
取得する列（カラム）は、
注文id (orders.id)
注文日時(orders.order_time)
注文金額合計(orders.amount)
ユーザーid (user.id)
名字(users.last_name)
名前(users.first_name) */

select 
    o.id order_id,
    o.order_time order_time,
    o.amount amount,
    u.id user_id,
    u.last_name last_name,
    u.first_name first_name
from 
    orders o
inner join
    users u
on o.user_id = u.id
where
    u.prefecture_id = 13
    and o.order_time >= '2017-01-01 00:00:00'
    and o.order_time < '2017-02-01 00:00:00'
order by order_id;