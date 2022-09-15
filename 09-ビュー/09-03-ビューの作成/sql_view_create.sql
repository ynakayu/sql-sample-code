/* 都道府県別のユーザー数を教えて。*/
/*create view prefecture_user_counts(name, count)
as
select
    p.name name,
    count(*) count
from 
    users u
inner join
    prefectures p
    on u.prefecture_id = p.id
group by
    u.prefecture_id;*/
    
select
    name,
    count
from
    prefecture_user_counts;