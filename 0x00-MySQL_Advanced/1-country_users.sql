-- sql script to In and not out

CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(256) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
)
