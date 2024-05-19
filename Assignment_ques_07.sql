create database dataLibrary;
use dataLibrary;
create table books (
    book_id int auto_increment primary key,
    title varchar(255),
    author varchar(255),
    genre varchar(100),
    publication_year int);
    
create table members (
    member_id int auto_increment primary key,
    name varchar(100),
    email varchar(255),
    join_date date);
    
    insert into books (title, author, genre, publication_year) values
 ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925),
		('The three musketeers', 'J.Jhonsan', 'adventure',1956);
select * from books;

insert into members (name, email, join_date) values
 ('John Doe', 'john@example.com', '2024-05-15'),
 ('Rawat', 'rawatabc@gmail.com', '2024-05-15');
 
 select * from members;
 SET SQL_SAFE_UPDATES = 0;
 update books set genre = 'Real Adventure' where  title = 'The three musketeers';
 select * from books;
 
delete from books where publication_year < 2000;
select * from books;

-- Delete all records from a table
DELETE FROM members;
 
