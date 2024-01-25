create table user(
    id varchar2(255) not null primary key,
    password varchar2(255) not null,
    phone varchar2 (255) not null,
    email varchar2(255) null,
    regdate date default sysdate,
    addr varchar2(255),
    role varchar2(255) default 'user'
);

