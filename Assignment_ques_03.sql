 -- (The ACID properties of a transaction are the  principles in database,
 -- management systems that ensure the reliability, consistency, and integrity of data during database transactions)
create database acid;
use acid;
create table Products (Product_id int primary key, 
ProductName varchar(255) NOT NULL, Stockleft int NOT NULL);

insert into Products (Product_id, ProductName, Stockleft) VALUES 
(1, 'Laptop', 10),
(2, 'Smartphone', 20),
(3, 'Television',15),
(4, 'Smartwatch',10),
(5, 'Bluetooh',15);

desc Products;
select * from Products;
