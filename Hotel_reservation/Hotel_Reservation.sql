DROP DATABASE if exists Hotel_Reservation;
CREATE DATABASE Hotel_Reservation;
drop table if exists customers;
create table customers (
    id INT IDENTITY,
    badge_id char(8),
    first_name varchar(255),
    last_name varchar(255),
    mobile_num char(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10)
);
drop table if exists rooms;
create table rooms (
    id INT IDENTITY,
    room_id SMALLINT,
    floor SMALLINT,
    room_type varchar(255),
    room_price int,
    room_status varchar(255)
);
drop table if exists reservations;
create table reservations (
    id INT IDENTITY,
    customer_id int,
    room_id int,
    check_in date,
    check_out date,
);