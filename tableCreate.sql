CREATE TABLE users (
    id VARCHAR2(255) NOT NULL PRIMARY KEY,
    password VARCHAR2(255) NOT NULL,
    phone VARCHAR2(255) NOT NULL,
    email VARCHAR2(255) NULL,
    regdate DATE DEFAULT SYSDATE,
    addr VARCHAR2(255),
    role VARCHAR2(255) DEFAULT 'common'
);

create table board (
    id number(10) not null primary key,
    title varchar2 (255) not null ,
    writer varchar2(255) not null,
    cont varchar2 (255) not null,
    regdate date default sysdate,
    cnt number(10) default 0
    );
    
CREATE TABLE admin(
adminId number(10) not null primary key,
adminPw VARCHAR2 (255) not NULL);

select * from users;    
select * from board;

