create table country (id int primary key, country_name varchar(20), population int, area varchar(20));
insert into country (id,country_name,population,area)  values
(1,'USA', 33100, 9833517),
(2,'Canada', 3777, 9976140),
(3,'UK', 67888, 243610),
(4,'India', 138000, 3287263),
(5,'Australia', 256, 7692024),
(6,'Germany', 8370006, 357022),
(7,'France', 652000, 551695),
(8,'Japan', 1260000, 377975),
(9,'Brazil', 2120000, 8515767),
(10,'South Africa', 593000, 1219090);

create table persons(id int primary key, fname varchar(20), lname varchar(20), population int ,
rating decimal(2.1), country_id int, FOREIGN KEY (Country_Id) REFERENCES Country(Id),country_name varchar(20) );
insert into persons (id,fname,lname,population,rating,country_id,country_name) values
(1, 'John', 'Doe', 50000000, 4.2, 1,'India'),
(2, 'Jane', 'Smith', 30000000, 3.5, 2,null),
(3, 'Emily', 'Jones', 20000000, 4.8, 3,null),
(4, 'Michael', 'Brown', 150000000, 4.1, 4,'USA'),
(5, 'Olivia', 'Taylor', 7000000, 4.6, 5,'India'),
(6, 'Sophia', 'Lee', 30000000, 4.7, 6,'Australia'),
(7, 'Liam', 'Wilson', 50000000, 4.0, 7,'France'),
(8, 'Ava', 'Johnson', 80000000, 3.9, 8,'South Africa'),
(9, 'Isabella', 'Davis', 100000000, 4.5, 9,null),
(10, 'Ethan', 'Martinez', 45000000, 4.3, 10,'South Africa');

 #alter table persons modify rating decimal (3,1);
 #truncate table persons;
 
select distinct country_name from persons;

 select fname as FIRST_NAME, lname as LAST_NAME FROM persons;
  
 select fname as greater_than_4 from persons where rating>4.0;
 
 select country_name from country where population>1000000;
 
 select * from persons where country_name ='USA' or  rating>4.5;
 
 select * from persons where country_name is null;
 
 select * from persons where country_name in('USA','Canada','UK');
 
 select * from persons where country_name not in('India','UK');
 
select Country_name from Country where Population between 500000 AND 2000000;

select Country_name from Country where Country_name not like 'C%';

