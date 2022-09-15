/* ユーザーと、アドミンユーザーを足し合わせた一覧が欲しい
出力して欲しい列は、
email
姓
名
性別(性別を表す数字でOK) */
/*
select
    email,
    last_name,
    first_name,
    gender
from 
    users
union all
select 
    email,
    last_name,
    first_name,
    gender
from
    admin_users;*/
    
select
    email,
    last_name,
    first_name,
    gender
from 
    users
where
    gender = 1  
union all
select 
    email,
    last_name,
    first_name,
    gender
from
    admin_users
where
    gender = 2
order by gender;
