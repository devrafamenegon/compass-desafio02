CREATE DATABASE cleaning_history;
USE cleaning_history;

CREATE TABLE cleaner
(
	cleaner_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    `name` VARCHAR(100) NOT NULL
);

CREATE TABLE responsible
(
	responsible_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    `name` VARCHAR(100) NOT NULL
);

CREATE TABLE size
(
	size_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    `description` VARCHAR(50) NOT NULL,
    cleaning_price FLOAT NOT NULL
);

CREATE TABLE residence
(
	residence_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(60) NOT NULL,
    neighborhood VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    complement VARCHAR(100) NULL,
    `number` SMALLINT NOT NULL,
    size_id INTEGER,
    responsible_id INTEGER,
    FOREIGN KEY (responsible_id) REFERENCES responsible(responsible_id),
    FOREIGN KEY (size_id) REFERENCES size(size_id)
);

CREATE TABLE cleaning
(
	cleaning_id INTEGER AUTO_INCREMENT PRIMARY KEY,
	scheduled_date DATE NULL,
    realization_date DATE NULL,
    must_be_paid BIT(1) NULL,
    was_paid BIT(1) NOT NULL,
    responsible_evaluation ENUM('terrible','bad','regular','good','awesome') NULL,
    responsible_feedback VARCHAR(255) NULL,
    cleaner_id INTEGER,
    residence_id INTEGER,
    FOREIGN KEY (cleaner_id) REFERENCES cleaner(cleaner_id),
	FOREIGN KEY (residence_id) REFERENCES residence(residence_id)
);
