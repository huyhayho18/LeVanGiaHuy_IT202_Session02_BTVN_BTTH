create database bookManager;
use bookManager;

create table book (
	bookId int primary key,
    bookName varchar(200) not null,
    quantity int check(quantity >= 0),
    price decimal(10,2) default 5000
);

select * from book;

alter table book
add dateEnter date;

create table borrow_books (
	borrowId int auto_increment primary key,
    bookId char(5) not null,
    borrowDate datetime default(current_timestamp())
);