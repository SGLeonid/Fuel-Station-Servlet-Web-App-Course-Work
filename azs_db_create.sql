DROP DATABASE azs_db;

CREATE DATABASE IF NOT EXISTS azs_db;

USE azs_db;

CREATE TABLE IF NOT EXISTS fuel (
	ID INT NOT NULL PRIMARY KEY auto_increment,
    mark VARCHAR(32) NOT NULL,
    price_per_litter FLOAT(7, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS user (
	ID INT NOT NULL PRIMARY KEY auto_increment,
    name VARCHAR(32) NOT NULL,
    surname VARCHAR(32) NOT NULL,
    email VARCHAR(32) NOT NULL
);

CREATE TABLE IF NOT EXISTS purchase (
	id INT NOT NULL PRIMARY KEY auto_increment,
    user_id INT NOT NULL,
    fuel_id INT NOT NULL,
    discount FLOAT(7, 2) NOT NULL,
    amount FLOAT(7, 2) NOT NULL,
    price FLOAT(7, 2) NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (id),
    FOREIGN KEY (fuel_id) REFERENCES fuel (id)
);
