DROP DATABASE burgers_db;

CREATE DATABASE burgers_db;
USE burgers_db;


CREATE TABLE burgers (
    id INT NOT NULL AUTO_INCREMENT,
    burger_name VARCHAR (255),
    devoured BOOLEAN NOT NULL DEFAULT 0,
	PRIMARY KEY (id)
);

CREATE TABLE `burgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `burger_name` varchar(255) DEFAULT NULL,
  `devoured` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
