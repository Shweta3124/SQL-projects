create database proj2;
use proj2;

create table role(id int primary key,role_name varchar(100) );

create table user_has_role(id int primary key,role_start_time datetime,
role_end_time datetime not null , user_account_id int ,role_id int);


create table user_has_status(id int primary key,status_start_time datetime,
status_end_time datetime not null,user_account_id int,status_id int);

create table user_account(id int primary key,user_name varchar(100), email varchar(254),
password varchar(200),password_salt varchar(50) not null,password_hash_algorithm varchar(50));


create table status(id int primary key ,status_name varchar(100), is_user_working bit);

select * from role;
select * from user_account;
select * from user_has_role;
select * from user_has_status;
select * from status;

drop table role;
drop table user_account;
drop table user_has_role;
drop table user_has_status;
drop table status;


--1. Insert data into each of the above tables. With at least two rows in each of
--the tables. Make sure that you have created respective foreign keys.
insert into role values(1,'typer')
insert into role values(2,'writer')

insert into user_account values(5,'shweta','shweta.3196@gmail.com','31@p','31@salt','31#c')
insert into user_account values(4,'dhiraj','shiraj.1496@gmail.com','14@p','14@salt','14#c')

insert into user_has_status values (103,'2024','2027',45,1)
insert into user_has_status values(106,'2025','2023',675,3)

insert into user_has_role values (101,'2020','2021',4,1)
insert into user_has_role values(102,'2020','2022',7,2)

insert into status values(1,'work',1)
insert into status values(4,'read',0)

--2. Delete all the data from each of the tables.
delete from  role;
delete from  user_account;
delete from  user_has_role;
delete from  user_has_status;
delete from  status;
