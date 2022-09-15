 /*ユーザーのアクティビティの度合いによって、施策を変えたい、
ユーザーを累計注文回数で、ランク分けして。
A :  5回以上  
B :  2回以上 （2 or 3 or 4）
C :  1回
※注文回数0回のユーザーは出力不要。

必要情報:
ユーザーID
累計注文回数
ユーザーランク(A or B or C) */
select 
    u.id as user_id,
    count(*) as num,
    case
        when count(*) >= 5 then 'A'
        when count(*) >= 2 then 'B'
        else 'C'
    end as user_rank
from
    users as u
inner join
    orders as o
on u.id = o.user_id
group by u.id
order by user_rank;