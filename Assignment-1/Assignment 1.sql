create database amazon;
create table amazon.users(
id int primary key auto_increment,
name varchar(255),
mobile char(10),
user_type char(1)
);
# create table table_name
#(column_name datatype constraints, ....)
create table amazon.address(
id int primary key auto_increment,
address_line1 varchar(100) not null,
address_line2 varchar(100) null,
pincode_code char(6) not null
);

insert into amazon.users(name, mobile, user_type) values ('prashant', '1234567890', 'A');
insert into amazon.users(name, mobile, user_type) values ('pra', '1234567890', 'U');

select * from amazon.users;


alter table amazon.users modify column mobile char(10) unique;

update amazon.users set mobile = '2345678901' where id = 2;

alter table amazon.address add user_id int not null;

alter table amazon.address add constraint fk_user
 foreign key(user_id) references users(id);

insert into amazon.address(address_line1, address_line2, pincode_code, user_id) 
values ('address_line1', 'address_line2', '440008', 2);

select user_id, pincode_code from amazon.address; 



# varchar - prashant - 8 bytes
# char - prashant - 255 bytes