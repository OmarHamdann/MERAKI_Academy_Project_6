DROP  DATABASE goodNight;
CREATE DATABASE goodNight;

Use goodNight;

CREATE TABLE roles (
    role_id INT AUTO_INCREMENT NOT NULL,
    role VARCHAR(255) NOT NULL,
    PRIMARY KEY (role_id)
);


CREATE TABLE users(
    id INT AUTO_INCREMENT NOT NULL,
    userName VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (id)
);
CREATE TABLE city(
 id INT AUTO_INCREMENT NOT NULL,
 name VARCHAR(255) NOT NULL,
 image VARCHAR(255) NOT NULL,
 description VARCHAR(255) NOT NULL,
 is_deleted TINYINT DEFAULT 0,
PRIMARY KEY (id)
);


CREATE TABLE hotels(
id INT AUTO_INCREMENT NOT NULL,
hotelName VARCHAR(255) NOT NULL,
image VARCHAR(255) NOT NULL,
image2 VARCHAR(255) NOT NULL,
image3 VARCHAR(255) NOT NULL,
image4 VARCHAR(255) NOT NULL,
image5 VARCHAR(255) NOT NULL,
description VARCHAR(255) NOT NULL,
price INT(7) NOT NULL,
city_id INT,
FOREIGN KEY(city_id) REFERENCES city(id),
is_deleted TINYINT DEFAULT 0,
PRIMARY KEY (id)
);

CREATE TABLE wishList(
id INT AUTO_INCREMENT NOT NULL,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id),
hotels_id INT,
FOREIGN KEY (hotels_id) REFERENCES hotels(id),
is_deleted TINYINT DEFAULT 0,
PRIMARY KEY (id)
);

CREATE TABLE comments(
    id INT AUTO_INCREMENT NOT NULL,
    comment VARCHAR(255),
    commenter VARCHAR(255),
    hotels_id INT,
FOREIGN KEY (hotels_id) REFERENCES hotels(id),
    commenter_id INT,
    FOREIGN KEY (commenter_id) REFERENCES users(id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE ratings(
    id INT AUTO_INCREMENT NOT NULL,
    rating DECIMAL(2,1),
    hotels_id INT,
FOREIGN KEY (hotels_id) REFERENCES hotels(id),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (id)
);