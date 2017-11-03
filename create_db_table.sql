CREATE DATABASE `appdemo`;
USE `appdemo`;
CREATE TABLE `demodata` (
`id` INTEGER NOT NULL AUTO_INCREMENT,
`name` VARCHAR(100),
`notes` TEXT,
`timestamp` TIMESTAMP,
PRIMARY KEY (`id`),
KEY (`name`)
);

CREATE TABLE `demodata_erase_log` (
`id` INTEGER NOT NULL AUTO_INCREMENT,
`timestamp` TIMESTAMP,
PRIMARY KEY (`id`),
KEY (`timestamp`)
);

CREATE USER 'appdemo'@'%' IDENTIFIED BY 'appdemo';
GRANT ALL PRIVILEGES ON appdemo.* to 'appdemo'@'%' WITH GRANT OPTION;