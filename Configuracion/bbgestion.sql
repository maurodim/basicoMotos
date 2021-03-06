-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2017 a las 17:40:44
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbgestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `ID` int(11) NOT NULL,
  `BARRAS` varchar(30) DEFAULT NULL,
  `NOMBRE` varchar(49) DEFAULT NULL,
  `SERVICIO` double DEFAULT NULL,
  `COSTO` double DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `MINIMO` int(11) DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `PROVEEDOR` int(11) DEFAULT NULL,
  `RUBRON` varchar(12) DEFAULT NULL,
  `ALTA` varchar(19) DEFAULT NULL,
  `INHABILITADO` int(11) NOT NULL DEFAULT '0',
  `idRubro` int(11) NOT NULL DEFAULT '1',
  `equivalencia` double NOT NULL DEFAULT '1',
  `modificaPrecio` int(11) NOT NULL DEFAULT '0',
  `modificaServicio` int(11) NOT NULL DEFAULT '0',
  `recargo` double NOT NULL DEFAULT '0',
  `servicio1` double DEFAULT '0',
  `idcombo` int(11) DEFAULT '0',
  `actualizacion` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ID`, `BARRAS`, `NOMBRE`, `SERVICIO`, `COSTO`, `PRECIO`, `MINIMO`, `STOCK`, `PROVEEDOR`, `RUBRON`, `ALTA`, `INHABILITADO`, `idRubro`, `equivalencia`, `modificaPrecio`, `modificaServicio`, `recargo`, `servicio1`, `idcombo`, `actualizacion`, `fecha`) VALUES
(1, '1', 'Llave TM 2*16A Domae Schneider', NULL, 254, 292.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(2, '2', 'Llave TM 2*10A Domae Schneider', NULL, 254, 292.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(3, '3', 'Llave TM 2*6A Domae Schneider', NULL, 342, 393.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(4, '4', 'Int. Dif. 2*40A 30MA Domae Schneider', NULL, 1143, 1314.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(5, '5', 'Llave TM 2*63A (6KA) Curva c/ Zoloda', NULL, 227, 261.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(6, '6', 'Llave TM 2*32A (6KA) Curva c/ Zoloda', NULL, 219, 251.85, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(7, '7', 'Llave TM 2*25A (6KA) Curva c/ Zoloda', NULL, 219, 251.85, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(8, '8', 'Llave TM 2*20A (6KA) Curva c/ Zoloda', NULL, 219, 251.85, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(9, '9', 'Cable 0,75mm Celeste Fonseca', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(10, '10', 'Cable 0,75mm Negro Fonseca', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(11, '11', 'Cable 0,75mm Rojo Fonseca', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(12, '12', 'Cable 1,00 mm Celeste Fonseca', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(13, '13', 'Cable 1,00mm Marron Fonseca', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(14, '14', 'Cable 1,00mm Blanco Fonseca', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(15, '15', 'Cable 1,50Verde y Amarilla Fonseca', NULL, 3, 3.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(16, '16', 'Cable 1,50Celeste Fonseca', NULL, 3, 3.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(17, '17', 'Cable 1,50Rojo Fonseca', NULL, 3, 3.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(18, '18', 'Cable 2,50mm Verde y Amarillo Fonseca', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(19, '19', 'Cable 2,50mm Celeste Fonseca', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(20, '20', 'Cable 2,50mm Marron Fonseca', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(21, '21', 'Cable 2,50mm Rojo Fonseca', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(22, '22', 'Cable 4 Verde y Amarillo', NULL, 8, 9.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(23, '23', 'Cable 4 Celeste Fonseca', NULL, 8, 9.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(24, '24', 'Cable 4 Marron Fonseca', NULL, 8, 9.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(25, '25', 'Cable 6 Verde y Amarillo Fonseca', NULL, 12, 13.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(26, '26', 'Cable 6 Celeste Fonseca', NULL, 12, 13.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(27, '27', 'Cable 6 Marron Fonseca', NULL, 12, 13.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(28, '28', 'Cable 10mm Celeste Fonseca', NULL, 21, 24.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(29, '29', 'Cable 10mm Marron Fonseca', NULL, 21, 24.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(30, '30', 'Cable 10mm Negro Fonseca', NULL, 21, 24.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(31, '31', 'Cable 10mm Rojo Fonseca', NULL, 21, 24.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(32, '32', 'Cable TPR 2*1,50mm Negro Fonseca', NULL, 9, 10.35, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(33, '33', 'Cable Subterraneo 2*1,50 Wentinck', NULL, 12, 13.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(34, '34', 'Cable Subterraneo 3*1,50 Wentinck', NULL, 15, 17.25, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(35, '35', 'Cable TPR 3*2,50mm Negro Fonseca', NULL, 20, 23, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:23'),
(36, '36', 'Cable TPR 2*2,50 IMSA', NULL, 15, 17.25, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(37, '37', 'Gancho Centro. P centro de cajas metalurgica Namu', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(38, '38', 'Caja Superficie 2Mod Salida Cablecanal Serie Box ', NULL, 21, 24.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(39, '39', 'Caja Superficie 3Mod Salida Cablecanal Serie Box ', NULL, 29, 33.35, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(40, '40', 'Kit Bajada Monofasico c/ Conexi?n Superior Genrod', NULL, 460, 529, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(41, '41', 'Jabalina 1/2 *2Mts Facbsa 2m*12,6 (1/2) Facbsa', NULL, 308, 354.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(42, '42', 'Tomacable T2 Facbsa', NULL, 96, 110.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(43, '43', 'Tapa Inspeccion p/Jab. c/Carga NG Polipropileno P', NULL, 38, 43.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(44, '44', 'Led Bulb 12W Dia E27 Alic', NULL, 79, 90.85, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(45, '45', 'Led Bulb 8W Luz Fria 6400K E27 Werke', NULL, 49, 56.35, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(46, '46', 'Aplique 1luz G9 San justo Fotoluz', NULL, 200, 230, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(47, '47', 'Ficha Macho K3 Blanco Kalop', NULL, 20, 23, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(48, '48', 'Ficha Macho K3 Negro Kalop', NULL, 20, 23, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(49, '49', 'Ficha Hembra KH Blanco Kalop', NULL, 27, 31.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(50, '50', 'Ficha Hembra KH Negro Kalop', NULL, 27, 31.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(51, '51', 'Ficha Macho A/C 3P 20A Mig Mavi', NULL, 35, 40.25, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(52, '52', 'Ficha Hembra A/C3P 20A Mig Mavi', NULL, 35, 40.25, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(53, '53', 'Ficha Velador 2P Plano Mig Mavi', NULL, 10, 11.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(54, '54', 'Portalamparas Urea Blanca 2 Piezas E27 San Justo', NULL, 18, 20.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(55, '55', 'Floron Escalonado 12CM Castelplas', NULL, 3, 3.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(56, '56', 'Receptaculo Curvo Negro Salgueiro', NULL, 17, 19.55, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(57, '57', 'Roseta Madera 10Cm Roseta', NULL, 7, 8.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(58, '58', 'Tapa Octogonal Chica 7*7Cm Castelplas', NULL, 1, 1.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(59, '59', 'Tapa Octogonal Grande 9*9Cm Castelplas', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(60, '60', 'Tapa Cuadrada 10*10Cm Castelplas', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(61, '61', 'Tapa Ciega 10*5Cm Castelplas', NULL, 1, 1.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(62, '62', 'Dimmer Ventilador 220V-150W Platinum Blanco Jeluz', NULL, 162, 186.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(63, '63', 'Dimmer Luz Incand. 220V-300W Platinum Blanco Jelu', NULL, 162, 186.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(64, '64', 'Resorte p/ Ca?o S/P 20mm Largo 70Cm Tubelectric', NULL, 272, 312.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(65, '65', 'Resorte p/ Ca?o S/P 25mm Largo 80Cm Tubelectric', NULL, 334, 384.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(66, '66', 'Cinta Pasacable Nylon Diam 4mm -10Mts Cristal. Re', NULL, 103, 118.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(67, '67', 'Cinta Pasacable PVC Diam 4mm -20Mts Rojo. Resiste', NULL, 67, 77.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(68, '68', 'Lampara Bajo Consumo 20W', NULL, 45, 51.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(69, '69', 'Lampara Bajo Consumo 11W', NULL, 35, 40.25, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(70, '70', 'FLORECENTE GRANDE T8 36W/54 Luz dia TLD Philips', NULL, 28, 32.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(71, '71', 'FLORECENTE CHICO T8 18W/765 Luz Dia 6500K Osram', NULL, 24, 27.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(72, '72', ' vela reflector Haloline Eco 64706 500W 220V R7S ', NULL, 25, 28.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(73, '73', 'haloline ', NULL, 25, 28.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(74, '74', 'Linterna Extensible 3Led c/ Pila Diamante', NULL, 205, 235.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(75, '75', 'Lampara Led Globe G45-II 5,5W 6400K E27 Werke', NULL, 42, 48.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(76, '76', 'Cable 250V 10A 2 pines c/ Ranura 8 Importadora ja', NULL, 73, 83.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(77, '77', 'Cable 3RCA -3RCA 5Mts Importadora JA', NULL, 33, 37.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(78, '78', 'Cable Plug 3,5st - 2RCA Macho 1,80mm Importadora ', NULL, 18, 20.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(79, '79', 'Campanilla 10*10 Linea Ext. 10*10 ASC', NULL, 178, 204.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(80, '80', 'Portero Electrico Emb o Ext C/T DP-2S COMMAX', NULL, 888, 1021.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(81, '81', 'Liston LED 8W Interconectable 220V 540mm Luz Dia ', NULL, 141, 162.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(82, '82', 'Pila Chica 2A Alcalina E91 Energizer', NULL, 11, 12.65, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(83, '83', 'Pila Chica 3A Alcalina E92 Energizer', NULL, 13, 14.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(84, '84', 'Pila A76 p/Fotografia Alcalina Energizer', NULL, 9, 10.35, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(85, '85', 'Cablecanal 20*10mm S/Tabique Blancop c/ Adhesivo ', NULL, 26, 29.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(86, '86', 'Cablecanal 18*21mm c Adhesivo color blanco Zoloda', NULL, 36, 41.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(87, '87', 'Curva plana p cablecanal 20*10mm color blanco Zol', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(88, '88', 'TE plana p/ cablecanal 20*10mm color Blanco Zolod', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(89, '89', 'Union recta p/ cablecanal 20*10mm color blanco Zo', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(90, '90', 'Rinconero interno p/ cablecanal 20*10mm color bla', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(91, '91', 'Extremo p/ cablecanal 20*10mm color blanco Zoloda', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(92, '92', 'Curva plana p cablecanal 18*21mm color blanco Zol', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(93, '93', 'Extremo p/ cablecanal 18*21mm color blanco Zoloda', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(94, '94', 'Union recta p/ cablecanal 18*21mm color blanco Zo', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(95, '95', 'TE plana p/ cablecanal 18*21mm color Blanco Zolod', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(96, '96', 'Rinconero interno p/ cablecanal 18*21mm color bla', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(97, '97', 'Esquinero ext p/ cablecanal 18*21mm color blanco ', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(98, '98', 'Esquinero ext p/ cablecanal 20*10mm color blanco ', NULL, 5, 5.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(99, '99', 'Llave TM 2*50A Sicalimit  SIMA', NULL, 224, 257.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(100, '100', 'Llave TM 2*40A Sicalimit  SIMA', NULL, 163, 187.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(101, '101', 'Llave TM 2*15A Sicalimit  SIMA', NULL, 122, 140.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(102, '102', 'Llave TM 2*10A Sicalimit  SIMA', NULL, 122, 140.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(103, '103', 'Llave TM 2*5A Sicalimit  SIMA', NULL, 122, 140.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(104, '104', 'Int. Dif. 2*40 A - Sica', NULL, 521, 599.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(105, '105', 'Llave TM 2*63A K60 C Schneider', NULL, 563, 647.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(106, '106', 'Llave TM 2*50A K60 C Schneider', NULL, 563, 647.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(107, '107', 'Llave TM 2*40A Domae Schneider', NULL, 330, 379.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(108, '108', 'Llave TM 2*32A Domae Schneider', NULL, 310, 356.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(109, '109', 'Llave TM 2*25A Domae Schneider', NULL, 254, 292.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(110, '110', 'Llave TM 2*20A Domae Schneider', NULL, 254, 292.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(111, '111', 'Tapa bastidor 3 mod c/ tornillo 120 tapa blanca s', NULL, 10, 11.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(112, '112', 'Tapa bastidor 3 mod c/ tornillo 120 tapa negra se', NULL, 10, 11.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(113, '113', 'Interruptor unipolar tecla lisa Soma', NULL, 9, 10.35, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(114, '114', 'Mod Tapon Blanco 300 linea 2000 Soma', NULL, 1, 1.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(115, '115', 'Mod toma biuso+tierra 10A 250VCA. 150 linea 2000 ', NULL, 13, 14.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(116, '116', 'Mod punto combinacion 6A*250VCA. 150. Linea 2000 ', NULL, 13, 14.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(117, '117', 'Mod tapon Gris 300 linea 2000. SOMA', NULL, 1, 1.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(118, '118', 'Mod toma biuso+tierra 10A 250VCA. 150 linea 2000 ', NULL, 13, 14.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(119, '119', 'Mod punto combinacion 6A*250VCA. 150. Linea 2000 ', NULL, 13, 14.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(120, '120', 'Mod toma+tierra 20A 250VCA 50 Linea 2000 - Blanco', NULL, 25, 28.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(121, '121', 'Mod toma+tierra 20A 250VCA 50 Linea 2000 - Negro ', NULL, 25, 28.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(122, '122', 'Ca?o PVC rigido diam 20mm Semipesado - Tubelectri', NULL, 23, 26.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(123, '123', 'Ca?o PVC rigido diam 25mm Semipesado - Tubelectri', NULL, 33, 37.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(124, '124', 'Conector PVC p ca?o Rigido diam 20mm Tubelectric', NULL, 3, 3.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(125, '125', 'Conector PVC p ca?o Rigido diam 25mm Tubelectric', NULL, 8, 9.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(126, '126', 'Union PVC p/ Ca?o rigido diam 20mm Tubelectric', NULL, 2, 2.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(127, '127', 'Union PVC p/ Ca?o rigido diam 25mm Tubelectric', NULL, 3, 3.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(128, '128', 'Curva 20mm diam interno 20mm Tubelectric', NULL, 7, 8.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(129, '129', 'Curva 25mm diam interno 25mm Tubelectric', NULL, 10, 11.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(130, '130', 'Adhesivo sellador p/ca?os y accesorios 100ml tube', NULL, 41, 47.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(131, '131', 'Bastidor BO 5*10 3Mod Jeluz', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(132, '132', 'Tapa platinum 5*10cm 3mod blanco - jeluz', NULL, 7, 8.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(133, '133', 'Mod Punto Unip. 220V 10A Platinum Blanco - Jeluz', NULL, 11, 12.65, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(134, '134', 'Mod Tapon ciego platinum blanco - jeluz', NULL, 1, 1.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(135, '135', 'Mod Toma Biuso 10A Bip+Tierra tipo 250VCA Platinu', NULL, 11, 12.65, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(136, '136', 'Mod. Punto combinacion Unip. 220V 10A Platinum Bl', NULL, 13, 14.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(137, '137', 'Mod Toma 20Abip + tierra 250V 20A platinum Blanco', NULL, 23, 26.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(138, '138', 'Ca?o corrugado - uso electrico 1 - 25M tecnocom', NULL, 6, 6.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(139, '139', 'Ca?o corrugado - uso electrico 3/4 - 25M tecnocom', NULL, 4, 4.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(140, '140', 'Ca?o corrugado Blanco PVC liviano diam 7/8 tubele', NULL, 4, 4.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(141, '141', 'Caja luz 5*5 Mignon chapa 20- Emec', NULL, 7, 8.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(142, '142', 'Caja luz 10*5  chapa 20- Emec', NULL, 7, 8.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(143, '143', 'Caja luz 10*10 chapa 20- Emec', NULL, 17, 19.55, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(144, '144', 'Caja de luz octogonal chica 7*7 - chapa 20  - EME', NULL, 7, 8.05, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(145, '145', 'Caja de luz octogonal grande 9*9 - chapa 20  - EM', NULL, 17, 19.55, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(146, '146', 'Caja de luz 10*5*7 profunda CH20 blanca -? ARLEN', NULL, 20, 23, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:23'),
(147, '147', 'Adaptador 2 A 3', NULL, 11, 12.65, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(148, '148', 'Ficha Hembra Bipolar', NULL, 8, 9.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(149, '149', 'Ficha Macro Bipolar', NULL, 8, 9.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(150, '150', 'cable tv rg 59', NULL, 652, 749.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(151, '151', 'cable tv rg6 0', NULL, 695, 764.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(152, '152', 'portatil reforsada para autos 5 mts', NULL, 215, 236.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(153, '153', 'portatil para auto led', NULL, 298, 327.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(154, '154', 'cable portero 2 pares', NULL, 161, 177.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(155, '155', 'cable telefono alarma  1 par ', NULL, 219, 240.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(156, '156', 'foco para reflector 9 w 118mm calida alic', NULL, 662, 728.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(157, '157', 'foco para reflector 5 w 78 mm alic', NULL, 587, 645.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(158, '158', 'luz de hemergencia 90 led ', NULL, 606, 666.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(159, '159', 'luz de emergencia 60 led', NULL, 591, 650.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(160, '160', 'derivador cable video 3 vias ', NULL, 191, 210.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(161, '161', 'derivador 4 vias ', NULL, 295, 324.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(162, '162', 'tapa telefono 1 hembra', NULL, 123, 135.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(163, '163', 'tapa telefono dos hembra', NULL, 164, 180.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(164, '164', 'macho cable video rg 6', NULL, 54, 59.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(165, '165', 'macho cable video rg 59', NULL, 54, 59.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(166, '166', 'ficha hembra para telefono ', NULL, 104, 114.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(167, '167', 'florecentezocalo termoplast hierro con click', NULL, 66, 72.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(168, '168', 'portatil reforsada', NULL, 160, 176, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(169, '169', 'zapatilla grande ', NULL, 128, 140.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(170, '170', 'caja estanca pvc blanca c tapa 115x115x65', NULL, 68, 74.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(171, '171', 'caja estanca pvc con proctector uv 115x115x81', NULL, 113, 124.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(172, '172', 'caja estanca pvc 166x122x67', NULL, 132, 145.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(173, '173', 'grampas pvc ajustable 3/4', NULL, 1067, 1173.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(174, '174', 'grampas ajustables pvc 1   25 mm', NULL, 430, 473, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(175, '175', 'capacitores ventilador 2.5 uf', NULL, 660, 726, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(176, '176', 'pumteras tuvulares 1 mm roja', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(177, '177', 'punteras tuvulares 1,5 negra', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(178, '178', 'punteras tuvulares 4 mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(179, '179', 'punteras tuvulares 6 mm verde', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(180, '180', 'punteras aisladas 2.5', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(181, '181', 'foco led werke 12 wat luz fria ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(182, '182', 'foco led werke 12 waths luz calida', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(183, '183', 'conectores hierro  3/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(184, '184', 'conector hierro 1  ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(185, '185', 'conector hierro 7/8', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(186, '186', 'caja pvc exterior 1 a 2 polos ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(187, '187', 'gabinetes metalicos para enbutir 1 x4 ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(188, '188', 'gabinetes metalicos para enbutir 1 x6', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(189, '189', 'caja pvc exterior 8 bocas 4 vi polar ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(190, '190', 'caja pvc exterior 4/8 polos', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(191, '191', 'ojitos de buey lente ambar', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(192, '192', 'ojitos de buey lente verde', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(193, '193', 'tuvo led 18 w 1.20 mts largo', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(194, '194', 'dicroica led 5 w alic', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(195, '195', 'dicroica led 7 w candil', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(196, '196', 'dicroica 5 w philips', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(197, '197', 'ca?o pvc rigido 20 mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(198, '198', 'ca?o pvc rigido 25 mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(199, '199', 'cable canal 20 x10', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(200, '200', 'cable 16 mm rojo', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(201, '201', 'cable canal 18 21', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, '2017-03-04 18:42:23'),
(202, '202', 'Martillo carpintero N?25 c/ u?a,"113', NULL, 56, 78.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(203, '203', 'Cortafrio Chato 12*22*300mm', NULL, 68, 95.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(204, '204', 'Cinta empaque trasnp 48*40Mts(36) TACSA', NULL, 28, 39.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(205, '205', 'Disco corte plano Rhein 180*2*22 OA', NULL, 26, 36.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(206, '206', 'Disco de corte 115*1,6 OA sin par 60222', NULL, 13, 18.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(207, '207', 'Aluminio Minist. Pulido P/Med x12Unid', NULL, 377, 527.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(208, '208', 'Goma p/valvula canilla 1/2" GO02', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:23'),
(209, '209', 'Valvula estampada 3/4" C/ goma VG03', NULL, 4, 5.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(210, '210', 'Clavo c/perdida 9*25 PQTE x1KG', NULL, 50, 70, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(211, '211', 'Clavo punta paris 2" x 1KG', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(212, '212', 'Bulon c Hexagon. Galvanizado 1/4 *3 X100u', NULL, 168, 235.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(213, '213', 'Bulon c Hexagon. Galvanizado 1/4 *2 X100u', NULL, 107, 149.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(214, '214', 'Bulon c Hexagon. Galvanizado 1/4 *1,1/2 X100u', NULL, 86, 120.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(215, '215', 'Bulon c Hexagon. Galvanizado 1/4 * 3/4 X100u', NULL, 54, 75.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(216, '216', 'Cab. Red Galvan. 6,5 *1,1/2 x 100u', NULL, 124, 173.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(217, '217', 'Cab. Red Galvan. 6,5 *1 x 100u', NULL, 107, 149.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(218, '218', 'Tanque Galv. 3/16 * 2,3/4 S/T x 100u', NULL, 122, 170.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(219, '219', 'Tanque Galv. 3/16 * 2 S/T x 100u', NULL, 95, 133, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(220, '220', 'Tanque Galv. 3/16 * 1 S/T x 100u', NULL, 66, 92.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(221, '221', 'Rueda PVC p/cortadora 135*35*3/8 (55)', NULL, 20, 28, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(222, '222', 'Rueda PVC p/cortadora 110*25*3/8 (40)', NULL, 12, 16.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(223, '223', 'Llave T 08mm Rhein STD', NULL, 54, 70.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(224, '224', 'Llave T 10mm Rhein STD', NULL, 57, 74.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(225, '225', 'Llave T 13mm Rhein STD', NULL, 71, 92.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(226, '226', 'Cinta metrica 5*16mm retroblock 505evel', NULL, 93, 120.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(227, '227', 'Cinta metrica 3*16mm ecoflex (s/fr) 103n ', NULL, 58, 75.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(228, '228', 'Cinta metrica 10*11mm profes. 210evel', NULL, 159, 206.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(229, '229', 'Cristal p soldar Rect. N?11 0142', NULL, 5, 6.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(230, '230', 'Cristal p soldar Rect. Transp.   0177', NULL, 2, 2.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(231, '231', 'Elect. P Azul 2,5mm x5kgrs (25) Sideral', NULL, 297, 415.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(232, '232', 'Elect. P Azul 3,2mm x5kgrs (25) Sideral', NULL, 267, 373.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(233, '233', 'Bulon c/hexag galv. 5/16 *1  x 100u', NULL, 90, 126, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(234, '234', 'Bulon c/hexag galv. 5/16 *2  x 100u', NULL, 146, 204.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(235, '235', 'Bulon c/hexag galv. 5/16 *1,1/2  x 100u', NULL, 120, 168, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(236, '236', 'martillo minera 1250grs c/cabo', NULL, 104, 135.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(237, '237', 'martillo minera 750grs c/cabo', NULL, 81, 105.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(238, '238', 'Martillo carpintero N?25', NULL, 95, 123.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(239, '239', 'Cabo maza 0,30mt p/ 1,0kg', NULL, 10, 14, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(240, '240', 'Cabo maza 0,35mt p/ 2,0kg', NULL, 10, 14, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(241, '241', 'Escal. Familiar Saligna 4esc/0,96mts', NULL, 265, 344.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(242, '242', 'Escal pintor Saligna 6 Esc./1,80mts', NULL, 605, 786.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(243, '243', 'Valvula canilla  estampada 1/2" C/ goma VG02', NULL, 3, 4.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(244, '244', 'Cerradura Andif 855 D/P 2*24*222', NULL, 189, 245.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(245, '245', 'Cerradura Andif 852 D/P 2*24*216', NULL, 189, 245.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(246, '246', 'Tor. Wafer P/M C/tque 8*3/4" x 1000 HGR', NULL, 376, 526.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(247, '247', 'Tor. Wafer P/M C/tque 8*1/2" x 1000 HGR', NULL, 292, 408.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(248, '248', 'Cabo hacha tumba 0,9mt', NULL, 57, 74.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(249, '249', 'Cabo pico 0,90mts premium   BREM', NULL, 77, 100.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(250, '250', 'Tender 9Var. C/Alas Ref: Luque', NULL, 376, 526.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(251, '251', 'Esta?o p soldar al 50% blister x10unid', NULL, 160, 224, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(252, '252', 'Arand. Plana Zinc 3/8', NULL, 48, 67.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(253, '253', 'Arand. Plana Zinc 5/16', NULL, 51, 71.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(254, '254', 'Arand. Plana Zinc 1/4', NULL, 57, 79.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(255, '255', 'Tuerca whit 1/4 Galv. Alta BO x 100u', NULL, 26, 36.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(256, '256', 'Tuerca whit 3/16 Galv. Alta BO x 100u', NULL, 20, 28, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(257, '257', 'Tuerca whit 5/16 Galv. Alta BO x 100u', NULL, 39, 54.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(258, '258', 'Delantal cuero c refuerzo CUPA', NULL, 191, 267.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(259, '259', 'Guante descartable corto Ref CUPA', NULL, 41, 57.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(260, '260', 'Fratacho c/goma espuma 20cms (24) voss', NULL, 17, 23.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(261, '261', 'Fratacho c/goma espuma 25cms (24) voss', NULL, 19, 26.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(262, '262', 'Tijera c/cercos 30cms c/mad "tramon"', NULL, 111, 144.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(263, '263', 'Alambre p/atar N?16 10*1kgs', NULL, 444, 577.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(264, '264', 'Alambre galvanizado fino N?18 rollo *2kgrs', NULL, 129, 167.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(265, '265', 'Sierra(vastago) copa bi-met. 3/8" A1 14-30', NULL, 120, 156, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(266, '266', 'Sierra(vastago) copa bi-met. 7/16 A2 32-200', NULL, 147, 191.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(267, '267', 'Sierra copa bi-metal 30mm rhein', NULL, 107, 139.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(268, '268', 'Sierra copa bi-metal 44mm rhein', NULL, 132, 171.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(269, '269', 'Sierra copa bi-metal 60mm rhein', NULL, 172, 223.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(270, '270', 'Sierra copa bi-metal 89mm rhein', NULL, 269, 349.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(271, '271', 'Cinta peligro 0,8*100mts SZ1001', NULL, 29, 37.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(272, '272', 'Tensor O/G 1/4 60mm', NULL, 12, 15.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(273, '273', 'Mosqueton a boton cromado grande N?5', NULL, 26, 33.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(274, '274', 'Embudo plastico mediano 13cms', NULL, 7, 9.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(275, '275', 'Embudo plastico grande 16cms', NULL, 11, 14.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(276, '276', 'Lapiz carpintero 18cms ROTTW x12u', NULL, 52, 67.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(277, '277', 'Grampa cable N?10chato caja 50u', NULL, 23, 29.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(278, '278', 'Grampa cable N?12chato caja 20u', NULL, 18, 23.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(279, '279', 'Eslinga acero p/motos tipo Piton ', NULL, 157, 204.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(280, '280', 'Disco 230/9,0" rhein 3en1', NULL, 326, 423.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(281, '281', 'Mecha ezeta widia p/pared 10mm corta', NULL, 41, 53.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(282, '282', 'Mecha ezeta widia p/pared 12mm corta', NULL, 53, 68.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(283, '283', 'Tirafondo zinc 5/16 *3" x 100unid', NULL, 197, 256.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(284, '284', 'Tirafondo zinc 5/16 *3,1/2" x 100unid', NULL, 247, 321.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(285, '285', 'Calentador p/Termo Blindado', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(286, '286', 'Barral extensible 1-2mts p/ba?o natural', NULL, 53, 68.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(287, '287', 'Barral extensible 1-2mts p/ba?o color', NULL, 73, 94.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(288, '288', 'Barral extensible 2,2mts p/ba?o natural', NULL, 66, 85.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(289, '289', 'Cinta p sillones plast. Rollo *100mts', NULL, 287, 373.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(290, '290', 'Escalera pintor Saligna 8 escalones - 2,4mts', NULL, 824, 1071.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(291, '291', 'Escalera familiar Saligna 8 escalones - 1,9mts', NULL, 541, 703.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(292, '292', 'Ca?o cortina H? Dorado 1/2" * 4mts', NULL, 47, 61.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(293, '293', 'Ca?o cortina H? Dorado 5/8" * 4mts', NULL, 62, 80.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(294, '294', 'Ca?o cortina oval Dorado * 4mts', NULL, 110, 143, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(295, '295', 'Arandela chapa/goma 14*16mm x1000', NULL, 354, 460.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(296, '296', 'Tor. Autop. Pta mecha 14*2" T1 *1000', NULL, 1707, 2219.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(297, '297', 'Zocalo blanco PVC 100cms', NULL, 20, 26, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(298, '298', 'Zocalo Alum. 80cmts', NULL, 22, 28.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(299, '299', 'Tanque galvanizado 3/16*3 S/T *100u', NULL, 142, 184.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(300, '300', 'Contratuerca recta 115/180mm p/amol.', NULL, 51, 66.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(301, '301', 'Base heladera red economica', NULL, 16, 20.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(302, '302', 'Tapa goma universal p piletas', NULL, 3, 3.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(303, '303', 'Crema limpiamanos 500grs Daytona', NULL, 47, 61.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(304, '304', 'Protector auditivo tipo orejera', NULL, 155, 201.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(305, '305', 'Soporte Hierro 1/2" bronce med. *50Unid', NULL, 276, 358.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(306, '306', 'Soporte Hierro 5/8" bronce med. *50Unid', NULL, 312, 405.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(307, '307', 'Soporte H lateral Oval 1/2 - 3/4" Bronce', NULL, 3, 3.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(308, '308', 'Terminal plastica 1/2" Dorado *100unid', NULL, 253, 328.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(309, '309', 'Terminal plastica 5/8" Dorado *100unid', NULL, 462, 600.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(310, '310', 'Candado titanio 50mm 280grs "proll"', NULL, 74, 96.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(311, '311', 'Candado titanio 60mm  415grs "proll"', NULL, 95, 123.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(312, '312', 'Cortina tiras plastico 80cms', NULL, 36, 46.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(313, '313', 'Disco corte 115*1,2 OA sin par', NULL, 14, 18.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(314, '314', 'Disco corte 230*1,8 OA sin par', NULL, 35, 45.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(315, '315', 'Rueda carretilla 310*60*5/8 maciza', NULL, 88, 114.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(316, '316', 'Balde plast alba?il negro LIO*12', NULL, 372, 483.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(317, '317', 'Soga polip 12mm RO * 100mts', NULL, 672, 873.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(318, '318', 'Escalera aluminio mult-funcion 3,7mts max', NULL, 1936, 2516.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(319, '319', 'Escalera H Tubular 6 escal. 1,5mts', NULL, 1391, 1808.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(320, '320', 'Cinta papel 48*50mts', NULL, 89, 115.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(321, '321', 'Rueda goma llanta chapa 100-27-15', NULL, 57, 74.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(322, '322', 'Estopa blanca competicion paq 300grs', NULL, 16, 20.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(323, '323', 'Pinza zacabocados cromada 9"', NULL, 101, 131.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(324, '324', 'Cinta aislante 15 plus pvc 20mts', NULL, 18, 23.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(325, '325', 'Cinta aislante flex-pro 19*10mts', NULL, 15, 19.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(326, '326', 'Tijera hojalatero 250mm', NULL, 95, 123.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(327, '327', 'Linga p/bici c/ candado 12mm * 1,2mtrs braco', NULL, 77, 100.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(328, '328', 'Protector endoaural cordel ', NULL, 7, 9.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(329, '329', 'Anteojo policarbonato cristal', NULL, 25, 32.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(330, '330', 'Anteojo policarbonato ambar', NULL, 25, 32.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(331, '331', 'Anteojo policarbonato Fume', NULL, 25, 32.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(332, '332', 'Llave T 11mm rhein', NULL, 62, 80.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(333, '333', 'Llave T 12mm rhein', NULL, 65, 84.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(334, '334', 'Sierra broca DTE/WIDIA 60mm rhein', NULL, 206, 267.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(335, '335', 'Sierra broca DTE/WIDIA 80mm rhein', NULL, 309, 401.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(336, '336', 'Eje sierra broca DTE/WIDIA SDS plus 220mm', NULL, 168, 218.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52');
INSERT INTO `articulos` (`ID`, `BARRAS`, `NOMBRE`, `SERVICIO`, `COSTO`, `PRECIO`, `MINIMO`, `STOCK`, `PROVEEDOR`, `RUBRON`, `ALTA`, `INHABILITADO`, `idRubro`, `equivalencia`, `modificaPrecio`, `modificaServicio`, `recargo`, `servicio1`, `idcombo`, `actualizacion`, `fecha`) VALUES
(337, '337', 'Serrucho poda curvo NEIKE', NULL, 78, 101.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(338, '338', 'Cadena Patente N? 040 pulida caja * 12,50kgs', NULL, 1324, 1721.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(339, '339', 'Cadena Patente N? 050 pulida caja * 12,50kgs', NULL, 965, 1254.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(340, '340', 'Tirafondo Zinc 1/4 *2x100unid', NULL, 101, 131.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(341, '341', 'Tirafondo Zinc 1/4 3x100unid', NULL, 135, 175.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(342, '342', 'Tirafondo Zinc 1/4 4x100unid', NULL, 173, 224.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(343, '343', 'Alambre Galv Fino N? 18 Rollo *2Kgrs', NULL, 133, 172.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(344, '344', 'Bulon c/hexag. Galv 3/8 *1 x 100u', NULL, 153, 198.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(345, '345', 'Bulon c/hexag. Galv 3/8 *1,1/2 x 100u', NULL, 209, 271.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(346, '346', 'Bulon c/hexag. Galv 7/6 *1 x 100u', NULL, 238, 309.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(347, '347', 'Bulon c/hexag. Galv 7/6 *1,1/2 x 100u', NULL, 309, 401.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(348, '348', 'Manija puente 4" caja *12unid', NULL, 46, 50.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(349, '349', 'Torn aterrajador (4,2*12) 8*1/2" (xunidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(350, '350', 'Torn aterrajador (4,2*19) 8 * 3/4" (Xunidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(351, '351', 'Torn aterrajador (4,8 *12) 10*1/2" (Xunidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(352, '352', 'Arandela bombe chapa galv p/gancho techo *185', NULL, 118, 177, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(353, '353', 'Arandela plana 3/4 caja *2kgs', NULL, 153, 229.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(354, '354', 'Arandela plana 5/8" caja x2Kg', NULL, 153, 229.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(355, '355', 'Gancho techo 50mm bolsa x 200', NULL, 216, 324, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(356, '356', 'Gancho techo 70mm bolsa x 200', NULL, 244, 366, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(357, '357', 'Torn autoper c/hexag a vul(6,3*25) 14*1 x unidad', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(358, '358', 'Torn autoperforante cabeza tque 8*1 x unid', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(359, '359', 'Torn autoperforante cabeza tque 8*1/2 x unid', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(360, '360', 'Torn drywall p grueso 10*2 x  unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(361, '361', 'Torn drywall p grueso 6*1 1/2  x  unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(362, '362', 'Torn drywall p.grueso 6*1 1/4 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(363, '363', 'Torn drywall p. grueso 6*1 5/8 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(364, '364', 'Torn Drywall p. grueso  6*1 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(365, '365', 'Torn Drywall p. grueso  6*2 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(366, '366', 'Torn Fix 3*16 x unid', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(367, '367', 'Torn Fix 3*13 x unid', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(368, '368', 'Torn Fix 4,5*25 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(369, '369', 'Torn Fix 4,5*30 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(370, '370', 'Torn Fix 4,5 *35 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(371, '371', 'Torn Fix 6*90 x unidad', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(372, '372', 'Varilla roscada x 1mts 1/2"', NULL, 47, 51.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(373, '373', 'Varilla roscada x 1mts 1/4"', NULL, 11, 12.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(374, '374', 'Varilla roscada x 1mts 3/16"', NULL, 11, 12.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(375, '375', 'Varilla roscada x 1mts 3/8"', NULL, 26, 28.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(376, '376', 'Varilla roscada x 1mts 5/16"', NULL, 18, 19.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(377, '377', 'Varilla roscada x 1mts 7/16"', NULL, 37, 40.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(378, '378', 'Cinta papel 18mmx50mts', NULL, 39, 42.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(379, '379', 'Cinta papel 24mm x 50 mts', NULL, 52, 57.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(380, '380', 'Cinta papel 36mm x50mts', NULL, 82, 90.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(381, '381', 'Espuma poliuretano Unifix x500cc', NULL, 148, 162.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(382, '382', 'Media  sombra gris 90% Gold x 50mts', NULL, 5148, 6692.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(383, '383', 'Soldador electrico 40watts', NULL, 47, 51.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(384, '384', 'tanza para bordeadora redonda de 1.5 mm x kg', NULL, 348, 382.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(385, '385', 'tanza para bordeadora redonda de 2,0 mm x kg', NULL, 348, 382.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(386, '386', ' tanza para bordeadora redonda de 2,5mm x kg', NULL, 348, 382.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(387, '387', 'torn aterrajador(3,5x16)6x5/8 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(388, '388', 'torn aterrajador(3.9x12) 7x1/2 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(389, '389', 'torn aterrajador(3,9x19)7x3/4 x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(390, '390', 'Torn aterrajador(3,9x22)  7x7/8 (xunidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(391, '391', 'Torn aterrajador (3,9x25) 7x1 (x unidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(392, '392', 'Torn aterrajador (3,9x32) 7xz1 1/4 (xunidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(393, '393', 'Torn aterrajador (3,9x9)  7 x 3/8" (x unidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(394, '394', 'Torn aterrajador (4,2 x 16 ) 8x5/8" (x unidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(395, '395', 'Torn aterrajador (4,2x25)  8x 1" (x unidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(396, '396', 'Torn aterrajador ( 4,2 x 32 ) 8 x 1 1/4 (x unidad', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(397, '397', 'Torn aterrajador (4,8x 32) 10x 1 1/4 (x unidad)', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(398, '398', 'Torniqueta mini', NULL, 27, 35.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(399, '399', 'Arandela plana 1/4" caja x 2kgrs', NULL, 219, 328.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(400, '400', 'Arandela plana 1/8 caja x 2 kgrs', NULL, 377, 565.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(401, '401', 'Arandela plana 3/16" caja x 2kgrs', NULL, 278, 417, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(402, '402', 'Arandela plana 3/8" caja x 2kgrs', NULL, 164, 246, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(403, '403', 'Remaches rapidos 4x24 ( caja x 1000)', NULL, 763, 1144.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(404, '404', 'Remaches rapidos 4,8x28 caja x 500', NULL, 541, 811.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(405, '405', 'Tirafondo 1/4 x 30mm x unidad', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(406, '406', 'Tirafondo 1/4 x 40mm x unidad', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(407, '407', 'Tirafondo 5/16 x 30mm x unidad', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(408, '408', 'Tirafondo 5/16 x 40mm x unidad', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(409, '409', 'Tirafondo 5/16 x 40mm x unidad', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(410, '410', 'Tirafondo 5/16 x 50mm x unidad', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(411, '411', 'Tirafondo 5/16 x 60mm x unidad', NULL, 3, 4.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(412, '412', 'Tirafondo 5/16 x 70mm x unidad', NULL, 3, 4.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(413, '413', 'Tirafondo 5/16 x 80mm x unidad', NULL, 3, 4.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(414, '414', 'Tirafondo 5/16 x 90mm x unidad', NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(415, '415', 'Tirafondo 3/16 x 50mm x unidad', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(416, '416', 'Tirafondo 3/8 x 50mm x unidad', NULL, 3, 4.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(417, '417', 'Tirafondo 3/8 x 75mm x unidad', NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(418, '418', 'Tirafondo 3/8 x 125mm x unidad', NULL, 7, 10.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(419, '419', 'Tirafondo 3/16 x 40mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(420, '420', 'Tirafondo 3/16 x 60mm', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(421, '421', 'Tirafondo 3/16 x 65mm', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(422, '422', 'Tirafondo 3/16 x 75mm', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(423, '423', 'Tirafondo 3/8 x120mm', NULL, 7, 10.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(424, '424', 'Torn aterrajador (4,8 x 25) 10*1" ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(425, '425', 'Torn aterrajador (5,5*12) 12x1/2"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(426, '426', 'Torn aterrajador (5,5 x25) 12*1"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(427, '427', 'Torn aterrajador (6,3x38) 14 x1 1/2"', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(428, '428', 'Torn autop c/ hexag a vul (6,3x76) 14x3', NULL, 3, 4.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(429, '429', 'Tuerca galvanizada 7/16"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(430, '430', 'Torn autop c/ hexag a vul (6,3x50) 14x2', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(431, '431', 'Torn autop c/ hexag a vul (6,3x63) 14x2 1/2', NULL, 3, 4.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(432, '432', 'Torn fix 3x20', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(433, '433', 'Torn fix 3*25', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(434, '434', 'Torn fix 3*30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(435, '435', 'Torn fix 3,5*12', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(436, '436', 'Torn fix 3,5*16', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(437, '437', 'Torn fix 3,5*20', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(438, '438', 'Torn fix 3,5*25', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(439, '439', 'Torn fix 3,5*30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(440, '440', 'Torn fix 3,5*35', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(441, '441', 'Torn fix 3,5*40', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(442, '442', 'Torn fix 4*15', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(443, '443', 'Torn fix 4*20', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(444, '444', 'Torn fix 4*25', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(445, '445', 'Torn fix 4*30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(446, '446', 'Torn fix 4*35', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(447, '447', 'Torn fix 4*40', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(448, '448', 'Torn fix 4*45', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(449, '449', 'Torn fix 4*50', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(450, '450', 'Torn fix 4,5*40', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(451, '451', 'Torn fix 4,5*45', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(452, '452', 'Torn fix 4,5*50', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(453, '453', 'Torn fix 4,5*60', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(454, '454', 'Torn fix 5*40', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(455, '455', 'Torn fix 5*60', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(456, '456', 'Torn fix 5*70', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(457, '457', 'Torn fix 5*35', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(458, '458', 'Torn fix 6*40', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(459, '459', 'Torn fix 6*50', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(460, '460', 'Torn fix 6*60', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(461, '461', 'Torn fix 6*70', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(462, '462', 'Torn fix  6*80', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(463, '463', 'Torn drywall P grueso 10x1,1/2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(464, '464', 'Torn drywall P grueso 10x1,3/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(465, '465', 'Torn drywall p grueso 10 x 2,1/2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(466, '466', 'Torn drywall p grueso 6x3/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(467, '467', 'Torn drywall p gruesa 8x 1', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(468, '468', 'Torn drywall p gruesa 8x 1,1/2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(469, '469', 'Torn drywall p gruesa 8x 1,3/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(470, '470', 'Torn drywall p grueso 8x2,1/2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(471, '471', 'Torn drywall p grueso 8x2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(472, '472', 'Torn drywall p grueso 8x3', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(473, '473', 'Tirafondo 3/8 x100mm', NULL, 6, 9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(474, '474', 'Torn aterrajador (4,8*50) 10x2', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(475, '475', 'Torn aterrajador (5,5x19) 12x3/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(476, '476', 'Torn fix 4,5*35', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(477, '477', 'Torn fix 5*80', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(478, '478', 'Torn aterrajador (4,8*19) 10*3/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(479, '479', 'Torn aterrajador (4,8*25) 10x1"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(480, '480', 'Torn aterrajador (2,9*12) 4x1/2"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(481, '481', 'Torn aterrajador ( 2,9*9) 4x3/8', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(482, '482', 'Torn aterrajador ( 3,5*12) 6x1/2"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(483, '483', 'Torn aterrajador ( 3,5*19) 6x3/4"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(484, '484', 'Torn aterrajador ( 3,5*25) 6x1"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(485, '485', 'Torn aterrajador (3,5*9) 6x 3/8"', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(486, '486', 'Torn aterrajador ( 4,8x12) 10*1/2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(487, '487', 'Torn aterrajador (4,8*16) 10*5/8', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(488, '488', 'Torn aterrajador (4,8*22) 10*7/8', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(489, '489', 'Torn aterrajador (5,5*32) 12*1,1/4', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(490, '490', 'Torn cabeza tanque galv. 3/16 *3/8 ', NULL, 34, 51, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(491, '491', 'Torn drywall p grueso 10x3', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(492, '492', 'Torn drywall p grueso  6x2  1/4', NULL, 1, 1.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(493, '493', 'torn drywall p grueso 8x1  1/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(494, '494', 'Tuerca galv 1/4', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(495, '495', 'Tuerca galv. 3/16', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(496, '496', 'Tuerca galv. 3/8', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(497, '497', 'Tuerca galv 5/16', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:23'),
(498, '498', 'Remache rapido 4*10', NULL, 383, 574.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(499, '499', 'Remache rapido 4*12', NULL, 406, 609, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(500, '500', 'Remache rapido 4*14', NULL, 436, 654, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(501, '501', 'Remache rapido 4*16', NULL, 468, 702, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(502, '502', 'Remaches rapido 4*19', NULL, 510, 765, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(503, '503', 'Remache rapido 4,8*8', NULL, 301, 451.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(504, '504', 'Remache rapido 4,8*10', NULL, 311, 466.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(505, '505', 'remache rapido 4,8*12', NULL, 326, 489, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(506, '506', 'Remache rapido 4,8*14', NULL, 346, 519, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(507, '507', 'Remache rapido 4,8*20', NULL, 433, 649.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(508, '508', 'Remache rapido 3,5*6', NULL, 290, 435, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(509, '509', 'Remache rapido 3,5*8', NULL, 305, 457.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(510, '510', 'Remache rapido 3,5*10', NULL, 319, 478.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(511, '511', 'Remache rapido 3,5*12', NULL, 341, 511.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(512, '512', 'Remache rapido 3,5*14', NULL, 361, 541.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(513, '513', 'remache rapido 3,5*16', NULL, 385, 577.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(514, '514', 'Remache rapido 3,5*19', NULL, 431, 646.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(515, '515', 'Rastrillo metalico ', NULL, 90, 99, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(516, '516', 'Bisagra T 3*24', NULL, 187, 205.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(517, '517', 'trincheta retractil 18mm', NULL, 21, 23.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(518, '518', 'Aspersor jabalina metalica', NULL, 400, 440, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(519, '519', 'Aspersor jabalina plastica', NULL, 135, 148.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(520, '520', 'Chupete p canilla de 1/2', NULL, 9, 9.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(521, '521', 'Lanza riego ', NULL, 43, 47.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(522, '522', 'Pistola comun', NULL, 60, 66, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(523, '523', 'Pistola comun 6 funciones', NULL, 130, 143, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(524, '524', 'Sapito de riego', NULL, 16, 17.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(525, '525', 'Soporte estante negro 100*125', NULL, 8, 8.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(526, '526', 'Soporte estante negro 125*150', NULL, 10, 11, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(527, '527', 'Soporte estante negro 150*200', NULL, 14, 15.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(528, '528', 'Soporte estante negro 200*250', NULL, 22, 24.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(529, '529', 'Soporte estante negro 300*350', NULL, 38, 41.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(530, '530', 'Tachas bronceadas 1000unid', NULL, 191, 210.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(531, '531', 'Tachas niqueladas 1000unid', NULL, 191, 210.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(532, '532', 'Tachuelas 12-5/8 x 16mm', NULL, 67, 73.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(533, '533', 'Tachuela N?14 - 3/4 x 19mm', NULL, 67, 73.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(534, '534', 'Tachuela N?6 -1/2 x 13mm', NULL, 67, 73.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(535, '535', 'Tela metalica mosquitero 80*100', NULL, 46, 50.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(536, '536', 'Tela metalica mosquitero 100*100', NULL, 54, 59.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(537, '537', 'Teflon 1/2 x 10mts', NULL, 5, 5.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(538, '538', 'Teflon 3/4 x 10 mts', NULL, 7, 7.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(539, '539', 'manguera p gas 25mts', NULL, 341, 375.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(540, '540', 'regulador gas c manguera 1 1/2mts', NULL, 171, 188.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(541, '541', 'regulador gas c manguera corta', NULL, 156, 171.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(542, '542', 'regulador s manguera', NULL, 117, 128.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(543, '543', 'Media sombra negra 50mts', NULL, 3200, 3520, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(544, '544', 'Pistola metalica 1 funcion', NULL, 120, 132, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(545, '545', 'Rociador base redondo 8 posic.', NULL, 126, 138.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(546, '546', 'Arco de sierra grande Hobby', NULL, 200, 220, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(547, '547', 'Arco de sierra grande  profesional', NULL, 320, 352, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(548, '548', 'Arco sierra junior profesional', NULL, 140, 154, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(549, '549', 'Arco de sierra junior Hobby', NULL, 120, 132, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(550, '550', 'rastrillo plastico ', NULL, 21, 23.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(551, '551', 'Hoja de sierra junior', NULL, 95, 104.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(552, '552', 'Hoja sierra sin par 24 dientes ', NULL, 332, 365.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(553, '553', 'Hoja sierra sin par 32 dientes', NULL, 332, 365.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(554, '554', 'Manguera riego siliconada verde 1/2 x 25mts', NULL, 300, 330, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(555, '555', 'Manguera riego siliconada verde 1/2 x50mts', NULL, 640, 704, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(556, '556', 'Tarugo anclaje hueco caja 50', NULL, 55, 77, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(557, '557', 'Tarugo n?10 comun bolsa 500', NULL, 287, 430.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(558, '558', 'Tarugo n? 10 c tope bolsa 500', NULL, 378, 567, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(559, '559', 'Tarugo n?12 comun bolsa x 250', NULL, 280, 420, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(560, '560', 'Tarugo n| 5 comun bolsa1000', NULL, 103, 154.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(561, '561', 'Tarugo n?6 comun bolsa 2000', NULL, 284, 426, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(562, '562', 'Tarugo n?6 c tope bolsa 2000', NULL, 400, 600, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(563, '563', 'Tarugo n?8 comun bolsa 1000', NULL, 297, 445.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(564, '564', 'Tarugo n?8 c tope bolsa x1000', NULL, 413, 619.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(565, '565', 'Malla Cerco polipropileno 1,5 x100', NULL, 2900, 4350, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.5, 0, 0, 0, '2017-03-04 18:42:52'),
(566, '566', 'Medio sombra rayada verde blanca 50mts', NULL, 3500, 3850, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(567, '567', 'Cerradura roa caja 65*83 n?801', NULL, 220, 242, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(568, '568', 'Cerradura ROA 65*83 n?802', NULL, 228, 250.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(569, '569', 'Cinta Hiladora 10mts rojo', NULL, 14, 18.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(570, '570', 'Cinta Hiladora 5mts negro', NULL, 7, 9.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(571, '571', 'Cinta multiproposito  9mts (varios colores)', NULL, 80, 104, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(572, '572', 'soga 10 mm x metro', NULL, 580, 638, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(573, '573', 'soga 3 mm x metro', NULL, 184, 202.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(574, '574', 'soga 5 mm x metro', NULL, 225, 247.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(575, '575', 'soga 7 mm x metro', NULL, 330, 363, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(576, '576', 'soga 8 mm x metro', NULL, 370, 407, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(577, '577', 'tejido mosquitero ancho 1.20 por metro', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(578, '578', 'media sombra rayada verde blanca 50 mts ', NULL, 3580, 3938, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(579, '579', 'pileta lavadero grande ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(580, '580', 'pileta  tipo ba?o grande ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(581, '581', 'pileta tipo ba?o chica', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(582, '582', 'nivel aluminio 30 cm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(583, '583', 'nivel aluminio 50 cm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(584, '584', 'grasa 90 grs', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(585, '585', 'grasa 90 grs grafitada', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(586, '586', 'grasa litio 250 grs', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(587, '587', 'tejido pajarera 13  x 1.00x 20 mts', NULL, 800, 1040, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(588, '588', 'tanza bordeadora 2.5 redonda', NULL, 951, 1236.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(589, '589', 'mangera para compresores 8 mm  x 25 mts', NULL, 317, 412.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(590, '590', 'electrodo 2 .o mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(591, '591', 'cinta para ventana  x 50 mts', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(592, '592', 'enrollador para cortina 4 mts', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(593, '593', 'cortina plastica 80 cmts', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(594, '594', 'inflador de mano', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(595, '595', 'cadena nudo n 17 x 30 mts', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(596, '596', 'Aerosol Blanco  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(597, '597', 'Aerosol Amarillo  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(598, '598', 'Aerosol Azul Marino  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(599, '599', 'Aerosol Bermellon  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(600, '600', 'Aerosol Naranja  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(601, '601', 'Aerosol Negro mate  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(602, '602', 'Aerosol Negro  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(603, '603', 'Aerosol Verde Ing.  x 240cc', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(604, '604', 'Aerosol Metalizado Oro x 240cc', NULL, 67, 87.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(605, '605', 'Aerosol Metalizado  Plata x 240cc', NULL, 67, 87.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(606, '606', 'Taladro TM600-ar 13mm-600Watts', NULL, 1009, 1311.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(607, '607', 'Amoladora G720 angular 4,1/2', NULL, 872, 1133.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(608, '608', 'Hidrolavadora PW1370TD 1300W', NULL, 2038, 2649.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(609, '609', 'Bordeadora ST4550-AR 400W', NULL, 1048, 1362.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(610, '610', 'Stanley taladro SDH600 13mm', NULL, 1026, 1333.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(611, '611', 'Amoladora DW D28490-ar Angular 9', NULL, 3247, 4221.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(612, '612', 'Stanley lustralijadora STGP1318K-7', NULL, 2328, 3026.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(613, '613', 'Taladro DWD24-D Perc.-13mm', NULL, 1697, 2206.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(614, '614', 'Stanley rotomartillo STHR1232K-SDS plus', NULL, 3463, 4501.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(615, '615', 'Sierra caladora KS701PEK -AR 550w', NULL, 1324, 1721.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(616, '616', 'Kit BD7260-AR', NULL, 1077, 1400.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(617, '617', 'Hoja s/ caladora DW3710H2-10 DPP-HCS', NULL, 57, 74.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(618, '618', 'Hoja s/ caladora DW3710H2-18 DPP-BM', NULL, 69, 89.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(619, '619', 'Amoladora DWE4010-AR ANG 4,1/2', NULL, 1268, 1648.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(620, '620', 'Amoladora DWE4020-AR ANG 4,1/2', NULL, 1669, 2169.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(621, '621', 'Cortadora DW862BS-AR de concreto', NULL, 2783, 3617.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(622, '622', 'Mecha widia sta larga whl 10*400mm', NULL, 125, 162.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(623, '623', 'Mecha widia sta larga whl 20*400mm', NULL, 139, 180.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(624, '624', 'Isotermico tropical 2lts', NULL, 206, 267.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(625, '625', 'Linterna Value Bright 4AA led lantern', NULL, 173, 224.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(626, '626', 'Linterna R19LED-arg recarg. Y pilas 3AA', NULL, 393, 510.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(627, '627', 'Irimo llave comb. 10mm', NULL, 64, 83.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(628, '628', 'Irimo llave comb. 11mm', NULL, 64, 83.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(629, '629', 'Irimo llave comb. 12mm', NULL, 64, 83.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(630, '630', 'Irimo llave comb. 13mm', NULL, 69, 89.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(631, '631', 'Irimo llave comb. 14mm', NULL, 74, 96.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(632, '632', 'Irimo llave comb. 15mm', NULL, 84, 109.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(633, '633', 'Irimo llave comb. 17mm', NULL, 104, 135.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(634, '634', 'Irimo llave comb. 19mm', NULL, 123, 159.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(635, '635', 'Irimo llave comb. 21mm', NULL, 138, 179.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(636, '636', 'Irimo llave comb. 22mm', NULL, 167, 217.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(637, '637', 'Irimo boc. Hex enc 1/2" 10mm', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(638, '638', 'Irimo boc. Hex enc 1/2" 12mm', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(639, '639', 'Irimo boc. Hex enc 1/2" 11mm', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(640, '640', 'Irimo boc. Hex enc 1/2" 13mm', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(641, '641', 'Irimo boc. Hex enc 1/2" 15mm', NULL, 38, 49.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(642, '642', 'Irimo boc. Hex enc 1/2" 14mm', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(643, '643', 'Irimo boc. Hex enc 1/2" 16mm', NULL, 39, 50.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(644, '644', 'Irimo boc. Hex enc 1/2" 17mm', NULL, 41, 53.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(645, '645', 'Irimo boc. Hex enc 1/2" 18mm', NULL, 46, 59.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(646, '646', 'Irimo boc. Hex enc 1/2" 19mm', NULL, 46, 59.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(647, '647', 'Irimo pinza regulable 634-250-1', NULL, 237, 308.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(648, '648', 'irimo pinza universal 180mm', NULL, 194, 252.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(649, '649', 'Destornillador irimo I4155-100', NULL, 52, 67.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(650, '650', 'Destornillador irimo I4165-150', NULL, 62, 80.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(651, '651', 'Destornillador irimo I4180-150', NULL, 91, 118.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(652, '652', 'Destornillador irimo I4345-100', NULL, 49, 63.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(653, '653', 'Destornillador irimo I4360-125', NULL, 59, 76.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(654, '654', 'Irimo llave ajustable 8"', NULL, 201, 261.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(655, '655', 'Irimo llave ajustable 10"', NULL, 259, 336.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(656, '656', 'Panel irimo servirimo/p (vacio)', NULL, 1, 1.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(657, '657', 'irimo llave p/calos 303111A 1,1/2', NULL, 607, 789.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(658, '658', 'Irimo alicate c/diag 160mm', NULL, 159, 206.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(659, '659', 'Irimo acc. 1/2 crique t/pera qr', NULL, 425, 573.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.35, 0, 0, 0, '2017-03-04 18:42:52'),
(660, '660', 'pinza pico loro metz', NULL, 162, 178.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(661, '661', 'Pinza universal N? 6 metz', NULL, 140, 154, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(662, '662', 'Pinza universal N?7 metz', NULL, 166, 182.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(663, '663', 'Pinza universal N? 8 metz', NULL, 200, 220, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(664, '664', 'Llave ajustable 10? metz', NULL, 218, 239.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(665, '665', 'Llave ajustable 12? metz', NULL, 332, 381.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(666, '666', 'Llave ajustable N?6 metz', NULL, 120, 144, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.2, 0, 0, 0, '2017-03-04 18:42:23'),
(667, '667', 'Llave ajustable N? 8 metz', NULL, 168, 201.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.2, 0, 0, 0, '2017-03-04 18:42:52'),
(668, '668', 'Lave allen llavero x10', NULL, 48, 52.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(669, '669', 'Llave combinado 1/4 Rhein', NULL, 44, 48.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(670, '670', 'Llave combinada 10mm Rhein', NULL, 48, 52.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(671, '671', 'Llave combinada 11mm Rhein', NULL, 52, 57.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(672, '672', 'Llave combinada 12mm Rhein', NULL, 57, 62.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(673, '673', 'Llave combinada 13mm Rheim', NULL, 60, 66, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(674, '674', 'Llave combinada 14mm Rhein', NULL, 65, 71.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(675, '675', 'Llave combinada 15mm Rhein', NULL, 71, 78.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(676, '676', 'Llave combinada 16mm Rhein', NULL, 80, 88, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(677, '677', 'Llave combinada 18mm Rheim', NULL, 97, 106.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(678, '678', 'Llave combinada 19mm Rheim', NULL, 106, 116.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(679, '679', 'Llave combinada 20mm Rhein', NULL, 110, 121, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(680, '680', 'Llave combinada 21mm Rheim', NULL, 116, 127.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(681, '681', 'Llave combinada 5/16 Rhein', NULL, 48, 52.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(682, '682', 'Llave combinada 6 mm Rhein', NULL, 43, 47.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(683, '683', 'Llave combinada 7mm Rheim', NULL, 44, 48.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(684, '684', 'Llave combinada 8mm Rhein', NULL, 45, 49.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(685, '685', 'Llave combinada 9mm Rheim', NULL, 47, 51.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(686, '686', 'Llave TORX - juego 9 piezas', NULL, 111, 122.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(687, '687', 'calisual x 7 unidades', NULL, 150, 165, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(688, '688', 'Llana dentanda 6*6', NULL, 65, 71.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(689, '689', 'Mandril p taladro 13mm  c rosca media', NULL, 157, 172.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(690, '690', 'Mechas 1mm', NULL, 17, 18.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(691, '691', 'Mechas 1 1/2mm', NULL, 17, 18.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30');
INSERT INTO `articulos` (`ID`, `BARRAS`, `NOMBRE`, `SERVICIO`, `COSTO`, `PRECIO`, `MINIMO`, `STOCK`, `PROVEEDOR`, `RUBRON`, `ALTA`, `INHABILITADO`, `idRubro`, `equivalencia`, `modificaPrecio`, `modificaServicio`, `recargo`, `servicio1`, `idcombo`, `actualizacion`, `fecha`) VALUES
(692, '692', 'Mechas 2mm', NULL, 17, 18.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(693, '693', 'Mechas 2,5mm', NULL, 17, 18.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(694, '694', 'Mechas 3mm', NULL, 19, 20.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(695, '695', 'Mechas 3,5mm', NULL, 21, 23.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(696, '696', 'Mechas 4mm ', NULL, 25, 27.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(697, '697', 'Soplete techista 10kgrs 50mm', NULL, 186, 204.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(698, '698', 'Soplete techista 3kgrs 50mm', NULL, 186, 204.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(699, '699', 'tenaza armador n?12 metz', NULL, 130, 143, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(700, '700', 'Tenaza armador n?9 metz', NULL, 148, 162.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(701, '701', 'Tenaza carpintero  n?6 metz', NULL, 105, 115.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(702, '702', 'tenaza carpintero n?7 metz', NULL, 120, 132, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(703, '703', 'tenaza carpinteron ?8metz', NULL, 135, 148.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(704, '704', 'llave ajustable n?15 metz', NULL, 600, 660, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(705, '705', 'Destornillador Philips 5*125 mets', NULL, 58, 66.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(706, '706', 'Destornillador Philips 5*150 mets', NULL, 61, 70.15, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(707, '707', 'Destornillador Philips 5*75 mets', NULL, 45, 51.75, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(708, '708', 'Destornillador Philips 6*100 mets', NULL, 73, 83.95, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(709, '709', 'Destornillador Philips 8*150 mets', NULL, 120, 138, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:23'),
(710, '710', 'Destornillador plano  5*75 mets', NULL, 42, 48.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:42:52'),
(711, '711', 'Destornillador plano 6*125 mets', NULL, 78, 89.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(712, '712', 'Destornillador plano 6*150 mets', NULL, 83, 95.45, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.15, 0, 0, 0, '2017-03-04 18:43:30'),
(713, '713', 'Destornillador plano 8*150 mets', NULL, 114, 125.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(714, '714', 'Disco 3 en 1 180mm Rhein', NULL, 290, 319, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(715, '715', 'Disco segmentado laser 115mm Rhein', NULL, 93, 102.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(716, '716', 'Disco turbo 230mm rhein', NULL, 410, 451, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(717, '717', 'Disco YARD continuo 115mm', NULL, 52, 57.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(718, '718', 'Disco yard continuo 180mm', NULL, 140, 154, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(719, '719', 'Disco YARD segmentado laser 115mm', NULL, 60, 66, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(720, '720', 'Disco YARD segmenatdo laser 180mm', NULL, 160, 176, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(721, '721', 'Disco YARD turbo 4,5 115mm', NULL, 67, 73.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(722, '722', 'soplador stanley', NULL, 782, 1094.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(723, '723', 'discos 115  dw ', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(724, '724', 'disco 180 mm dw', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(725, '725', 'mechas 6 mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(726, '726', 'mecha 8 mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(727, '727', 'mecha 10 mm', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(728, '728', 'torno manual b&d', NULL, 1062, 1380.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(729, '729', 'llaves peros 4 unidades', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(730, '730', 'tf-llave p/pl 20mm tigre', NULL, 255, 331.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(731, '731', 'tf-llave p/pl 25mm tigre', NULL, 272, 353.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(732, '732', 'TF-ca?o  20mm tigre', NULL, 90, 99, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(733, '733', 'TF-ca?o  20 25mm tigre', NULL, 131, 144.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(734, '734', 'TF-ca?o pn 20 32mm tigre', NULL, 204, 224.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(735, '735', 'TF-ca?o pn 20 50mm tigre', NULL, 329, 427.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(736, '736', 'TF-Buje Red plano 50*25mm Tigre', NULL, 14, 18.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(737, '737', 'TF-cupla H 20mm *1/2 tigre', NULL, 22, 28.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(738, '738', 'TF-cupla H 25mm *3/4 tigre', NULL, 32, 41.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(739, '739', 'TF-cupla H 32mm *1 tigre', NULL, 55, 71.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(740, '740', 'TF-cupla H 50mm *1,1/2 tigre', NULL, 226, 293.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(741, '741', 'TF-TE c/reduc cen H 20*1/2 Tigre', NULL, 33, 42.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(742, '742', 'TF-TE c/reduc cen H 25*1/2 Tigre', NULL, 37, 48.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(743, '743', 'TF-codo 90c/reducc M 20*1/2 Tigre', NULL, 25, 32.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(744, '744', 'TF-codo 90c/reduc H 20*1/2 Tigre', NULL, 21, 27.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(745, '745', 'TF-codo 90c/reduc H 25*3/4 Tigre', NULL, 32, 41.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(746, '746', 'TF-codo 90c/reduc H largo 20mm Tigre', NULL, 26, 33.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(747, '747', 'Transicion 20*1/2 H sigas', NULL, 38, 49.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(748, '748', 'Transicion 25*1/2 H sigas', NULL, 43, 55.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(749, '749', 'Transicion 25*3/4 H sigas', NULL, 44, 57.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(750, '750', 'Transicion 20*1/2 M sigas', NULL, 40, 52, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(751, '751', 'Transicion 25*3/4 M sigas', NULL, 48, 62.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(752, '752', 'Union normal 20mm Sigas', NULL, 22, 28.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(753, '753', 'Union normal 25mm Sigas', NULL, 25, 32.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(754, '754', 'Union normal 32mm Sigas', NULL, 28, 36.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(755, '755', 'tubo de 20mm *4M sigas', NULL, 235, 305.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(756, '756', 'tubo de 25mm *4M sigas', NULL, 305, 396.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(757, '757', 'tubo de 32mm *4M sigas', NULL, 465, 604.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(758, '758', 'Codo a 45& 20mm Sigas', NULL, 36, 46.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(759, '759', 'Codo a 45& 25mm Sigas', NULL, 41, 53.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(760, '760', 'Codo a 45& 32mm Sigas', NULL, 49, 63.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(761, '761', 'Codo a 90& 20mm Sigas', NULL, 27, 35.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(762, '762', 'Codo a 90& 25mm Sigas', NULL, 30, 39, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(763, '763', 'Codo a 90& 32mm Sigas', NULL, 45, 58.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(764, '764', 'Codo a 90& 20*1/2 H Sigas', NULL, 50, 65, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(765, '765', 'Codo a 90& 25*1/2 H Sigas', NULL, 56, 72.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(766, '766', 'Codo a 90& 25*3/4 H Sigas', NULL, 73, 94.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(767, '767', 'Codo a 90& 32*3/4 H Sigas', NULL, 67, 87.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(768, '768', 'Te normal 20mm Sigas', NULL, 55, 71.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(769, '769', 'Te normal 25mm Sigas', NULL, 58, 75.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(770, '770', 'Te normal 32mm Sigas', NULL, 73, 94.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(771, '771', 'Te red 25*20 Sigas', NULL, 61, 79.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(772, '772', 'Te red 32*20 Sigas', NULL, 71, 92.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(773, '773', 'Te red 32*25 Sigas', NULL, 69, 89.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(774, '774', 'Valv Esf. 20mm Sigas', NULL, 294, 382.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(775, '775', 'Valv Esf. 25mm Sigas', NULL, 294, 382.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(776, '776', 'Valv Esf. 32mm Sigas', NULL, 752, 977.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(777, '777', 'Cupla Red 25*20 Sigas', NULL, 18, 23.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(778, '778', 'Cupla Red 32*20 Sigas', NULL, 21, 27.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(779, '779', 'Cupla Red 32*25 Sigas', NULL, 21, 27.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(780, '780', 'TF-valv esf 20mm Tigre', NULL, 261, 287.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(781, '781', 'TF-valv esf 25mm Tigre', NULL, 284, 312.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(782, '782', 'Ca?o pvc 110*4 tubo top  Sanife', NULL, 257, 334.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(783, '783', 'Cupla 110pvc 3,2', NULL, 32, 35.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(784, '784', 'Codo-curva 110A 45& pvc 3,2 -corta', NULL, 46, 50.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(785, '785', 'Codo-curva 110A 45& pvc 3,2 -larga', NULL, 76, 83.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(786, '786', 'Codo A90& 110pvc 3,2MH', NULL, 38, 49.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(787, '787', 'Codo A90& 110pvc 3,2HH', NULL, 52, 57.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(788, '788', 'Codo con base 100pvc 3,2', NULL, 28, 30.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(789, '789', 'Codo con base 110pvc 3,2', NULL, 71, 78.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(790, '790', 'Codo 110c/acometidas pvc 3,2', NULL, 76, 83.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(791, '791', 'Curva 110A 45& pvc 3,2', NULL, 69, 89.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(792, '792', 'Curva 110pvc 3,2 larga', NULL, 76, 83.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(793, '793', 'Ramal 110A 45& pvc 3,2', NULL, 104, 114.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(794, '794', 'Ramal 110A 90& pvc 3,2', NULL, 84, 92.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(795, '795', 'Ramal 110*63A 45& pvc 3,2', NULL, 73, 80.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(796, '796', 'Ramal 110*63A 90& pvc 3,2', NULL, 58, 63.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(797, '797', 'Tapa 110pvc 3,2', NULL, 14, 15.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(798, '798', 'Cupla red 110*63pvc 3,2', NULL, 32, 35.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(799, '799', 'Pileta patio 10*10pvc 3,2', NULL, 100, 130, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(800, '800', 'Pileta patio 15*15pvc 3,2', NULL, 108, 140.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(801, '801', 'Adhesivo tigre x76 cc l solda', NULL, 45, 58.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(802, '802', 'Adhesivo c/ retar *205 cc c/p1', NULL, 73, 94.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(803, '803', 'Adhesivo c/retar c 376cc', NULL, 103, 133.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(804, '804', 'Kit camara deseng.', NULL, 428, 556.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(805, '805', 'Caja mult. c/tapa Tigre', NULL, 969, 1259.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(806, '806', 'Camara deseng c/sal 110', NULL, 1434, 1864.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(807, '807', 'TF-cupla 32mm Tigre', NULL, 8, 10.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(808, '808', 'TF-cupla 50mm Tigre', NULL, 28, 36.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(809, '809', 'TF-codo 45 20mm Tigre', NULL, 8, 11.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(810, '810', 'TF-codo 45 25mm Tigre', NULL, 10, 14, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:23'),
(811, '811', 'TF-codo 45 32mm Tigre', NULL, 15, 21, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(812, '812', 'TF-codo 45 50mm Tigre', NULL, 52, 67.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(813, '813', 'TF-codo 90 20mm Tigre', NULL, 4, 5.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(814, '814', 'TF-codo 90 25mm Tigre', NULL, 7, 9.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(815, '815', 'TF-codo 90 32mm Tigre', NULL, 10, 13, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:23'),
(816, '816', 'TF-codo 90 50mm Tigre', NULL, 42, 54.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(817, '817', 'TF-curva 90 20 mm Tigre', NULL, 14, 19.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(818, '818', 'TF-curva 90 25mm Tigre', NULL, 20, 28, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:23'),
(819, '819', 'TF-TE Normal 20mm Tigre', NULL, 7, 7.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(820, '820', 'TF-TE Normal 25mm Tigre', NULL, 13, 14.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(821, '821', 'TF-TE Normal 32mm Tigre', NULL, 20, 22, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(822, '822', 'TF-TE Normal 50mm Tigre', NULL, 58, 75.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(823, '823', 'TF-buje Red plano 25*20mm Tigre', NULL, 3, 3.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(824, '824', 'TF-buje Red plano 32*25mm Tigre', NULL, 3, 3.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(825, '825', 'TF-buje Red plano 50*32mm Tigre', NULL, 13, 16.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(826, '826', 'TF-tapa 20mm Tigre', NULL, 4, 4.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(827, '827', 'TF-tapa 25mm Tigre', NULL, 6, 7.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:43:30'),
(828, '828', 'TF-tubo M 20mm x 1/2 Tigre', NULL, 25, 35, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:23'),
(829, '829', 'TF-tubo M 25mm x 3/4 Tigre', NULL, 41, 57.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:42:52'),
(830, '830', 'TF-tubo M 32mm x 1 Tigre', NULL, 71, 99.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.4, 0, 0, 0, '2017-03-04 18:43:30'),
(831, '831', 'TF-tubo M 50mm x 1,1/2 Tigre', NULL, 257, 334.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.3, 0, 0, 0, '2017-03-04 18:42:52'),
(832, '832', 'Ca?o fusion  Tigre 25', NULL, 131, 144.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(833, '833', 'Ca?o fusion Tigre 32', NULL, 204, 224.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(834, '834', 'Codo fusion 20mm', NULL, 5, 5.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(835, '835', 'Codo fusion 25mm', NULL, 9, 9.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(836, '836', 'Codo fusion 32mm', NULL, 13, 14.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(837, '837', 'Cupla fusion c/ins 20*1/2H', NULL, 28, 30.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(838, '838', 'Cupla fusion c/ins 20*1/2M', NULL, 32, 35.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(839, '839', 'Cupla fusion c/ins 20*3/8H', NULL, 25, 27.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(840, '840', 'Cupla fusion c/ins 25*1/2H', NULL, 36, 39.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(841, '841', 'Cupla fusion c/ins 25*1/2M', NULL, 36, 39.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(842, '842', 'Cupla fusion c/ins 25*3/4H', NULL, 41, 45.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(843, '843', 'Cupla fusion c/ins 25*3/4M', NULL, 54, 59.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(844, '844', 'Cupla fusion c/ins 32*1H', NULL, 72, 79.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(845, '845', 'Cupla fusion c/ins 32*1M', NULL, 93, 102.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(846, '846', 'Cupla fusion c/ins 32*3/4M', NULL, 84, 92.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(847, '847', 'Curva Fusion 20 tigre 90?', NULL, 18, 19.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(848, '848', 'Curva Fusion 25 tigre 90?', NULL, 26, 28.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(849, '849', 'Llave de gas BCE 1/2', NULL, 194, 213.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(850, '850', 'Llave de gas BCE 3/4', NULL, 244, 268.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(851, '851', 'Llave de gas c/campana 1/2', NULL, 222, 244.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(852, '852', 'Sobrepaso fusion 20mm', NULL, 19, 20.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(853, '853', 'Sobrepaso fusion 25mm', NULL, 28, 30.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(854, '854', 'Sobrepaso fusion 32mm', NULL, 44, 48.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(855, '855', 'Tapa fusion 20mm', NULL, 4, 4.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(856, '856', 'Tapa fusion 32mm', NULL, 10, 11, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(857, '857', 'Tee fusion 32mm', NULL, 20, 22, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(858, '858', 'Llave de paso fusion tigre 20mm', NULL, 255, 280.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(859, '859', 'Llave de paso fusion tigre 25mm', NULL, 272, 299.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(860, '860', 'Valvula fusion tigre 25mm', NULL, 284, 312.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(861, '861', 'Valvula fusion tigre 20mm', NULL, 261, 287.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(862, '862', 'Valvula H3 fusion 20mm', NULL, 140, 154, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(863, '863', 'Valvula H3 Fusion 25mm', NULL, 182, 200.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(864, '864', 'Ca?o Fusion Tigre 20', NULL, 90, 99, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(865, '865', 'Codo fusion 45? 20mm', NULL, 10, 11, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(866, '866', 'Codo fusion 45? 25mm', NULL, 13, 14.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(867, '867', 'Codo fusion 45? 32mm', NULL, 20, 22, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(868, '868', 'Codo fusion c/inst 20 * 1/2H', NULL, 27, 29.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(869, '869', 'Codo fusion c/inst 20 * 1/2M', NULL, 33, 36.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(870, '870', 'Codo fusion c/inst 25 * 1/2H', NULL, 46, 50.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(871, '871', 'Codo fusion c/inst 25 * 1/2M', NULL, 48, 52.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(872, '872', 'Reduccion pvc 3,2mm 40*50', NULL, 9, 9.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(873, '873', 'Reduccion pvc 3,2mm 63*40', NULL, 11, 12.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(874, '874', 'Reduccion pvc 3,2mm 63*50', NULL, 15, 16.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(875, '875', 'Sombrerete PVC 63', NULL, 31, 34.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(876, '876', 'Codo fusion c/inst 25 * 3/4H', NULL, 41, 45.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(877, '877', 'Codo fusion c/inst 25 * 3/4M', NULL, 53, 58.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(878, '878', 'Codo fusion c/ inst 32*1H', NULL, 65, 71.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(879, '879', 'Codo fusion c/inst 32*1M', NULL, 80, 88, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(880, '880', 'Codo fusion c/inst 32*3/4H', NULL, 80, 88, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(881, '881', 'Cupla fusion red 25*20', NULL, 9, 9.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(882, '882', 'Cupla fusion red 32*20', NULL, 11, 12.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(883, '883', 'Cupla fusion red 32*25', NULL, 14, 15.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(884, '884', 'Curva fusion 32 tigre 90?', NULL, 37, 40.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(885, '885', 'Tee fusion 20mm', NULL, 7, 7.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(886, '886', 'Tee fusion 25mm', NULL, 13, 14.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(887, '887', 'Tee fusion c inst 20*1/2H', NULL, 43, 47.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(888, '888', 'Tee fusion c/ inst 20*1/2M', NULL, 46, 50.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(889, '889', 'Tee fusion c inst 25*1/2H', NULL, 48, 52.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(890, '890', 'Tee fusion c inst 25*1/2M', NULL, 66, 72.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(891, '891', 'Tee fusion c inst 25*3/4H', NULL, 60, 66, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(892, '892', 'Tee fusion c inst 25*3/4M', NULL, 68, 74.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(893, '893', 'Tee fusion c inst 32*1H', NULL, 74, 81.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(894, '894', 'Tee fusion c inst 32*1M', NULL, 92, 101.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(895, '895', 'Tee fusion c inst 32*3/4H', NULL, 80, 88, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(896, '896', 'Tee fusion c inst 32*3/4M', NULL, 97, 106.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(897, '897', 'Union doble fusion metalica 20mm', NULL, 57, 62.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(898, '898', 'Union doble fusion metalica 25mm', NULL, 73, 80.3, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(899, '899', 'Union doble fusion metalica 32mm', NULL, 172, 189.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(900, '900', 'Asiento deposito gastado chico', NULL, 12, 13.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(901, '901', 'Ramal T lavatorio BCE 1/2*3/8', NULL, 86, 94.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(902, '902', 'Tapa externa grande ', NULL, 34, 37.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(903, '903', 'Tapa interna c boton ideal original', NULL, 64, 70.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(904, '904', 'Tapa interna T Franklin c boton', NULL, 39, 42.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(905, '905', 'Flexible PVC monarca 30cm', NULL, 17, 18.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(906, '906', 'Flexible PVC monarca 50cm', NULL, 24, 26.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(907, '907', 'Flotante embutir latin PVC hembra', NULL, 60, 66, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(908, '908', 'Boya corta p deposito colgar', NULL, 38, 41.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(909, '909', 'Boya desborde franklin c alambre', NULL, 38, 41.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(910, '910', 'Boya desborde tabique', NULL, 38, 41.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(911, '911', 'Boya plastica chata  ideal original', NULL, 18, 19.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(912, '912', 'Boya plastica cilindra', NULL, 10, 11, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(913, '913', 'Boya telgopor chata 2 roscas', NULL, 17, 18.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(914, '914', 'Boya telgopor p tanque 3/4', NULL, 19, 20.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(915, '915', 'Boya universal ideal original', NULL, 46, 50.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(916, '916', 'Campana FV cromo', NULL, 20, 22, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(917, '917', 'Conexi?n p deposito colgante', NULL, 16, 17.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(918, '918', 'deposito monkoto cadena', NULL, 209, 229.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(919, '919', 'Lluvia p bidet 1/2', NULL, 78, 85.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(920, '920', 'Lluvia p bidet 3/8', NULL, 76, 83.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(921, '921', 'Flotante embutir latin PVC macho', NULL, 50, 55, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(922, '922', 'Flotante tanque LT 1/2 plastico', NULL, 95, 104.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(923, '923', 'Flotante tanmque LT 3/4 plastico ', NULL, 116, 127.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(924, '924', 'tuboflexroa 1/2 x30', NULL, 97, 106.7, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(925, '925', 'tuvoflex rao 1/2 x 40', NULL, 122, 134.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(926, '926', 'valvula monkoto macho', NULL, 55, 60.5, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(927, '927', 'canilla bronce para mangera de 1', NULL, 300, 330, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:23'),
(928, '928', 'canilla bronce para mangera de 1/2', NULL, 144, 158.4, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(929, '929', 'canilla bronce p mangera 3/4', NULL, 220, 242, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(930, '930', 'canilla cromo para mangera 1/2', NULL, 189, 207.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(931, '931', 'canilla cromo para mangera 3/4', NULL, 246, 270.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(932, '932', 'Canilla duke palanca de 1/2', NULL, 31, 34.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(933, '933', 'Canilla esferica 1" cromo', NULL, 228, 250.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(934, '934', 'Canilla esferica 1/2" cromo palanca', NULL, 48, 52.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(935, '935', 'Canilla esferica 3/4 cromo palanca', NULL, 92, 101.2, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(936, '936', 'Canilla esferica PVC 3/4', NULL, 28, 30.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(937, '937', 'Canilla lavatorio pico curvo', NULL, 190, 209, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(938, '938', 'Canilla lavatorio pico levantada', NULL, 236, 259.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(939, '939', 'Canilla monarca p manguera 1/2', NULL, 21, 23.1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(940, '940', 'Canilla sifolimp p manguera 3/4', NULL, 39, 42.9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(941, '941', 'Codo espiga R-H 1"', NULL, 8, 8.8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:42:52'),
(942, '942', 'Codo espiga R-H 3/4', NULL, 6, 6.6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1.1, 0, 0, 0, '2017-03-04 18:43:30'),
(943, '', 'PAPA X KG', 0, 0, 12, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 3, '2017-03-27 19:19:46'),
(944, '', 'PAPAAS', 0, 0, 12, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 3, '2017-03-27 19:22:00'),
(945, '945', 'PERA', 0, 0, 12, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 3, '2017-03-27 19:23:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billetes`
--

CREATE TABLE `billetes` (
  `id` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(30) NOT NULL DEFAULT '',
  `valor` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `numero` bigint(11) NOT NULL DEFAULT '0',
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `saldoinicial` double NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `saldofinal` double DEFAULT NULL,
  `fechacierre` varchar(30) DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`numero`, `numeroSucursal`, `numeroUsuario`, `tipoMovimiento`, `saldoinicial`, `estado`, `tipo`, `saldofinal`, `fechacierre`, `diferencia`, `fecha`) VALUES
(1, 1, 1, 9, 0, 1, 1, 100, '2017-03-20', -100, '2017-03-04 17:41:04'),
(2, 1, 1, 9, 200, 1, 1, 200, '2017-03-20', 0, '2017-03-20 19:24:50'),
(3, 1, 1, 9, 300, 1, 1, 300, '2017-03-20', 0, '2017-03-20 19:32:36'),
(4, 1, 1, 9, 300, 1, 1, 300, '2017-03-20', 0, '2017-03-20 19:34:01'),
(5, 1, 1, 9, 500, 1, 1, 500, '2017-03-20', 0, '2017-03-20 19:37:56'),
(6, 1, 1, 9, 500, 1, 1, 500, '2017-03-20', 0, '2017-03-20 19:40:52'),
(7, 1, 1, 9, 500, 1, 1, 500, '2017-03-20', 0, '2017-03-20 19:43:05'),
(8, 1, 1, 9, 500, 1, 1, 500, '2017-03-20', 0, '2017-03-20 20:04:25'),
(9, 1, 1, 9, 600, 1, 1, 600, '2017-03-20', 0, '2017-03-20 20:05:29'),
(10, 1, 1, 9, 400, 1, 1, 400, '2017-03-20', 0, '2017-03-20 20:06:49'),
(11, 1, 1, 9, 500, 1, 1, 200, '2017-03-20', 300, '2017-03-20 20:11:57'),
(12, 1, 1, 9, 0, 0, 1, NULL, NULL, NULL, '2017-03-27 19:19:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coeficienteslistas`
--

CREATE TABLE `coeficienteslistas` (
  `id` int(11) NOT NULL DEFAULT '0',
  `coeficiente` double NOT NULL DEFAULT '0',
  `descripcion` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coeficienteslistas`
--

INSERT INTO `coeficienteslistas` (`id`, `coeficiente`, `descripcion`) VALUES
(1, 1, 'base');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combo`
--

CREATE TABLE `combo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `idarticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double DEFAULT NULL,
  `articulopadre` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(4) NOT NULL DEFAULT '',
  `destinatarioCondicion` int(11) NOT NULL DEFAULT '0',
  `descargaStock` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depositos`
--

CREATE TABLE `depositos` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `direccion` varchar(200) NOT NULL DEFAULT '',
  `telefono` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `depositos`
--

INSERT INTO `depositos` (`numero`, `descripcion`, `direccion`, `telefono`) VALUES
(1, 'casa central', 'lamadradid 2552', '4555555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fallas`
--

CREATE TABLE `fallas` (
  `st` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiscal`
--

CREATE TABLE `fiscal` (
  `fecha` varchar(8) NOT NULL DEFAULT '',
  `tipo` varchar(3) NOT NULL DEFAULT '011',
  `pto` varchar(5) NOT NULL DEFAULT '00002',
  `numero` varchar(20) NOT NULL DEFAULT '',
  `gravado` double NOT NULL DEFAULT '0',
  `alicuota` varchar(4) NOT NULL DEFAULT '0005',
  `impuesto` double NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(11) NOT NULL DEFAULT '0',
  `idcliente` int(11) NOT NULL DEFAULT '1',
  `tipoClienteId` int(11) NOT NULL DEFAULT '99',
  `razon` varchar(30) NOT NULL DEFAULT '',
  `cuit` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ivaventas`
--

CREATE TABLE `ivaventas` (
  `id` int(11) NOT NULL,
  `comprobante` varchar(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `numero` varchar(14) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(35) NOT NULL,
  `condicion` varchar(4) NOT NULL,
  `cuit` varchar(11) NOT NULL,
  `neto` varchar(15) NOT NULL,
  `iva` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `periodo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listcli`
--

CREATE TABLE `listcli` (
  `COD_CLIENT` varchar(6) DEFAULT NULL,
  `RAZON_SOCI` varchar(60) DEFAULT NULL,
  `DOMICILIO` varchar(30) DEFAULT NULL,
  `COND_VTA` int(11) NOT NULL DEFAULT '0',
  `TELEFONO_1` varchar(30) DEFAULT NULL,
  `LISTADEPRECIO` int(11) NOT NULL DEFAULT '0',
  `NUMERODECUIT` varchar(30) DEFAULT NULL,
  `CUPODECREDITO` double DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codmmd` int(11) NOT NULL DEFAULT '0',
  `saldo` double DEFAULT '0',
  `saldoactual` double DEFAULT '0',
  `TIPO_IVA` int(11) NOT NULL DEFAULT '0',
  `COEFICIENTE` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `listcli`
--

INSERT INTO `listcli` (`COD_CLIENT`, `RAZON_SOCI`, `DOMICILIO`, `COND_VTA`, `TELEFONO_1`, `LISTADEPRECIO`, `NUMERODECUIT`, `CUPODECREDITO`, `empresa`, `codmmd`, `saldo`, `saldoactual`, `TIPO_IVA`, `COEFICIENTE`, `id`) VALUES
('999999', 'CONSUMIDOR FINAL', 'NN', 1, '11', 1, '1', 0, 'sd', 1, 0, 0, 1, 1, 1),
('2', 'CAF 21', 'PADRE QUIROGA 2230', 1, '12', 1, '33678412649', NULL, 'sd', 2, 0, 0, 1, 1, 2),
('3', 'vovovovovvo', 'nsndovsnondsonvo', 2, 'asdada', 1, 'asdasa', 7000, 'sd', 3, 0, 0, 3, 1, 3),
('4', 'mau', 'mau', 2, '331313', 1, '13131', 6500, 'sd', 4, 0, 0, 1, 1, 4),
('5', 'hkhkhkhk', 'hkhkhkhk', 2, '0', 1, '0', 3500, 'bu', 5, 0, 0, 1, 1, 5),
('6', 'larisa', 'nl', 1, '0', 1, '0', 300, 'bu', 6, 0, 0, 1, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosarticulos`
--

CREATE TABLE `movimientosarticulos` (
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `idArticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `numeroDeposito` int(11) NOT NULL DEFAULT '0',
  `tipoComprobante` int(11) NOT NULL DEFAULT '0',
  `numeroComprobante` int(11) NOT NULL DEFAULT '0',
  `numeroCliente` int(11) NOT NULL DEFAULT '0',
  `fechaComprobante` varchar(30) NOT NULL DEFAULT '',
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `precioDeCosto` double NOT NULL DEFAULT '0',
  `precioDeVenta` double NOT NULL DEFAULT '0',
  `precioServicio` double NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idcaja` bigint(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `idcomprobante` int(11) DEFAULT '0',
  `observaciones` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movimientosarticulos`
--

INSERT INTO `movimientosarticulos` (`tipoMovimiento`, `idArticulo`, `cantidad`, `numeroDeposito`, `tipoComprobante`, `numeroComprobante`, `numeroCliente`, `fechaComprobante`, `numeroUsuario`, `precioDeCosto`, `precioDeVenta`, `precioServicio`, `estado`, `fecha`, `idcaja`, `id`, `idcomprobante`, `observaciones`) VALUES
(14, 3, 10, 1, 18, 3, 1, '2017-03-16', 1, 342, 393.3, 0, NULL, '2017-03-16 18:38:23', 1, 1, 0, NULL),
(1, 4, -1, 1, 1, 1, 5, '2017-03-29', 1, 1143, 1314.45, 0, NULL, '2017-03-29 16:56:51', 12, 2, 25, NULL),
(1, 1, -10, 1, 1, 2, 4, '2017-03-31', 1, 254, 2921, 0, NULL, '2017-03-31 14:00:23', 12, 3, 30, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientoscaja`
--

CREATE TABLE `movimientoscaja` (
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `idCliente` int(11) DEFAULT NULL,
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  `numeroComprobante` int(11) NOT NULL DEFAULT '0',
  `tipoComprobante` int(11) NOT NULL DEFAULT '0',
  `monto` double DEFAULT NULL,
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `cantidad` double DEFAULT NULL,
  `pagado` int(11) NOT NULL DEFAULT '0',
  `observaciones` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipoCliente` int(11) DEFAULT NULL,
  `id` bigint(11) NOT NULL,
  `fiscal` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movimientoscaja`
--

INSERT INTO `movimientoscaja` (`numeroUsuario`, `idCliente`, `numeroSucursal`, `numeroComprobante`, `tipoComprobante`, `monto`, `tipoMovimiento`, `idCaja`, `cantidad`, `pagado`, `observaciones`, `estado`, `tipoCliente`, `id`, `fiscal`, `fecha`) VALUES
(1, NULL, 1, 2, 0, 0, 9, 1, NULL, 0, NULL, NULL, NULL, 1, 0, '2017-03-04 17:41:04'),
(1, 0, 1, 0, 0, 0, 10, 1, NULL, 1, NULL, NULL, 0, 2, 0, '2017-03-20 19:22:43'),
(1, NULL, 1, 3, 0, 200, 9, 2, NULL, 0, NULL, NULL, NULL, 3, 0, '2017-03-20 19:24:50'),
(1, 0, 1, 0, 0, 0, 10, 2, NULL, 1, NULL, NULL, 0, 4, 0, '2017-03-20 19:25:06'),
(1, NULL, 1, 4, 0, 300, 9, 3, NULL, 0, NULL, NULL, NULL, 5, 0, '2017-03-20 19:32:36'),
(1, 0, 1, 0, 0, 0, 10, 3, NULL, 1, NULL, NULL, 0, 6, 0, '2017-03-20 19:32:52'),
(1, NULL, 1, 5, 0, 300, 9, 4, NULL, 0, NULL, NULL, NULL, 7, 0, '2017-03-20 19:34:01'),
(1, 0, 1, 0, 0, 0, 10, 4, NULL, 1, NULL, NULL, 0, 8, 0, '2017-03-20 19:34:13'),
(1, NULL, 1, 6, 0, 500, 9, 5, NULL, 0, NULL, NULL, NULL, 9, 0, '2017-03-20 19:37:56'),
(1, 0, 1, 0, 0, 0, 10, 5, NULL, 1, NULL, NULL, 0, 10, 0, '2017-03-20 19:38:08'),
(1, NULL, 1, 7, 0, 500, 9, 6, NULL, 0, NULL, NULL, NULL, 11, 0, '2017-03-20 19:40:53'),
(1, 0, 1, 0, 0, -100, 10, 6, NULL, 1, NULL, NULL, 0, 12, 0, '2017-03-20 19:41:07'),
(1, NULL, 1, 8, 0, 500, 9, 7, NULL, 0, NULL, NULL, NULL, 13, 0, '2017-03-20 19:43:06'),
(1, 0, 1, 0, 0, 0, 10, 7, NULL, 1, NULL, NULL, 0, 14, 0, '2017-03-20 19:43:18'),
(1, NULL, 1, 9, 0, 500, 9, 8, NULL, 0, NULL, NULL, NULL, 15, 0, '2017-03-20 20:04:25'),
(1, 0, 1, 0, 0, 0, 10, 8, NULL, 1, NULL, NULL, 0, 16, 0, '2017-03-20 20:04:39'),
(1, NULL, 1, 10, 0, 600, 9, 9, NULL, 0, NULL, NULL, NULL, 17, 0, '2017-03-20 20:05:29'),
(1, 0, 1, 0, 0, 0, 10, 9, NULL, 1, NULL, NULL, 0, 18, 0, '2017-03-20 20:05:42'),
(1, NULL, 1, 11, 0, 400, 9, 10, NULL, 0, NULL, NULL, NULL, 19, 0, '2017-03-20 20:06:49'),
(1, 0, 1, 0, 0, 0, 10, 10, NULL, 1, NULL, NULL, 0, 20, 0, '2017-03-20 20:06:59'),
(1, NULL, 1, 12, 0, 500, 9, 11, NULL, 0, NULL, NULL, NULL, 21, 0, '2017-03-20 20:11:57'),
(1, 0, 1, 0, 0, -300, 10, 11, NULL, 1, NULL, NULL, 0, 22, 0, '2017-03-20 20:12:10'),
(1, NULL, 1, 13, 0, 0, 9, 12, NULL, 0, NULL, NULL, NULL, 23, 0, '2017-03-27 19:19:23'),
(1, 5, 1, 1, 6, 200, 13, 12, NULL, 1, NULL, NULL, 1, 24, 0, '2017-03-28 16:31:52'),
(1, 5, 1, 1, 1, 1314.45, 1, 12, NULL, 0, NULL, NULL, 1, 25, 0, '2017-03-29 16:56:51'),
(1, 0, 1, 14, 0, 150, 7, 12, NULL, 1, NULL, NULL, 0, 26, 0, '2017-03-29 17:05:01'),
(1, 0, 1, 15, 0, -350, 12, 12, NULL, 0, 'no se', NULL, 2, 27, 0, '2017-03-29 17:07:10'),
(1, 0, 1, 16, 0, -220, 12, 12, NULL, 0, 'ni idea', NULL, 2, 28, 0, '2017-03-29 17:11:26'),
(1, 0, 1, 17, 0, -210, 12, 12, NULL, 1, 'prueba', NULL, 2, 29, 0, '2017-03-29 17:12:01'),
(1, 4, 1, 2, 1, 2921, 1, 12, NULL, 0, NULL, NULL, 1, 30, 0, '2017-03-31 14:00:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosclientes`
--

CREATE TABLE `movimientosclientes` (
  `numeroProveedor` int(11) NOT NULL DEFAULT '0',
  `monto` double NOT NULL DEFAULT '0',
  `pagado` int(11) DEFAULT NULL,
  `numeroComprobante` int(11) DEFAULT NULL,
  `idRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `fechaPago` varchar(20) DEFAULT NULL,
  `tipoComprobante` int(11) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `idcomprobante` int(11) DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movimientosclientes`
--

INSERT INTO `movimientosclientes` (`numeroProveedor`, `monto`, `pagado`, `numeroComprobante`, `idRemito`, `idUsuario`, `idCaja`, `fechaPago`, `tipoComprobante`, `idSucursal`, `estado`, `id`, `idcomprobante`, `fecha`) VALUES
(5, 330, 0, 1, 0, 1, 0, NULL, 15, 1, NULL, 1, 0, '2017-03-28 15:58:42'),
(5, -200, 0, 1, 0, 0, 0, NULL, 11, 0, NULL, 4, 0, '2017-03-28 16:31:52'),
(5, 200, 0, 2, 0, 1, 0, NULL, 15, 1, NULL, 5, 0, '2017-03-28 17:10:32'),
(5, 1314.45, 0, 1, NULL, 1, 12, NULL, 1, 1, NULL, 6, 25, '2017-03-29 16:56:51'),
(4, 200, 0, 3, 0, 1, 0, NULL, 15, 1, NULL, 7, 0, '2017-03-31 13:59:50'),
(4, 2921, 0, 2, NULL, 1, 12, NULL, 1, 1, NULL, 8, 30, '2017-03-31 14:00:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosdesucursales`
--

CREATE TABLE `movimientosdesucursales` (
  `depOrigen` int(11) DEFAULT NULL,
  `depDestino` int(11) DEFAULT NULL,
  `idArticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `confirmado` int(11) DEFAULT NULL,
  `numeroRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `idUsuarioRecep` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosproveedores`
--

CREATE TABLE `movimientosproveedores` (
  `numeroProveedor` int(11) NOT NULL DEFAULT '0',
  `monto` double NOT NULL DEFAULT '0',
  `pagado` int(11) DEFAULT NULL,
  `numeroComprobante` varchar(30) DEFAULT NULL,
  `idRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `fechaPago` varchar(20) DEFAULT NULL,
  `tipoComprobante` int(11) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosusuarios`
--

CREATE TABLE `movimientosusuarios` (
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `tipoAcceso` int(11) DEFAULT NULL,
  `entrada` varchar(30) NOT NULL DEFAULT '',
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) DEFAULT NULL,
  `nombre` varchar(19) DEFAULT NULL,
  `DOMICILIO` varchar(100) DEFAULT NULL,
  `LOCALIDAD` varchar(8) DEFAULT NULL,
  `TELEFONO` varchar(10) DEFAULT NULL,
  `INHABILITADO` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(200) NOT NULL DEFAULT '',
  `saldo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `direccion` varchar(100) NOT NULL DEFAULT '',
  `telefono` varchar(100) NOT NULL DEFAULT '',
  `deposito` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`numero`, `descripcion`, `direccion`, `telefono`, `deposito`) VALUES
(1, 'POCO PRECIO 1', '1', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoacceso`
--

CREATE TABLE `tipoacceso` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(20) NOT NULL DEFAULT '',
  `nivel` int(11) NOT NULL DEFAULT '0',
  `menu1` int(11) NOT NULL DEFAULT '0',
  `menu2` int(11) NOT NULL DEFAULT '0',
  `menu3` int(11) NOT NULL DEFAULT '0',
  `menu4` int(11) NOT NULL DEFAULT '0',
  `menu5` int(11) NOT NULL DEFAULT '0',
  `menu6` int(11) NOT NULL DEFAULT '0',
  `menu7` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoacceso`
--

INSERT INTO `tipoacceso` (`numero`, `descripcion`, `nivel`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`) VALUES
(1, 'administrador', 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'cajero', 2, 0, 0, 1, 1, 0, 1, 0),
(3, 'prueba', 3, 0, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocomprobantes`
--

CREATE TABLE `tipocomprobantes` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL DEFAULT '',
  `numeroActivo` int(11) NOT NULL DEFAULT '0',
  `numeroSucursal` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipocomprobantes`
--

INSERT INTO `tipocomprobantes` (`numero`, `descripcion`, `numeroActivo`, `numeroSucursal`) VALUES
(1, 'ticket', 2, 1),
(2, 'FCA A', 0, 1),
(3, 'remito proveedor', 0, 1),
(4, 'remito interno', 0, 1),
(5, 'factura proveedor A', 0, 1),
(6, 'factura proveedor', 0, 1),
(7, 'ticket', 0, 2),
(8, 'FCA A', 0, 2),
(9, 'ticket', 0, 3),
(10, 'FCA A', 0, 3),
(11, 'recibo de pago', 3, 1),
(12, 'mov caja', 17, 0),
(13, 'gasto fijo', 0, 1),
(14, 'ticket', 0, 4),
(15, 'FCA A', 0, 4),
(16, 'ticket', 0, 5),
(17, 'FCA A', 0, 5),
(18, 'remito de ajuste de stock', 3, 1),
(19, 'TICKET', 0, 7),
(20, 'FACTURA PROVEEDOR', 0, 7),
(21, 'FCA A', 0, 7),
(22, 'ticket', 0, 6),
(23, 'FCA A', 0, 6),
(81, 'TFA', 0, 1),
(82, 'TFB', 0, 1),
(112, 'NCA', 0, 1),
(113, 'NCB', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomovimientos`
--

CREATE TABLE `tipomovimientos` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `DESCRIPCION` varchar(30) NOT NULL DEFAULT '',
  `DESTINOOPERACION` int(11) NOT NULL DEFAULT '0',
  `MULTIPLOOP` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipomovimientos`
--

INSERT INTO `tipomovimientos` (`ID`, `DESCRIPCION`, `DESTINOOPERACION`, `MULTIPLOOP`) VALUES
(1, 'Ventas', 1, 1),
(2, 'Compras', 1, 1),
(3, 'Devolucion de Ventas', 1, 1),
(4, 'Retiro Efectivo', 2, -1),
(5, 'Recepcion de mercaderias', 1, 1),
(6, 'Traslado de mercaderias', 1, 1),
(7, 'Ingreso de Caja', 2, 1),
(8, 'Devolucion de compras', 1, 1),
(9, 'saldo inicial', 2, 1),
(10, 'Cerrar Caja', 2, -1),
(11, 'Pago a Proveedores', 2, -1),
(12, 'Gastos de Caja', 2, -1),
(13, 'Cobro de Cuenta Corriente Clie', 2, 1),
(14, 'ajuste de stock', 1, 1),
(15, 'ajuste de saldo', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(70) NOT NULL DEFAULT '',
  `direccion` varchar(200) NOT NULL DEFAULT '',
  `localidad` varchar(70) NOT NULL DEFAULT '',
  `telefono` varchar(100) NOT NULL DEFAULT '',
  `mail` varchar(100) NOT NULL DEFAULT '',
  `nombreUsuario` varchar(100) NOT NULL DEFAULT '',
  `clave` varchar(100) NOT NULL DEFAULT '',
  `autorizacion` int(11) NOT NULL DEFAULT '0',
  `numeroTipoAcceso` int(11) NOT NULL DEFAULT '0',
  `sucursal` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`numero`, `nombre`, `direccion`, `localidad`, `telefono`, `mail`, `nombreUsuario`, `clave`, `autorizacion`, `numeroTipoAcceso`, `sucursal`) VALUES
(1, 'administrador', '', '', '', '', 'ADM', 'adm', 1, 1, 1),
(2, 'ELIEL', '', '', '', '', 'ELIEL', 'ELIEL', 2, 2, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `billetes`
--
ALTER TABLE `billetes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `coeficienteslistas`
--
ALTER TABLE `coeficienteslistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `depositos`
--
ALTER TABLE `depositos`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `fiscal`
--
ALTER TABLE `fiscal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numero_2` (`numero`);

--
-- Indices de la tabla `ivaventas`
--
ALTER TABLE `ivaventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listcli`
--
ALTER TABLE `listcli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `codmmd` (`codmmd`);

--
-- Indices de la tabla `movimientosarticulos`
--
ALTER TABLE `movimientosarticulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientoscaja`
--
ALTER TABLE `movimientoscaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fecha` (`fecha`);

--
-- Indices de la tabla `movimientosclientes`
--
ALTER TABLE `movimientosclientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `tipoacceso`
--
ALTER TABLE `tipoacceso`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `tipocomprobantes`
--
ALTER TABLE `tipocomprobantes`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `tipomovimientos`
--
ALTER TABLE `tipomovimientos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=946;
--
-- AUTO_INCREMENT de la tabla `fiscal`
--
ALTER TABLE `fiscal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ivaventas`
--
ALTER TABLE `ivaventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `listcli`
--
ALTER TABLE `listcli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `movimientosarticulos`
--
ALTER TABLE `movimientosarticulos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `movimientoscaja`
--
ALTER TABLE `movimientoscaja`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `movimientosclientes`
--
ALTER TABLE `movimientosclientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
