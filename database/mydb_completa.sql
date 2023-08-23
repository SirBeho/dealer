-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-08-2023 a las 01:17:24
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos_venta`
--

DROP TABLE IF EXISTS `vehiculos_venta`;
CREATE TABLE IF NOT EXISTS `vehiculos_venta` (
  `idVehiculos_Venta` int NOT NULL AUTO_INCREMENT,
  `vehiculo_matricula` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `precio` float NOT NULL,
  `millage` float NOT NULL,
  `fecha_adquisicion` date NOT NULL,
  `year` varchar(45) NOT NULL,
  `vehiculo_modelo` int DEFAULT NULL,
  `vehiculo_Categoria` int NOT NULL,
  `nuevo` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`idVehiculos_Venta`),
  UNIQUE KEY `vehiculo_modelo_UNIQUE` (`vehiculo_modelo`),
  KEY `categoria_idx` (`vehiculo_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `vehiculos_venta`
--

INSERT INTO `vehiculos_venta` (`idVehiculos_Venta`, `vehiculo_matricula`, `precio`, `millage`, `fecha_adquisicion`, `year`, `vehiculo_modelo`, `vehiculo_Categoria`, `nuevo`, `image`) VALUES
(1, '', 25000, 20000, '2023-01-01', '2022', 1, 1, 1, 'corolla.jpg'),
(2, '', 28000, 15000, '2023-01-02', '2022', 2, 1, 1, 'civic.jpg'),
(3, '', 32000, 10000, '2023-01-03', '2022', 3, 2, 1, 'f150.jpg'),
(4, '', 35000, 12000, '2023-01-04', '2022', 4, 2, 1, 'silverado.jpg'),
(5, '', 26000, 18000, '2023-01-05', '2022', 5, 3, 1, 'altima.jpg'),
(6, '', 34000, 8000, '2023-01-06', '2022', 6, 1, 1, '3series.jpg'),
(7, '', 39000, 7000, '2023-01-07', '2022', 7, 1, 1, 'cclass.jpg'),
(8, '', 42000, 5000, '2023-01-08', '2022', 8, 2, 1, 'a4.jpg'),
(9, '', 28000, 12000, '2023-01-09', '2022', 9, 2, 1, 'elantra.jpg'),
(10, '', 31000, 9000, '2023-01-10', '2022', 10, 3, 1, 'sorento.jpg'),
(11, '', 28000, 17000, '2023-01-11', '2022', 11, 3, 1, 'golf.jpg'),
(12, '', 33000, 15000, '2023-01-12', '2022', 12, 1, 1, 'cx5.jpg'),
(13, '', 38000, 12000, '2023-01-13', '2022', 13, 1, 1, 'outback.jpg'),
(14, '', 39000, 18000, '2023-01-14', '2022', 14, 2, 1, 'wrangler.jpg'),
(15, '', 45000, 8000, '2023-01-15', '2022', 15, 2, 1, 'rx.jpg'),
(16, '', 32000, 20000, '2023-01-16', '2022', 16, 3, 1, 'xc60.jpg'),
(17, '', 49000, 7000, '2023-01-17', '2022', 17, 3, 1, '488gtb.jpg'),
(18, '', 52000, 6000, '2023-01-18', '2022', 18, 1, 1, '911.jpg'),
(19, '', 80000, 3000, '2023-01-19', '2022', 19, 1, 1, 'models.jpg'),
(20, '', 85000, 5000, '2023-01-20', '2022', 20, 2, 1, 'rangerover.jpg');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculos_venta`
--
ALTER TABLE `vehiculos_venta`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`vehiculo_Categoria`) REFERENCES `vehiculo_categoria` (`idVehiculo_Categoria`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `vehiculos_venta_FK` FOREIGN KEY (`vehiculo_modelo`) REFERENCES `vehiculos_modelos` (`idVehiculos_Modelos`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
