/*ユーザー一覧を、 山田 太郎さん というように
名字＋スペース+ 名前 + さん
の、フォーマットで出力してほしい*/

select concat(last_name, ' ', first_name, 'さん') from users;