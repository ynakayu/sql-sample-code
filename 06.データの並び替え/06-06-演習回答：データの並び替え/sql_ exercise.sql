-- 演習
-- ユーザー一覧を、出力。
-- 生年月日が古いに並べる。
-- 生年月日が一緒の場合は、都道府県ID順(昇順)に並べる。

-- select * from users order by birthday asc, prefecture_id asc;

select * from users order by birthday, prefecture_id;