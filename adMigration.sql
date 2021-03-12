USE adlister_db;

TRUNCATE users;

CREATE TABLE `users` (
                          `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                          `username` varchar(100) NOT NULL,
                          `email` varchar(100) NOT NULL,
                          `password` varchar(100) NOT NULL,
                          PRIMARY KEY (id)
);


TRUNCATE ads;

CREATE TABLE 'ads'(
                      `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                      `user_id` int UNSIGNED NOT NULL,
                      `title` varchar(100) NOT NULL,
                      `description` TEXT NOT NULL,
                      PRIMARY KEY (id),
                      FOREIGN KEY (user_id) REFERENCES users(id)
)