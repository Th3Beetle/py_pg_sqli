CREATE USER test;
CREATE DATABASE test;
GRANT ALL PRIVILEGES ON DATABASE test TO test;
ALTER USER test WITH PASSWORD 'test';

\c test;
SET role test;

CREATE TABLE data (
    id INT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    alias TEXT NOT NULL
);

CREATE TABLE users (
    id INT PRIMARY KEY NOT NULL,
    login TEXT NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO 
    data(id, name, surname, alias)
VALUES
    (1, 'Adam', 'Sandler', 'BigDaddy'),
    (2, 'Mr', 'Anderson', 'Neo'),
    (3, 'Peter', 'Parker', 'Spiderman');

INSERT INTO 
    users(id, login, password)
VALUES
    (1, 'admin', 's3kr3t');

