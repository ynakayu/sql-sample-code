select
    id,
    last_name,
    email
from
    users
where id not in(
    select
        user_id
    from
        orders
    where
        order_time >= '2017-12-01 00:00:00'
        and order_time < '2018-01-01 00:00:00');