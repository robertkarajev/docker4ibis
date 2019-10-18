DROP USER IF EXISTS @user;
DROP DATABASE IF EXISTS @db;

CREATE USER @user IDENTIFIED BY '@user';

CREATE DATABASE @db CHARACTER SET utf8 COLLATE utf8_bin;

USE @db

GRANT ALL ON @db TO '@user'@'%';
GRANT ALL PRIVILEGES ON `@db`.* TO '@user'@'%' 