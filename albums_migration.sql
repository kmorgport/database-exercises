USE codeup_test_db;

CREATE TABLE `albums` (
                          `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                          `artist` varchar(100) NOT NULL,
                          `name` varchar(100) NOT NULL,
                          `release_date` int NOT NULL,
                          `sales` decimal(6,3) NOT NULL,
                          `genre` varchar(100) NOT NULL,
                          PRIMARY KEY (id)
);