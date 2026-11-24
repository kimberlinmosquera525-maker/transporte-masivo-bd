-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 14:46:43
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
-- Base de datos: `bd_transmilenio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_conductor`
--

CREATE TABLE `tb_conductor` (
  `id_conductor` int(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cedula` int(10) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `fk_id_transmilenio` int(10) DEFAULT NULL,
  `fk_id_rutas` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_conductor`
--

INSERT INTO `tb_conductor` (`id_conductor`, `nombre`, `apellido`, `cedula`, `telefono`, `direccion`, `turno`, `fk_id_transmilenio`, `fk_id_rutas`) VALUES
(1, 'Juan', 'Perez', 1025405121, 3001111121, 'Kr 4 # 10-20', 'Mañana', 1, 1),
(2, 'Maria', 'Gomez', 1025405122, 3002222232, 'Cl 5 # 11-30', 'Tarde', 2, 2),
(3, 'Kevin', 'Torres', 1025405123, 3003333343, 'Kr 6 # 12-40', 'Mañana', 3, 3),
(4, 'Natalia', 'Ruiz', 1025405124, 3004444454, 'Cl 7 # 13-50', 'Noche', 4, 4),
(5, 'Andres', 'Lopez', 1025405125, 3005555565, 'Kr 8 # 14-60', 'Mañana', 5, 5),
(6, 'Camila', 'Diaz', 1025405126, 3006666676, 'Cl 9 # 15-70', 'Tarde', 6, 6),
(7, 'Felipe', 'Castro', 1025405127, 3007777787, 'Kr 10 # 16-80', 'Mañana', 7, 7),
(8, 'Valentina', 'Mora', 1025405128, 3008888898, 'Cl 11 # 17-90', 'Noche', 8, 8),
(9, 'Santiago', 'Rojas', 1025405129, 3009999909, 'Kr 12 # 18-10', 'Tarde', 9, 9),
(10, 'Daniela', 'Vega', 1025405130, 3010000010, 'Cl 13 # 19-20', 'Mañana', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_jefe`
--

CREATE TABLE `tb_jefe` (
  `id_jefe` int(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cedula` int(10) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `fk_id_transmilenio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_jefe`
--

INSERT INTO `tb_jefe` (`id_jefe`, `nombre`, `apellido`, `cedula`, `telefono`, `direccion`, `nombre_empresa`, `fk_id_transmilenio`) VALUES
(1, 'Andres', 'Mendez', 1025405101, 3001111111, 'Kr 10 # 20-30', 'TransMilenio S.A.', 1),
(2, 'Paola', 'Gomez', 1025405102, 3002222222, 'Cl 15 # 25-40', 'TransMilenio S.A.', 2),
(3, 'Carlos', 'Ruiz', 1025405103, 3003333333, 'Kr 20 # 30-50', 'SITP Bogota', 3),
(4, 'Ana', 'Torres', 1025405104, 3004444444, 'Cl 25 # 35-60', 'TransMilenio S.A.', 4),
(5, 'Luis', 'Diaz', 1025405105, 3005555555, 'Kr 30 # 40-70', 'SITP Bogota', 5),
(6, 'Laura', 'Lopez', 1025405106, 3006666666, 'Cl 35 # 45-80', 'TransMilenio S.A.', 6),
(7, 'Pedro', 'Castro', 1025405107, 3007777777, 'Kr 40 # 50-90', 'SITP Bogota', 7),
(8, 'Sofia', 'Mora', 1025405108, 3008888888, 'Cl 45 # 55-10', 'TransMilenio S.A.', 8),
(9, 'Diego', 'Rojas', 1025405109, 3009999999, 'Kr 50 # 60-20', 'TransMilenio S.A.', 9),
(10, 'Paula', 'Vega', 1025405110, 3010000000, 'Cl 55 # 65-30', 'SITP Bogota', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rutas_transmilenio`
--

CREATE TABLE `tb_rutas_transmilenio` (
  `id_rutas` int(10) NOT NULL,
  `estacion` varchar(50) DEFAULT NULL,
  `horario` date DEFAULT NULL,
  `nombre_ruta` varchar(50) DEFAULT NULL,
  `codigo_ruta` varchar(20) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `frecuencia` tinyint(1) DEFAULT NULL,
  `fk_id_conductor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rutas_transmilenio`
--

INSERT INTO `tb_rutas_transmilenio` (`id_rutas`, `estacion`, `horario`, `nombre_ruta`, `codigo_ruta`, `destino`, `frecuencia`, `fk_id_conductor`) VALUES
(1, 'Portal Norte', '2026-01-05', 'B10 Portal Norte - Portal Sur', 'B10', 'Portal Sur', 1, 1),
(2, 'Calle 100', '2026-01-05', 'C15 Calle 100 - Portal Usme', 'C15', 'Portal Usme', 1, 2),
(3, 'Av. Jimenez', '2026-01-05', 'D20 Av Jimenez - Portal 80', 'D20', 'Portal 80', 0, 3),
(4, 'Calle 72', '2026-01-05', 'F23 Calle 72 - Portal Americas', 'F23', 'Portal Americas', 1, 4),
(5, 'Portal Suba', '2026-01-05', 'C29 Portal Suba - Portal 20 Julio', 'C29', 'Portal 20 Julio', 1, 5),
(6, 'Universidades', '2026-01-05', 'J24 Universidades - Portal 80', 'J24', 'Portal 80', 0, 6),
(7, 'Portal Tunal', '2026-01-05', 'H15 Portal Tunal - Portal Norte', 'H15', 'Portal Norte', 1, 7),
(8, 'Calle 26', '2026-01-05', 'K10 Calle 26 - Portal El Dorado', 'K10', 'Portal El Dorado', 1, 8),
(9, 'Portal Usme', '2026-01-05', 'G11 Portal Usme - Portal Norte', 'G11', 'Portal Norte', 0, 9),
(10, 'Portal Americas', '2026-01-05', 'F10 Portal Americas - Portal Norte', 'F10', 'Portal Norte', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_transmilenio`
--

CREATE TABLE `tb_transmilenio` (
  `id_transmilenio` int(10) NOT NULL,
  `conductor` varchar(50) DEFAULT NULL,
  `codigo_transmilenio` varchar(20) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `fk_id_jefe` int(10) DEFAULT NULL,
  `fk_id_conductor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_transmilenio`
--

INSERT INTO `tb_transmilenio` (`id_transmilenio`, `conductor`, `codigo_transmilenio`, `empresa`, `fk_id_jefe`, `fk_id_conductor`) VALUES
(1, 'Juan Perez', 'TM-001', 'TransMilenio S.A.', 1, 1),
(2, 'Maria Gomez', 'TM-002', 'TransMilenio S.A.', 2, 2),
(3, 'Kevin Torres', 'TM-003', 'SITP Bogota', 3, 3),
(4, 'Natalia Ruiz', 'TM-004', 'TransMilenio S.A.', 4, 4),
(5, 'Andres Lopez', 'TM-005', 'SITP Bogota', 5, 5),
(6, 'Camila Diaz', 'TM-006', 'TransMilenio S.A.', 6, 6),
(7, 'Felipe Castro', 'TM-007', 'SITP Bogota', 7, 7),
(8, 'Valentina Mora', 'TM-008', 'TransMilenio S.A.', 8, 8),
(9, 'Santiago Rojas', 'TM-009', 'TransMilenio S.A.', 9, 9),
(10, 'Daniela Vega', 'TM-010', 'SITP Bogota', 10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_conductor`
--
ALTER TABLE `tb_conductor`
  ADD PRIMARY KEY (`id_conductor`),
  ADD KEY `fk_id_transmilenio` (`fk_id_transmilenio`),
  ADD KEY `fk_id_rutas` (`fk_id_rutas`);

--
-- Indices de la tabla `tb_jefe`
--
ALTER TABLE `tb_jefe`
  ADD PRIMARY KEY (`id_jefe`),
  ADD KEY `fk_id_transmilenio` (`fk_id_transmilenio`);

--
-- Indices de la tabla `tb_rutas_transmilenio`
--
ALTER TABLE `tb_rutas_transmilenio`
  ADD PRIMARY KEY (`id_rutas`),
  ADD KEY `fk_id_conductor` (`fk_id_conductor`);

--
-- Indices de la tabla `tb_transmilenio`
--
ALTER TABLE `tb_transmilenio`
  ADD PRIMARY KEY (`id_transmilenio`),
  ADD KEY `fk_id_jefe` (`fk_id_jefe`),
  ADD KEY `fk_id_conductor` (`fk_id_conductor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_conductor`
--
ALTER TABLE `tb_conductor`
  ADD CONSTRAINT `tb_conductor_ibfk_1` FOREIGN KEY (`fk_id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`),
  ADD CONSTRAINT `tb_conductor_ibfk_2` FOREIGN KEY (`fk_id_rutas`) REFERENCES `tb_rutas_transmilenio` (`id_rutas`);

--
-- Filtros para la tabla `tb_jefe`
--
ALTER TABLE `tb_jefe`
  ADD CONSTRAINT `tb_jefe_ibfk_1` FOREIGN KEY (`fk_id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`);

--
-- Filtros para la tabla `tb_rutas_transmilenio`
--
ALTER TABLE `tb_rutas_transmilenio`
  ADD CONSTRAINT `tb_rutas_transmilenio_ibfk_1` FOREIGN KEY (`fk_id_conductor`) REFERENCES `tb_conductor` (`id_conductor`);

--
-- Filtros para la tabla `tb_transmilenio`
--
ALTER TABLE `tb_transmilenio`
  ADD CONSTRAINT `tb_transmilenio_ibfk_1` FOREIGN KEY (`fk_id_jefe`) REFERENCES `tb_jefe` (`id_jefe`),
  ADD CONSTRAINT `tb_transmilenio_ibfk_2` FOREIGN KEY (`fk_id_conductor`) REFERENCES `tb_conductor` (`id_conductor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
