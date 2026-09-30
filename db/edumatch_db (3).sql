-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2025 a las 02:01:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `edumatch_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(11) NOT NULL,
  `nombre_carrera` varchar(100) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre_carrera`, `id_categoria`) VALUES
(1, 'Administración de Empresas', 1),
(2, 'Artes Plásticas', 1),
(3, 'Contaduría Pública', 1),
(4, 'Diseño Gráfico', 1),
(5, 'Diseño de Modas', 1),
(6, 'Economía', 1),
(7, 'Finanzas', 1),
(8, 'Licenciatura en Biología', 1),
(9, 'Licenciatura en Comunicación', 1),
(10, 'Licenciatura en Educación Básica', 1),
(11, 'Licenciatura en Educación Especial', 1),
(12, 'Licenciatura en Educación Física', 1),
(13, 'Licenciatura en Educación Inicial', 1),
(14, 'Licenciatura en Enfermería', 1),
(15, 'Licenciatura en Estadística', 1),
(16, 'Licenciatura en Filosofía', 1),
(17, 'Licenciatura en Física', 1),
(18, 'Licenciatura en Historia', 1),
(19, 'Licenciatura en Idioma Inglés', 1),
(20, 'Licenciatura en Matemática', 1),
(21, 'Licenciatura en Nutrición', 1),
(22, 'Licenciatura en Química', 1),
(23, 'Licenciatura en Salud Pública', 1),
(24, 'Licenciatura en Sociología', 1),
(25, 'Licenciatura en Terapia Física', 1),
(26, 'Mercadeo', 1),
(27, 'Música', 1),
(28, 'Teatro', 1),
(29, 'Licenciatura en Psicología', 1),
(30, 'Licenciatura en Derecho', 1),
(31, 'Licenciatura en Trabajo Social', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ruta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `ruta`) VALUES
(1, 'Licenciaturas', 'indexlicenciaturas.php'),
(2, 'Ingenierías', 'indexingenierias.php'),
(3, 'Técnicos', 'indexitec.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenciaturas`
--

CREATE TABLE `licenciaturas` (
  `id` int(11) NOT NULL,
  `carrera` varchar(100) DEFAULT NULL,
  `universidad` varchar(150) DEFAULT NULL,
  `precio_mensual` decimal(6,2) DEFAULT NULL,
  `modalidad` varchar(50) DEFAULT NULL,
  `duracion` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `universidad_id` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `licenciaturas`
--

INSERT INTO `licenciaturas` (`id`, `carrera`, `universidad`, `precio_mensual`, `modalidad`, `duracion`, `logo`, `universidad_id`, `id_carrera`, `id_categoria`) VALUES
(1, 'Psicología', 'Universidad de El Salvador (UES)', 0.00, 'Presencial', '5 años', 'UES.png', 1, 29, 1),
(2, 'Psicología', 'Universidad Centroamericana José Simeón Cañas (UCA)', 160.00, 'Presencial', '5 años', 'UCA.png', 2, 29, 1),
(3, 'Psicología', 'Universidad Tecnológica de El Salvador (UTEC)', 115.00, 'Presencial / Virtual', '5 años', 'UTEC.png', 3, 29, 1),
(4, 'Psicología', 'Universidad Francisco Gavidia (UFG)', 130.00, 'Presencial / Virtual', '5 años', 'UFG.png', 4, 29, 1),
(5, 'Psicología', 'Universidad Dr. José Matías Delgado (UJMD)', 170.00, 'Presencial', '5 años', 'UJMD.png', 5, 29, 1),
(6, 'Psicología', 'Universidad Pedagógica (UPED)', 95.00, 'Presencial / Virtual', '5 años', 'UPED.png', 6, 29, 1),
(7, 'Psicología', 'Universidad Evangélica de El Salvador (UEES)', 110.00, 'Presencial / Virtual', '5 años', 'UEES.png', 7, 29, 1),
(8, 'Psicología', 'Universidad Salvadoreña Alberto Masferrer (USAM)', 85.00, 'Presencial / Virtual', '5 años', 'USAM.png', 8, 29, 1),
(9, 'Psicología', 'Universidad Andrés Bello (UNAB)', 100.00, 'Presencial / Virtual', '5 años', 'UNAB.png', 9, 29, 1),
(10, 'Psicología', 'Universidad Don Bosco (UDB)', 115.00, 'Presencial / Virtual', '5 años', 'UDB.png', 10, 29, 1),
(11, 'Psicología', 'Universidad Luterana Salvadoreña (ULS)', 90.00, 'Presencial', '5 años', 'ULS.png', 11, 29, 1),
(12, 'Psicología', 'Universidad Panamericana (UPAN)', 85.00, 'Virtual', '5 años', 'UPAN.png', 12, 29, 1),
(13, 'Derecho', 'Universidad de El Salvador (UES)', 0.00, 'Presencial', '5 años', 'UES.png', 1, 30, 1),
(14, 'Derecho', 'Universidad Centroamericana José Simeón Cañas (UCA)', 114.00, 'Semipresencial', '5 años + graduación', 'UCA.png', 2, 30, 1),
(15, 'Derecho', 'Universidad Dr. José Matías Delgado (UJMD)', 90.00, 'Semipresencial', '5 años', 'UJMD.png', 5, 30, 1),
(16, 'Derecho', 'Universidad Pedagógica (UPED)', 60.00, 'Semipresencial', '5 años', 'UPED.png', 6, 30, 1),
(17, 'Derecho', 'Universidad Evangélica de El Salvador (UEES)', 95.00, 'Presencial', '5 años', 'UEES.png', 7, 30, 1),
(18, 'Derecho', 'Universidad Salvadoreña Alberto Masferrer (USAM)', 80.00, 'Semipresencial', '5 años', 'USAM.png', 8, 30, 1),
(19, 'Derecho', 'Universidad Andrés Bello (UNAB)', 100.00, 'Presencial / Semipresencial', '5 años', 'UNAB.png', 9, 30, 1),
(20, 'Derecho', 'Universidad Tecnológica de El Salvador (UTEC)', 79.00, 'Virtual / Semipresencial', '5 años', 'UTEC.png', 3, 30, 1),
(21, 'Derecho', 'Universidad Modular Abierta (UMA)', 60.00, 'Presencial', '5 años', 'UMA.png', 21, 30, 1),
(22, 'Derecho', 'Universidad Nueva San Salvador (UNSSA)', 50.00, 'Presencial', '5 años', 'UNSSA.png', 22, 30, 1),
(23, 'Trabajo Social', 'Universidad de El Salvador (UES)', 0.00, 'Presencial', '5 años', 'UES.png', 1, NULL, NULL),
(24, 'Trabajo Social', 'Universidad Pedagógica (UPED)', 95.00, 'Presencial / Virtual', '5 años', 'UPED.png', 2, NULL, NULL),
(25, 'Trabajo Social', 'Universidad Luterana Salvadoreña (ULS)', 50.00, 'Presencial / Semipresencial', '5 años', 'ULS.png', 11, NULL, NULL),
(26, 'Trabajo Social', 'Universidad Andrés Bello (UNAB)', 100.00, 'Semipresencial', '5 años', 'UNAB.png', 9, NULL, NULL),
(27, 'Trabajo Social', 'Universidad Evangélica de El Salvador (UEES)', 95.00, 'Presencial', '5 años', 'UEES.png', 7, NULL, NULL),
(28, 'Sociología', 'Universidad de El Salvador (UES)', 0.00, 'Presencial', '5 años', 'UES.png', 1, NULL, NULL),
(29, 'Sociología', 'Universidad Centroamericana José Simeón Cañas (UCA)', 121.00, 'Presencial / Semipresencial', '5 años', 'UCA.png', 6, NULL, NULL),
(30, 'Sociología', 'Universidad Andrés Bello (UNAB)', 100.00, 'Presencial / Semipresencial', '5 años', 'UNAB.png', 9, NULL, NULL),
(31, 'Sociología', 'Universidad Nueva San Salvador (UNSSA)', 50.00, 'Presencial', '5 años', 'UNSSA.png', 22, NULL, NULL),
(32, 'Sociología', 'Universidad Don Bosco (UDB)', 74.00, 'Presencial / Virtual', '5 años', 'UDB.png', 10, NULL, NULL),
(33, 'Comunicación', 'Universidad Centroamericana José Simeón Cañas (UCA)', 121.00, 'Presencial / Semipresencial', '5 años + graduación', 'UCA.png', 2, NULL, NULL),
(34, 'Comunicación', 'Universidad Tecnológica de El Salvador (UTEC)', 79.00, 'Semipresencial / Virtual', '5 años', 'UTEC.png', 3, NULL, NULL),
(35, 'Comunicación', 'Universidad Dr. José Matías Delgado (UJMD)', 90.00, 'Semipresencial', '5 años', 'UJMD.png', 5, NULL, NULL),
(36, 'Comunicación', 'Universidad Don Bosco (UDB)', 74.00, 'Semipresencial / Virtual', '5 años', 'UDB.png', 10, NULL, NULL),
(37, 'Comunicación', 'Universidad Andrés Bello (UNAB)', 100.00, 'Presencial / Semipresencial', '5 años', 'UNAB.png', 9, NULL, NULL),
(38, 'Comunicación', 'Escuela de Comunicación Mónica Herrera', 595.00, 'Presencial', '4.5 años', 'Monica.png', 38, NULL, NULL),
(39, 'Historia', 'Universidad de El Salvador (UES)', 0.00, 'Presencial', '5 años', 'UES.png', 1, NULL, NULL),
(40, 'Historia', 'Universidad Centroamericana José Simeón Cañas (UCA)', 121.00, 'Presencial / Semipresencial', '5 años + graduación', 'UCA.png', 2, NULL, NULL),
(41, 'Historia', 'Universidad Politécnica (UPES)', 60.00, 'Semipresencial', '5 años', 'UPES.png', 41, NULL, NULL),
(42, 'Historia', 'Universidad Francisco Gavidia (UFG)', 130.00, 'Presencial / Virtual', '5 años', 'UFG.png', 4, NULL, NULL),
(43, 'Filosofía', 'Universidad de El Salvador (UES)', 0.00, 'Presencial', '5 años', 'UES.png', 1, NULL, NULL),
(44, 'Filosofía', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'Presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(45, 'Administración', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, 1, 1),
(46, 'Administración', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, 1, 1),
(47, 'Administración', 'Universidad Tecnológica de El Salvador (UTEC)', 0.00, 'presencial', '5 años', 'UTEC.png', 3, 1, 1),
(48, 'Administración', 'Universidad Don Bosco (UDB)', 0.00, 'presencial', '5 años', 'UDB.png', 10, 1, 1),
(49, 'Administración', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, 1, 1),
(50, 'Administración', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(51, 'Administración', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(52, 'Administración', 'Universidad Tecnológica de El Salvador (UTEC)', 0.00, 'presencial', '5 años', 'UTEC.png', 3, 1, 1),
(53, 'Administración', 'Universidad Don Bosco (UDB)', 0.00, 'presencial', '5 años', 'UDB.png', 10, 1, 1),
(54, 'Administración', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, 1, 1),
(55, 'Administración', 'Universidad Católca de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, 1, 1),
(56, 'Contaduría', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(57, 'Contaduría', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(58, 'Contaduría', 'Universidad Tecnológica de El Salvador (UTEC)', 0.00, 'presencial', '5 años', 'UTEC.png', 3, NULL, NULL),
(59, 'Contaduría', 'Universidad Don Bosco (UDB)', 0.00, 'presencial', '5 años', 'UDB.png', 10, NULL, NULL),
(60, 'Contaduría', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL),
(61, 'Contaduría', 'Universidad Católica de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(62, 'Economía', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(63, 'Economía', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(64, 'Mercadeo', 'Universidad de El Savador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(65, 'Mercadeo', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(66, 'Mercadeo', 'Universidad Tecnológica de El Salvador (UTEC)', 0.00, 'presencial', '5 años', 'UTEC.png', 3, NULL, NULL),
(67, 'Mercadeo', 'Universidad Don Bosco (UDB)', 0.00, 'presencial', '5 años', 'UDB.png', 10, NULL, NULL),
(68, 'Mercadeo', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL),
(69, 'Mercadeo', 'Universidad Católica de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(70, 'Matemáticas', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(71, 'Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(72, 'Biología', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(73, 'Química', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(74, 'Estadística', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(75, 'Diseño Gráfico', 'Universidad Tecnológica de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UTEC.png', 3, NULL, NULL),
(76, 'Diseño Gráfico', 'Universidad Don Bosco (UDB)', 0.00, 'presencial', '5 años', 'UCA.png', 10, NULL, NULL),
(77, 'Diseño Gráfico', 'Universidad Católica de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(78, 'Artes Plásticas', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(79, 'Enfermería', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(80, 'Enfermería', 'Universidad Católica de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(81, 'Nutrición', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(82, 'Terapia Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(83, 'Enfermería', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(84, 'Enfermería', 'Universidad Católca de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(85, 'Nutrición', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(86, 'Terapia Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(87, 'Enfermería', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(88, 'Enfermería', 'Universidad Católca de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(89, 'Nutrición', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(90, 'Terapia Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(91, 'Enfermería', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(92, 'Enfermería', 'Universidad Católca de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(93, 'Nutrición', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(94, 'Terapia Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(95, 'Enfermería', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(96, 'Enfermería', 'Universidad Católica de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(97, 'Nutrición', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(98, 'Terapia Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(99, 'Enfermería', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(100, 'Enfermería', 'Universidad Católica de El Salvador (UNICAES)', 0.00, 'presencial', '5 años', 'UNICAES.png', 14, NULL, NULL),
(101, 'Nutrición', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(102, 'Terapia Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(103, 'Fonoaudiología', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(104, 'Salud Pública', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(105, 'Edu Inicial', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(106, 'Edu Inicial', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(107, 'Edu Inicial', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL),
(108, 'Edu Básica', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(109, 'Edu Básica', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL),
(110, 'Edu Especial', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(111, 'Edu Especial', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL),
(112, 'Edu Física', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(113, 'Edu Física', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL),
(114, 'Enseñanza Inglés', 'Universidad de El Salvador (UES)', 0.00, 'presencial', '5 años', 'UES.png', 1, NULL, NULL),
(115, 'Enseñanza Inglés', 'Universidad Centroamericana José Simeón Cañas (UCA)', 0.00, 'presencial', '5 años', 'UCA.png', 2, NULL, NULL),
(116, 'Enseñanza Inglés', 'Universidad Don Bosco (UDB)', 0.00, 'presencial', '5 años', 'UDB.png', 10, NULL, NULL),
(117, 'Enseñanza Inglés', 'Universidad Pedagógica (UPED)', 0.00, 'presencial', '5 años', 'UPED.png', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas_sociales`
--

CREATE TABLE `programas_sociales` (
  `id` int(11) NOT NULL,
  `carrera` varchar(100) DEFAULT NULL,
  `universidad` varchar(150) DEFAULT NULL,
  `precio_mensual` decimal(6,2) DEFAULT NULL,
  `modalidad` varchar(50) DEFAULT NULL,
  `duracion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidads`
--

CREATE TABLE `universidads` (
  `id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `sitio_web` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `univesidad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `universidads`
--

INSERT INTO `universidads` (`id`, `image`, `nombre`, `ciudad`, `telefono`, `sitio_web`, `descripcion`, `univesidad_id`) VALUES
(1, 'UES.png', 'Universidad de El Salvador (UES)', 'San Salvador', '2297-4554', 'https://www.ues.edu.sv', 'Principal universidad pública del país, con sedes regionales y enfoque multidisciplinario e investigativo.', 1),
(2, 'UCA.png', 'Universidad Centroamericana (UCA)', 'Antiguo Cuscatlán', '2210-6600', 'https://www.uca.edu.sv', 'Privada jesuita, reconocida por su excelencia académica y compromiso con los derechos humanos.', 2),
(3, 'UTEC.png', 'Universidad Tecnológica de El Salvador (UTEC)', 'San Salvador', '2275-8888', 'https://www.utec.edu.sv', 'Privada con fuerte enfoque tecnológico y empresarial, ofrece amplia oferta virtual y presencial.', 3),
(4, 'UFG.png', 'Universidad Francisco Gavidia (UFG)', 'San Salvador', '2209-2834', 'https://www.ufg.edu.sv', 'Privada innovadora, destaca en tecnología, diseño y alianzas internacionales.', 4),
(5, 'UJMD.png', 'Universidad Dr. José Matías Delgado (UJMD)', 'Antiguo Cuscatlán', '2212-9400', 'https://www.ujmd.edu.sv', 'Privada con enfoque integral, reconocida por su excelencia en derecho, salud, diseño y comunicación.', 5),
(6, 'UPED.png', 'Universidad Pedagógica de El Salvador (UPED)', 'San Salvador', '2205-8100', 'https://www.pedagogica.edu.sv', 'Privada accesible, especializadaología, con fuerte proyección social.', 6),
(7, 'UEES.png', 'Universidad Evangélica de El Salvador (UEES)', 'San Salvador', '2275-4000', 'https://www.uees.edu.sv', 'Privada cristiana, con más de 30 años de experiencia en salud, ingeniería y ciencias sociales.', 7),
(8, 'USAM.png', 'Universidad Salvadoreña Alberto Masferrer (USAM)', 'San Salvador', '2231-9600', 'https://www.usam.edu.sv', 'Privada pionera en salud, ofrece carreras como medicina, odontología, veterinaria y tecnología.', 8),
(9, 'UNAB.png', 'Universidad Dr. Andrés Bello (UNAB)', 'San Salvador', '2510-7400', 'https://www.unab.edu.sv', 'Privada con enfoque práctico, presente en varias regiones, destaca en enfermería, economía y tecnología.', 9),
(10, 'UDB.png', 'Universidad Don Bosco (UDB)', 'Soyapango', '2251-8241', 'https://www.udb.edu.sv', 'Privada técnica, líder en ingeniería aeronáutica, biomédica y mecatrónica, con fuerte enfoque social.', 10),
(11, 'ULS.png', 'Universidad Luterana Salvadoreña (ULS)', 'San Salvador', '2133-2600', 'https://uls.edu.sv/sitioweb/', 'Privada con enfoque humanista y cristiano, promueve justicia social, agroecología y trabajo comunitario.', 11),
(12, 'UPAN.png', 'Universidad Panamericana (UPAN)', 'San Salvador', '2527-2000', 'https://upan.edu.sv/', 'Privada accesible, fundada en 1989, destaca por su formación ética en administración, contaduría y educación.', 12),
(13, 'UPES.png', 'Universidad Politécnica de El Salvador (UPES)', 'San Salvador', '0000-0000', 'https://www.upes.sv', 'it is missing', 13),
(14, 'UNICAES.png', 'Universidad Católica de El Salvador (UNICAES)', 'San Salvador', '8765-4321', 'https://www.unicaes.sv', 'it is missing actually', 14),
(15, 'monica.png', 'Escuela de Comunicación Mónica Herrera', 'San Salvador', '1827-3645', 'https://www.monicaherrera.sv', 'it is missing btw', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(500) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `contraseña` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `correo`, `fecha_registro`, `contraseña`) VALUES
(1, 'Arianna Sosa', 'arianna125@mail.com', '2025-01-17', 'ari.2450'),
(2, 'Samantha Morataya', 'samantha128@mail.com', '2025-01-20', 'sam.7212'),
(3, 'Xiomara Piche', 'xiomara891@mail.com', '2025-02-14', 'xio.7788'),
(4, 'Claudia Martinez', 'claudia172@mail.com', '2025-03-16', 'clau.6789'),
(5, 'Lisseth Quintanilla', 'lisseth412@mail.com', '2025-04-19', 'liss.7893'),
(6, 'Alexander Carballo', 'alexander543@mail.com', '2025-05-21', 'alex.0654'),
(7, 'Arianna', 'arianna@gmail.com', '2025-07-10', '$2y$10$wHE'),
(8, 'Juan', 'juan@gmail.com', '2025-07-10', '$2y$10$oFt'),
(9, 'Lola', 'lola@gmai.com', '2025-07-10', '$2y$10$gvW'),
(10, 'pedro', 'pedro@gmail.com', '2025-07-10', '$2y$10$dBr'),
(11, 'lilian', 'lilian@gmail.com', '2025-07-10', '$2y$10$zxc');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `licenciaturas`
--
ALTER TABLE `licenciaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programas_sociales`
--
ALTER TABLE `programas_sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universidads`
--
ALTER TABLE `universidads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `licenciaturas`
--
ALTER TABLE `licenciaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `programas_sociales`
--
ALTER TABLE `programas_sociales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
