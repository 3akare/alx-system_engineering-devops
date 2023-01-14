-- create a database named tyrell_corp and a table name nexus6 with at least on entry
CREATE DATABASE IF NOT EXISTS tyrell_corp;
CREATE TABLE IF NOT EXISTS tyrell_corp.nexus6(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(25)
);
INSERT INTO tyrell_corp.nexus6 (name) VALUES ('David');
GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';
