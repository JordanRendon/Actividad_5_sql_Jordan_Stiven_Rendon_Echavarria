-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para heladeria_y_pizzeria_la_65
DROP DATABASE IF EXISTS `heladeria_y_pizzeria_la_65`;
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.clients: ~5 rows (aproximadamente)
DELETE FROM `clients`;
INSERT INTO `clients` (`id`, `name`, `age`) VALUES
	(1, 'luisa sanchez', 25),
	(2, 'ricardo mesa ', 30),
	(3, 'sara hernandez ', 19),
	(4, 'luisa herrera ', 17),
	(5, 'juan pablo ortiz ', 22);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.dicoints
DROP TABLE IF EXISTS `dicoints`;
CREATE TABLE IF NOT EXISTS `dicoints` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.dicoints: ~4 rows (aproximadamente)
DELETE FROM `dicoints`;
INSERT INTO `dicoints` (`id`, `name`, `value`) VALUES
	(1, 'miercoles de pizza ', 0.1),
	(2, 'sabado de polloloco', 0.15),
	(3, 'viernes de cucuruchos ', 0.12),
	(4, 'jueves de malteadas ', 0.08),
	(5, 'domingo de conchas ', 0.11);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.products: ~5 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `price`) VALUES
	(1, 'concha mediana ', 12000.00),
	(2, 'cucurucho grande ', 15000.00),
	(3, 'pizza familiar', 40000.00),
	(4, 'pollo entero apanado o asado ', 35000.00),
	(5, 'malteadas de sabores', 8000.00);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `sales_value` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales: ~5 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `client_id`, `date`, `sales_value`) VALUES
	(1, 1, '2022-06-08', 80000.00),
	(2, 2, '2022-06-10', 45000.00),
	(3, 3, '2022-06-12', 12000.00),
	(4, 4, '2022-06-09', 16000.00),
	(5, 5, '2022-06-11', 35000.00);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_discoints
DROP TABLE IF EXISTS `sales_discoints`;
CREATE TABLE IF NOT EXISTS `sales_discoints` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` tinyint(4) NOT NULL,
  `discoint_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_discoints: ~5 rows (aproximadamente)
DELETE FROM `sales_discoints`;
INSERT INTO `sales_discoints` (`id`, `sale_id`, `discoint_id`) VALUES
	(1, 1, 1),
	(2, 2, 5),
	(3, 3, 4),
	(4, 4, 3),
	(5, 5, 2);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_products
DROP TABLE IF EXISTS `sales_products`;
CREATE TABLE IF NOT EXISTS `sales_products` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` tinyint(4) NOT NULL,
  `product_id` tinyint(4) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `price` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_products: ~5 rows (aproximadamente)
DELETE FROM `sales_products`;
INSERT INTO `sales_products` (`id`, `sale_id`, `product_id`, `quantity`, `price`) VALUES
	(1, 1, 3, 2, 40000.00),
	(2, 4, 2, 3, 15000.00),
	(3, 2, 1, 1, 12000.00),
	(4, 3, 5, 2, 80000.00),
	(5, 5, 4, 1, 35000.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
