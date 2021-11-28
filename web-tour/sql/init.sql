CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
create table t_user (
    id int not null auto_increment,
    username varchar(64) not null,
    email varchar(64) not null,
    firstname varchar(64) not null,
    lastname varchar(64) not null,
    password varchar(64) not null,
    primary key (id)
);
create table t_role (
    id int not null auto_increment,
    name varchar(64) not null,
    primary key (id)
);
create table t_tour (
    id int not null auto_increment,
    start varchar(64) not null,
    finish varchar(64) not null,
    price integer not null,
    date varchar(64) not null,
    count integer null,
    primary key (id)
);
create table t_description (
    id int not null auto_increment,
    img varchar(512) not null,
    text varchar(512) not null,
    tour_id int not null,
    primary key (id)
);
create table t_user_roles (
    user_id  bigint not null,
    roles_id bigint not null,
    primary key (user_id, roles_id)
);

insert into t_role (name) values ('ROLE_USER'), ('ROLE_ADMIN');
insert into t_user (username, email, firstname, lastname, password) values ('daniil','denielrust@yandex.ru','Daniil','Popov','$2a$12$SpZyp.nydTggda9VquPqFO1NwBeR0A6S5PQl1hqzPqW9bnkq0PJhK');
insert into t_user_roles (user_id, roles_id) values (1,1), (1,2);
insert into t_user (username, email, firstname, lastname, password) values ('DenielP4','denielrust@mail.ru','Roman','Vasilyev','$2a$12$SpZyp.nydTggda9VquPqFO1NwBeR0A6S5PQl1hqzPqW9bnkq0PJhK');
insert into t_user_roles (user_id, roles_id) values (2,1), (2,2);
insert into t_tour (start, finish, price, date, count) values ('Moscow', 'New-York', 40000, '2022-01-23', 20);
insert into t_description (img, text, tour_id) VALUES ('https://drive.google.com/uc?export=view&id=1N9e5RkWfyLyzzRNPn3-Nz1G2voFNnguN', 'https://drive.google.com/uc?export=view&id=1qK4u0AIAxXqsUYV0XHPGYkIsnKgt6-e7', 1);
insert into t_tour (start, finish, price, date, count) values ('Moscow', 'Kazan', 10000, '2022-02-25', 20);
insert into t_description (img, text, tour_id) VALUES ('https://drive.google.com/uc?export=view&id=1NDepi-QD6DwcjzLRS-4BY_T163vn0E7Q', 'https://drive.google.com/uc?export=view&id=183-PlShUVHvD-c1ArQ2aq0Ss3bi3b3Se', 2);
insert into t_tour (start, finish, price, date, count) values ('Kazan', 'Berlin', 35000, '2022-03-12', 20);
insert into t_description (img, text, tour_id) VALUES ('https://drive.google.com/uc?export=view&id=1Gk5cvewI_3dU6VXi_fBQcqmLXhR4LQTS', 'https://drive.google.com/uc?export=view&id=1dIpCmSoz1NZ39MFNLXP3JOn9q6npKKB3', 1);