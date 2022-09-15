show columns from books;

alter table books add price int after id;

show columns from books;

alter table books change price unit_price int;

show columns from books;

alter table books drop unit_price;

show columns from books;