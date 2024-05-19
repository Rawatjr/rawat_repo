create database bank;
use bank;

create table customer(customer_id int primary key, customer_name varchar(20),
customer_address varchar(50),customer_email varchar(25),
 customer_phone varchar(20));
 
 create table Accnount(AccountNumber int primary key, customer_id int,
    AccnountBalance varchar(20), AccountType VARCHAR(50));
    
CREATE TABLE BankBranch (BranchID int primary key, Name varchar(100),
    Address varchar(200), Phone varchar(20), Manager_name varchar(100));

create table Transaction( Transaction_id int primary key, customer_id int,
 AccountNumber int,transactionType varchar(20), Transactin_Date int);
 
 create table TransactionType (TransactionTypeID int primary key, Type varchar(50));
alter table Accnount add  BranchID int;
alter table Accnount add foreign key (BranchID) references BankBranch(BranchID); 

alter table Transaction add TransactionTypeID int;
alter table Transaction add foreign key (TransactionTypeID) references TransactionType(TransactionTypeID);
    