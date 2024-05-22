CREATE DATABASE shop COLLATE utf8mb4_general_ci;
CREATE TABLE cart (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `image` VARCHAR(255) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `desc` VARCHAR(255) NOT NULL,
    `quan` VARCHAR(45) NOT NULL,
    `price` VARCHAR(45) NOT NULL,
    `subTotal` VARCHAR(45) NOT NULL,
    `user_id` INT UNSIGNED NOT NULL
    );


CREATE TABLE `categories` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(45) NOT NULL
);


    CREATE TABLE confirmorders (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    paymentType VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    status VARCHAR(255) NOT NULL,
    comments VARCHAR(255) NOT NULL,
    `user_id` INT UNSIGNED NOT NULL
    );


CREATE TABLE `coupon` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `coupon` VARCHAR(100) NOT NULL,
    `Discount` VARCHAR(100) NOT NULL
);
CREATE TABLE `products` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `price` VARCHAR(45) NOT NULL,
    `image` VARCHAR(45) NOT NULL,
    `quantity` VARCHAR(45) NOT NULL,
    `category_id` INT UNSIGNED NOT NULL
);
CREATE TABLE users (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    role ENUM("user", "admin") DEFAULT "user"
);