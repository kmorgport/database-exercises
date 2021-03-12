USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
                          `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                          `username` varchar(100) NOT NULL,
                          `email` varchar(100) NOT NULL,
                          `password` varchar(100) NOT NULL,
                          PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE `ads`(
                      `adId` int UNSIGNED NOT NULL AUTO_INCREMENT,
                      `user_id` int UNSIGNED NOT NULL,
                      `title` varchar(100) NOT NULL,
                      `description` TEXT NOT NULL,
                      PRIMARY KEY (adId),
                      FOREIGN KEY (user_id) REFERENCES users(id)
)