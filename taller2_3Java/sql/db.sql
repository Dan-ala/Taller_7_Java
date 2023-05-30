drop database if exists taller_java;
CREATE DATABASE taller_java;
USE taller_java;

CREATE TABLE `users_tbl` (
  `user_id` int NOT NULL AUTO_INCREMENT primary key,
  `user_firstname` varchar(40) NOT NULL,
  `user_lastname` varchar(40) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varbinary(255) DEFAULT NULL
);

create table category_tbl(
category_id int auto_increment primary key not null,
category_name varchar(50)
);

create table product_tbl(
product_id int auto_increment primary key not null,
product_name varchar(50) not null,
product_value decimal,
category_id int not null
);

insert into category_tbl()
values(null,'Saludos');


alter table
product_tbl add foreign key(category_id) references category_tbl(category_id);

/*select*from users_tbl;
select*from category_tbl
select*from product_tbl*/