create table IF NOT EXISTS accounts (
    id serial primary key,
    name varchar(255) not null,
    balance int not null
);