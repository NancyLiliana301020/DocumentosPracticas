-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tractocamiones
CREATE DATABASE IF NOT EXISTS `tractocamiones` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tractocamiones`;

-- Volcando estructura para tabla tractocamiones.combustible_precio
CREATE TABLE IF NOT EXISTS `combustible_precio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `precio` double NOT NULL DEFAULT 0,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.estatus
CREATE TABLE IF NOT EXISTS `estatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.odometro
CREATE TABLE IF NOT EXISTS `odometro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `unidad` int(11) NOT NULL DEFAULT 0,
  `kilometraje` double NOT NULL DEFAULT 0,
  `litros` double NOT NULL DEFAULT 0,
  `importe` double NOT NULL DEFAULT 0,
  `observaciones` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.pago
CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `unidad` int(11) NOT NULL DEFAULT 0,
  `importe` double NOT NULL DEFAULT 0,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.remolque
CREATE TABLE IF NOT EXISTS `remolque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `tiporemolque` varchar(20) NOT NULL,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1 esatus` (`estatus`),
  CONSTRAINT `FK1 esatus` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.tiporemolque
CREATE TABLE IF NOT EXISTS `tiporemolque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1 nombre_id` (`nombre_id`),
  CONSTRAINT `FK1 nombre_id` FOREIGN KEY (`nombre_id`) REFERENCES `remolque` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.tipotractocamion
CREATE TABLE IF NOT EXISTS `tipotractocamion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla tractocamiones.tractocamion
CREATE TABLE IF NOT EXISTS `tractocamion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `tipotractocamion` varchar(20) NOT NULL,
  `estatus` int(11) NOT NULL,
  `tipounidad` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK1 estatus` (`estatus`),
  CONSTRAINT `FK1 estatus` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
