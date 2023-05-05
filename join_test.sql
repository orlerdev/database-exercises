USE join_test_db;

TRUNCATE users;

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

SELECT *
FROM users;

INSERT INTO users (name, email, role_id)
VALUES ('jimmy', 'jimmy@example.com', null),
       ('john', 'john@example.com', 2),
       ('tabitha', 'tabitha@example.com', 2),
       ('rose', 'rose@example.com', 2);

SELECT * FROM users;

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


