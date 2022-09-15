select
    request_month,
    count(distinct user_id)
from 
    access_logs
where
    request_month >= '2017-01-01'
    and request_month < '2018-01-01'
group by
    request_month
having
    count(distinct user_id) >= 630;