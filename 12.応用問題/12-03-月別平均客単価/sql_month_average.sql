/*月別の平均客単価を教えて

補足
小数第一位で四捨五入。

必要な列
年月
平均客単価*/

select
    date_format(order_time, '%Y%m') as order_year_month,
    round(avg(amount), 0) as average_customer_spend
from
    orders
group by
    date_format(order_time, '%Y%m')
order by order_year_month;