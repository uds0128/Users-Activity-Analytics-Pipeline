
SELECT 'CREATE DATABASE users' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'users')\gexec

\c users;

CREATE TABLE IF NOT EXISTS city
(
    city_id int primary key,
    city_name varchar(50)
);

CREATE SEQUENCE IF NOT EXISTS user_id INCREMENT 1 START 1;

CREATE TABLE IF NOT EXISTS Users
(
    user_id int primary key NOT NULL DEFAULT nextval('user_id'),
    fname varchar(50),
    lname varchar(50),
    email varchar(50),
    age int,
    gender char(1),
    city int,
    FOREIGN KEY (city) REFERENCES city(city_id)
);


