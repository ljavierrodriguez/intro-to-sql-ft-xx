-- Active: 1686667890402@@127.0.0.1@5433@geeks_ft20

DROP DATABASE IF EXISTS geeks_ft20;
CREATE DATABASE geeks_ft20;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    rut VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username),
    UNIQUE (rut)
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
    id SERIAL NOT NULL,
    bio TEXT NULL,
    users_id INTEGER NOT NULL,
    rut VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);