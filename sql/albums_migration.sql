USE codeup_test_db;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        name  VARCHAR(100) NOT NULL,
                        release_date int NOT NULL,
                        sales float NOT NULL,
                        genre VARCHAR(50) DEFAULT 'NONE',
                        PRIMARY KEY (id)
);