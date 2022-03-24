create database demo_spring_security;

create table demo_spring_security.APP_USER(
USER_ID bigint not null ,
USER_NAME varchar(36) not null,
ENCRYTED_PASSWORD varchar(128) not null,
ENABLED bit not null
);

alter table demo_spring_security.APP_USER add constraint APP_USER_PK primary key (USER_ID);
alter table demo_spring_security.APP_USER add constraint APP_USER_UK unique (USER_NAME);

create table demo_spring_security.APP_ROLE(
ROLE_ID bigint not null ,
ROLE_NAME varchar(36) not null
);

create table demo_spring_security.USER_ROLE(
ID bigint not null,
USER_ID bigint,
ROLE_ID bigint
);

create table demo_spring_security.PERSITENT_LOGINS(
USERNAME varchar(64) not null,
SERIES varchar(64) not null,
TOKENT varchar(64) not null,
LAST_USED timestamp not null,
primary key (SERIES)
);


