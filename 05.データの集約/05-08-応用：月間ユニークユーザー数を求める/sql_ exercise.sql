-- select * from access_logs;

select 
    count(distinct user_id)
from
    access_logs
where
    request_month = '2017-01-01';