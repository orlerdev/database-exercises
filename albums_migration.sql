USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums
(
    id     INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name   VARCHAR(50) NOT NULL,
    release_date int NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(50) NOT NULL
);