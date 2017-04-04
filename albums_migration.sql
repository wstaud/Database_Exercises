USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL DEFAULT 'NONE', 
    release_date INT,
    sales DECIMAL(12, 2),
    genre CHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
