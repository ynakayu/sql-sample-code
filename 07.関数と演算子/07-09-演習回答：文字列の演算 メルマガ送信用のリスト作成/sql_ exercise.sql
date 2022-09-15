/* 演習 : 
メルマガ送信用のリスト作成
出力項目は、
宛名「名字 + さん」
メールアドレス 
例）中村さん, nakamura@example.com
女性だけに送信したい  */

select concat(last_name, 'さん'), email from users where gender = 2;