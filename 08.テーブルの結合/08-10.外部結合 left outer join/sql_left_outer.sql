/* usersテーブルとordersテーブルを結合 */
select
    u.last_name last_name,
    u.id user_id,
    o.user_id order_user_id,
    o.id order_id
from
    users u
-- inner join
-- left outer join
left join
    orders o
on u.id = o.user_id
order by u.id;