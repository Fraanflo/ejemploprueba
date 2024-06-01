create schema petsdb;
use petsdb;

create table owner(
	owner_id int auto_increment primary key,
    owner_name varchar(100) not null,
    owner_cellphone varchar(100) not null,
    owner_email varchar(100) not null
);

create table pet(
	pet_id int auto_increment primary key,
    pet_name varchar(100) not null,
    pet_pet_type varchar(100) not null,
    pet_age int not null,
    owner_id int not null,
    foreign key (owner_id)
	references  owner (owner_id)
);