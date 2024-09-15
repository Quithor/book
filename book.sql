CREATE DATABASE IF NOT EXISTS book;

USE book;

CREATE TABLE IF NOT EXISTS user(
    id          INT         NOT NULL
        PRIMARY KEY,
    username    VARCHAR(32) NOT NULL,
    password    VARCHAR(32) NOT NULL,
    email       VARCHAR(32) NOT NULL,
    role        VARCHAR(8) NOT NULL,
    status      CHAR(1)     NOT NULL
);

INSERT INTO user
(id, username, password, email, role, status)
VALUES
(29483001,'user394883','jdf2983283HF','8392457835@qq.com','USER','0'),
(29483002,'user394884','A87awdHDW&8h','1346234535@qq.com','USER','0'),
(29483003,'user394885','h*Dw87a78gd7','2673542673@qq.com','USER','0'),
(29483004,'user394886','nda7iw38&D87','7382647238@qq.com','USER','0'),
(29483005,'user394887','RFHJQ#87ha8f','2768541432@qq.com','USER','0'),
(29483006,'user394888','ygaduTW7g8g7','2376542842@qq.com','USER','0'),
(29483007,'user394889','ga7f6#&*asey','2378542387@qq.com','USER','0'),
(29483008,'user394890','haf6783AWFAf','2323542364@qq.com','USER','0'),
(29483009,'user394891','dh8awg&*DWh7','8756342291@qq.com','USER','0'),
(29483010,'user394892','nd76AWhh78w7','6412743282@qq.com','USER','0'),
(29483011,'user394893','j87sadYWAy9(','237854234t@qq.com','USER','0'),
(29483013,'admin94881','had87wd*&YDW','yuwgd6a@gmail.com','ADMIN','0');

CREATE TABLE IF NOT EXISTS book(
    id          int         NOT NULL
        PRIMARY KEY,
    name        VARCHAR(32) NOT NULL,
    isbn        VARCHAR(32) NOT NULL,
    press       VARCHAR(32) NOT NULL,
    author      VARCHAR(32) NOT NULL,
    pagination  INT         NOT NULL,
    price       DOUBLE      NOT NULL,
    uploadtime  VARCHAR(32) NOT NULL,
    status      CHAR(1)     NOT NULL,
    borrower    VARCHAR(32) NULL,
    borrowtime  VARCHAR(32) NULL,
    returntime  VARCHAR(32) NULL
);

INSERT INTO book
(id, name, isbn, press, author, pagination, price, uploadtime, status, borrower, borrowtime, returntime)
VALUES
(18264142, 'book1',  '939-2-435-32265-4','press1','author1', 234,97.42 ,'24-03-25','0',null,null,null),
(18264143, 'book2',  '939-2-435-32266-4','press1','author2', 325,97.42 ,'24-03-25','0',null,null,null),
(18264144, 'book3',  '939-2-435-32267-4','press1','author3', 145,97.42 ,'24-03-25','0',null,null,null),
(18264145, 'book4',  '939-2-435-32268-4','press1','author4', 75 ,97.42 ,'24-03-25','0',null,null,null),
(18264146, 'book5',  '939-2-435-32269-4','press1','author5', 345,97.42 ,'24-03-25','0',null,null,null),
(18264147, 'book6',  '939-2-435-32260-4','press2','author6', 86 ,97.42 ,'24-03-25','0',null,null,null),
(18264148, 'book7',  '939-2-435-32261-4','press2','author7', 84 ,97.42 ,'24-03-25','0',null,null,null),
(18264149, 'book8',  '939-2-435-32262-4','press2','author8', 184,197.42,'24-03-25','0',null,null,null),
(18264151, 'book10', '939-2-435-32264-4','press3','author10',402,397.42,'24-03-25','0',null,null,null),
(18264152, 'book11', '939-2-435-32275-4','press3','author11',73 ,27.42 ,'24-03-25','0',null,null,null),
(18264153, 'book12', '939-2-435-32274-4','press3','author12',93 ,47.42 ,'24-03-25','0',null,null,null),
(18264154, 'book13', '939-2-435-32273-4','press3','author13',378,297.42,'24-03-25','0',null,null,null),
(18264155, 'book14', '939-2-435-32272-4','press4','author14',579,397.42,'24-03-25','0',null,null,null);

CREATE TABLE IF NOT EXISTS record(
    id          VARCHAR(32) NOT NULL
        PRIMARY KEY,
    bookname    VARCHAR(32) NOT NULL,
    bookisbn    VARCHAR(32) NOT NULL,
    borrower    VARCHAR(32) NOT NULL,
    borrowtime  VARCHAR(32) NOT NULL,
    remandtime  VARCHAR(32) NOT NULL
)