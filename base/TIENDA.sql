DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;
CREATE TABLE fabricante (
 codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL
);
CREATE TABLE producto (
 codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL, 
 precio DOUBLE NOT NULL,
 codigo_fabricante INT UNSIGNED NOT NULL,
 FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);
CREATE TABLE cuenta (
codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (100) NOT NULL,
apellido_paterno VARCHAR (100) NOT NULL,
apellido_materno  VARCHAR (100) NOT NULL,
telefono DOUBLE NOT NULL,
correo VARCHAR (100) NOT NULL,
usuario VARCHAR (100) NOT NULL,
contraseña VARCHAR (100) NOT NULL
);
INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');
INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

SELECT * FROM producto;
SELECT * FROM fabricante;
SELECT * FROM cuenta;
DROP TABLE cuenta;

/*Ejercicios*/
/*1. Lista el de todos los productos que hay en la tabla producto*/
SELECT nombre FROM producto;

/*2. Lista los nombres y precios de todos los productos de la tabla producto*/
SELECT nombre, precio FROM producto; 

/*3. lista todas las columnas de la tabla producto*/
SELECT * FROM producto;

/*4. Lista el nombre de los productos, el precio en euros y el precio en dolares estadounidense*/ 
SELECT nombre, (precio/21.24) AS Euro, (precio/20.10) AS Dolar FROM producto;

/*5. lista el nombre de los productos, el precio en euros y el precio en dolares estadounidense
USD, utiliza los siguientes alias para las columnas: nombre de producto, euros, dolares*/
SELECT nombre As Nombre_de_productos, (precio/21.24) AS Euro, (precio/20.21) AS Dolarares FROM producto;
/*6. lista  los nombres y los precios de todos los productos de la tabla producto, convirtiendo*/
/*los nombres a mayuscula*/
SELECT upper(nombre), precio FROM producto;
/*7. lista los nombres y los precios de todos los productos de la tabla producto. convirtiendo
los nombres a minusculas*/
SELECT lower(nombre),precio FROM producto;
/*8. Lista el nombre de todos los fabricantes en una columna, y en otra columna 
obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante*/
SELECT nombre, upper (left ( nombre ,2)) FROM fabricante;
DELETE FROM fabricante WHERE codigo = codigoFabricante;
DELETE FROM producto WHERE codigo = codigoProducto;
