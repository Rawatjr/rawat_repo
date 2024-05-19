create database cr_indx;
use cr_indx;
create table cars (
    car_id int primary key,
    car_BrandName varchar(20),
    car_Name varchar(20),
    price int,
    country_origin varchar(20));

desc cars;

insert into cars (car_id, car_BrandName, car_Name, price, Country_origin) value
			(01, 'TATA', 'Safari', 2500000, 'INDIA'),
            (02, 'Mahindra', 'XUV', 2000000, 'INDIA'),
            (03, 'Honda', 'Amaze', 700000, 'JAPAM'),
            (04, 'Hyundai', 'Verna', 1500000, 'SOUTH-KOREA'),
            (05, 'KIA', 'Seltos', 1200000, 'SOUTH-KOREA');
select * from cars;
create index idx_Country_origin on cars(country_origin);
select * from cars where country_origin='INDIA';
drop index idx_Country_origin on cars;


            
                    
    