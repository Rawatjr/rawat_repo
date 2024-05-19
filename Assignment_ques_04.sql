create database lib_alt;
use lib_alt;

create table BookType (Booktype_id int primary key,
    BookType_Name varchar(50) NOT NULL);
    
create table Books (BookNumber varchar(13) primary key,Title varchar(255) NOT NULL,
    Author_id int, Booktype_id int, Publisher varchar(100), PublicationYear int, Quantity int);
    
create table Authors (Author_id int primary key, Name varchar(100) NOT NULL);

create table Members ( Member_id int primary key, Name varchar(100) NOT NULL,
    Email varchar(100) UNIQUE, Date_of_Joining date NOT NULL, Fine int default 0 );

create table Transactions ( Transaction_id int primary key, Member_id int, BookNumber varchar(13),
    BorrowDate date NOT NULL, ReturnDate date, FOREIGN KEY (Member_id) references Members(Member_id),
    FOREIGN KEY (BookNumber) references Books(BookNumber));
    
ALTER table Books add Price int;
desc Books;

ALTER table Members add MembershipType varchar(50);
desc Members;

DROP TABLE BookType;
show tables;