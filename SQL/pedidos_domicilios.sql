CREATE DATABASE IF NOT EXISTS pedidos_domicilios;
USE pedidos_domicilios;

CREATE TABLE IF NOT EXISTS cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  telefono VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS producto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  precio DECIMAL(10,2),
  stock INT
);

CREATE TABLE IF NOT EXISTS pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha DATE,
  estado VARCHAR(20),
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE IF NOT EXISTS detalle_pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cantidad INT,
  id_pedido INT,
  id_producto INT,
  FOREIGN KEY (id_pedido) REFERENCES pedido(id),
  FOREIGN KEY (id_producto) REFERENCES producto(id)
);

CREATE TABLE IF NOT EXISTS pago (
  id INT PRIMARY KEY AUTO_INCREMENT,
  metodo VARCHAR(20),
  monto DECIMAL(10,2),
  id_pedido INT,
  FOREIGN KEY (id_pedido) REFERENCES pedido(id)
);

CREATE TABLE IF NOT EXISTS repartidor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  telefono VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS entrega (
  id INT PRIMARY KEY AUTO_INCREMENT,
  estado VARCHAR(20),
  id_pedido INT,
  id_repartidor INT,
  FOREIGN KEY (id_pedido) REFERENCES pedido(id),
  FOREIGN KEY (id_repartidor) REFERENCES repartidor(id)
);