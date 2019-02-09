CREATE DATABASE sweet_seasons;

USE sweet_seasons;

CREATE TABLE mesas(
    id_mesas int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo_mesas varchar(100) NOT NULL,
    cant_invitados varchar(80) NOT NULL,
    precio float NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO mesas (tipo_mesas, cant_invitados, precio)
VALUES ('Solo Dulces', '25 invitados', 500.00),
('Solo Frutas', '35 invitados', 700.00),
('Solo Frituras', '45 invitados', 900.00),
('Dos Cosas', '50 invitados', 1200.00),
('Tres Cosas','100 invitados', 2900.00);

SHOW TABLES;

SELECT * FROM mesas;

DESCRIBE mesas;

CREATE USER 'sweet'@'localhost' IDENTIFIED BY 'sweet.2019';
GRANT ALL PRIVILEGES ON sweet_seasons.* TO 'sweet'@'localhost';
FLUSH PRIVILEGES;
