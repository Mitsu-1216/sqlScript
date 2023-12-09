CREATE DATABASE todo_app;

USE todo_app;

CREATE TABLE users( 
    userid INTEGER
    , name VARCHAR(100)
    , password VARCHAR(100)
)

INSERT INTO users 
VALUES (1, 'admin', 'admin')