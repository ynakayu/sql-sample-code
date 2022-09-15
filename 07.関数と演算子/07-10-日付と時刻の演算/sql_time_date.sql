/* 現在の日付 ・・・ current_date */
select current_date();
/* 現在の時刻 ・・・ current_timestamp */
select current_timestamp();
/* n日後の日付　・・・ interval */
select current_date() +  interval 3 day;
/* n日前の日付 ・・・ interval  */
select current_date() -  interval 3 day;
/* x時間後の時刻   ・・・ interval 'x hour' */
select current_time() + interval 6 hour;
/* x時間前の時刻 ・・・ - interval 'x hour' */
select current_time() - interval 6 hour;

### 日付と時刻の演算
/* extract ・・・ 日付や時刻の特定の部分（年や月）までを取り出す。 */
/* ordersテーブルから注文日時(order_timeカラム)が、2017年01月のレコードを取得する。*/
select * from orders where extract(year_month from order_time) = 201701;
/* ordersテーブルから注文日時(order_timeカラム)が、2017年のレコードを取得する。*/
select * from orders where extract(year from order_time) = 2017;
/* ordersテーブルから注文日時(order_timeカラム)が、1 月のレコードを取得する。*/
select * from orders where extract(month from order_time) = 1;