/*全期間での平均客単価を教えて
補足:単価は小数第一位で四捨五入*/

select
    round(avg(amount), 0)
from
    orders;