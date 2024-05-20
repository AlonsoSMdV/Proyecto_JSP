-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 08:33:07
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos`
--
CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alumnos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `grupo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `grupo_id`) VALUES
(17, '\"Juan A.\"', '\"García G.\"', 3),
(20, 'Jaime', 'García', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `profesor` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `nombre`, `profesor`) VALUES
(3, '1ºESOA', 'JUAN'),
(8, '1ºESOB', 'PEPE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnos_ibfk_1` (`grupo_id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE SET NULL;
--
-- Base de datos: `blackjack`
--
CREATE DATABASE IF NOT EXISTS `blackjack` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blackjack`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `playername` varchar(50) NOT NULL,
  `wins` int(11) NOT NULL DEFAULT 0,
  `loses` int(11) NOT NULL DEFAULT 0,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `player`
--

INSERT INTO `player` (`id`, `name`, `surname`, `playername`, `wins`, `loses`, `password`) VALUES
(1, 'Alonso', 'Sanchez Moreno de Vega', 'alonso', 3, 4, 'Ab123456'),
(2, 'Pepe', 'Martinez', 'pepito', 9, 20, '123456Ab'),
(3, 'Mario', 'Balotelli', 'mario', 0, 0, '123Ab456'),
(4, 'Maria del Carmen', 'Moreno de Vega Haro', 'mamen', 0, 0, 'Mamen.72'),
(5, 'Francisco', 'Martinez del Campo', 'paco', 2, 9, 'A123456b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de datos: `blackjackgame`
--
CREATE DATABASE IF NOT EXISTS `blackjackgame` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blackjackgame`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `playername` varchar(100) NOT NULL,
  `wins` int(11) NOT NULL DEFAULT 0,
  `loses` int(11) NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `player`
--

INSERT INTO `player` (`id`, `name`, `surname`, `playername`, `wins`, `loses`, `password`) VALUES
(1, 'Alonso', 'Sanchez Moreno de Vega', 'alonso\r\n', 0, 0, 'Ab123456'),
(2, 'Juan', 'Fernandez', 'juan', 0, 0, '1234Ab56'),
(3, 'Paco', 'Perez', 'paco\r\n', 0, 0, 'Ba123456'),
(4, 'David', 'Hernandez', 'deivi', 0, 0, '654321Ba'),
(5, 'Pepe', 'Rodriguez', 'pepe', 0, 0, '123Ab456'),
(6, 'Maria', 'Jimenez', 'maria', 0, 0, '123456Cc'),
(7, 'Jose Luis', 'Sanchez Herranz', 'jose', 0, 0, 'Cb123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `ejercicio01`
--
CREATE DATABASE IF NOT EXISTS `ejercicio01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejercicio01`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `CodDep` int(11) NOT NULL,
  `NomDep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`CodDep`, `NomDep`) VALUES
(1, 'Departamento1'),
(2, 'Departamento2'),
(3, 'Contabilidad'),
(4, 'Nominas'),
(5, 'Atención al cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `CodEmp` int(11) NOT NULL,
  `NomEmp` varchar(50) NOT NULL,
  `ApeEmp` varchar(50) NOT NULL,
  `DNIEmp` varchar(9) NOT NULL,
  `CodDep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`CodEmp`, `NomEmp`, `ApeEmp`, `DNIEmp`, `CodDep`) VALUES
(1, 'Emp1', 'Ape11 Ape12', '12345678A', 1),
(2, 'Emp2', 'Ape21 Ape22', '12345678B', 1),
(3, 'Emp3', 'Ape31 Ape32', '12345678C', 2),
(4, 'Emp3', 'Ape41 Ape42', '12345678D', 2),
(5, 'Emp3', 'Ape51 Ape52', '12345678E', 3),
(6, 'Emp3', 'Ape61 Ape62', '12345678F', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`CodDep`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`CodEmp`),
  ADD KEY `CodDep` (`CodDep`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`CodDep`) REFERENCES `departamento` (`CodDep`);
--
-- Base de datos: `ejercicio03`
--
CREATE DATABASE IF NOT EXISTS `ejercicio03` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejercicio03`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `CodEsp` int(11) NOT NULL,
  `NomEsp` varchar(50) NOT NULL,
  `PesEsp` decimal(6,2) NOT NULL,
  `AltEsp` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`CodEsp`, `NomEsp`, `PesEsp`, `AltEsp`) VALUES
(1, 'Dragón', 50.60, 10.22),
(2, 'Pikachu', 7.50, 1.30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espmov`
--

CREATE TABLE `espmov` (
  `CodEsp` int(11) NOT NULL,
  `CodMov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `espmov`
--

INSERT INTO `espmov` (`CodEsp`, `CodMov`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `CodMov` int(11) NOT NULL,
  `DesMov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`CodMov`, `DesMov`) VALUES
(1, 'Salto Salvaje'),
(2, 'Volar'),
(3, 'Saltar'),
(4, 'Flotar'),
(5, 'Nadar'),
(6, 'Látigo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`CodEsp`);

--
-- Indices de la tabla `espmov`
--
ALTER TABLE `espmov`
  ADD PRIMARY KEY (`CodEsp`,`CodMov`),
  ADD KEY `CodMov` (`CodMov`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`CodMov`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `espmov`
--
ALTER TABLE `espmov`
  ADD CONSTRAINT `espmov_ibfk_1` FOREIGN KEY (`CodEsp`) REFERENCES `especies` (`CodEsp`),
  ADD CONSTRAINT `espmov_ibfk_2` FOREIGN KEY (`CodMov`) REFERENCES `movimientos` (`CodMov`);
--
-- Base de datos: `ejercicio06_01`
--
CREATE DATABASE IF NOT EXISTS `ejercicio06_01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejercicio06_01`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `CodEmp` int(11) NOT NULL,
  `NomEmp` varchar(45) NOT NULL,
  `Ape1Emp` varchar(45) NOT NULL,
  `Ape2Emp` varchar(45) DEFAULT NULL,
  `FotEmp` varchar(100) NOT NULL,
  `ForAca` text NOT NULL,
  `ExpPro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`CodEmp`, `NomEmp`, `Ape1Emp`, `Ape2Emp`, `FotEmp`, `ForAca`, `ExpPro`) VALUES
(1, 'Santino', 'Marrero', 'Quintero', 'C:\\Users\\Usuario\\Pictures\\Curriculum1', 'CFS\r\nDesarrollo de Aplicaciones Web', '2 meses de prácticas'),
(2, 'Nacho', 'Velasco', 'Diez', 'C:\\Users\\Usuario\\Pictures\\Curriculum2', 'CFS\r\nDesarrollo de Aplicaciones Multiplataforma', '3 años de autónomo'),
(3, 'Felix', 'Mendizábal', 'Seguí', 'C:\\Users\\Usuario\\Pictures\\Curriculum3', 'Grado\r\nIngeniería Informática', '5 años como informático'),
(4, 'Milagros', 'Solera', NULL, 'C:\\Users\\Usuario\\Pictures\\Curriculum4', 'CFS\r\nDesarrollo de Aplicaciones Web', '3 años');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`CodEmp`);
--
-- Base de datos: `ejercicio06_02`
--
CREATE DATABASE IF NOT EXISTS `ejercicio06_02` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejercicio06_02`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum`
--

CREATE TABLE `curriculum` (
  `CodEmp` int(11) NOT NULL,
  `FotEmp` varchar(100) NOT NULL,
  `ForAca` text NOT NULL,
  `ExpPro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `CodEmp` int(11) NOT NULL,
  `NomEmp` varchar(45) NOT NULL,
  `Ape1Emp` varchar(45) NOT NULL,
  `Ape2Emp` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`CodEmp`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`CodEmp`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `curriculum_ibfk_1` FOREIGN KEY (`CodEmp`) REFERENCES `empleado` (`CodEmp`);
--
-- Base de datos: `ejercicio06_03`
--
CREATE DATABASE IF NOT EXISTS `ejercicio06_03` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejercicio06_03`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum`
--

CREATE TABLE `curriculum` (
  `FotEmp` int(11) NOT NULL,
  `ForAca` int(11) NOT NULL,
  `ExpPro` int(11) NOT NULL,
  `CodCur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `CodEmp` int(11) NOT NULL,
  `NomEmp` varchar(45) NOT NULL,
  `Ape1Emp` varchar(45) NOT NULL,
  `Ape2Emp` varchar(45) DEFAULT NULL,
  `CodCur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`CodCur`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`CodEmp`),
  ADD KEY `CodCur` (`CodCur`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`CodCur`) REFERENCES `curriculum` (`CodCur`);
--
-- Base de datos: `ejercico02`
--
CREATE DATABASE IF NOT EXISTS `ejercico02` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejercico02`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coche`
--

CREATE TABLE `coche` (
  `CodCoche` int(11) NOT NULL,
  `Cilindrada` int(11) NOT NULL,
  `Caballos` int(11) NOT NULL,
  `Antigüedad` varchar(45) NOT NULL,
  `NumPuertas` int(11) NOT NULL,
  `Matricula` varchar(8) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `CodMod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coche`
--

INSERT INTO `coche` (`CodCoche`, `Cilindrada`, `Caballos`, `Antigüedad`, `NumPuertas`, `Matricula`, `Color`, `CodMod`) VALUES
(4, 1600, 210, '2008/05/13', 5, '1234AAD', 'gris', 1),
(2, 1400, 90, '1998/03/15', 11, '1234AAB', '', 4),
(3, 2200, 80, '1999/12/07', 3, '1234AAC', 'amarillo', 7),
(1, 1500, 110, '1995-09-30', 5, '1234AAA', 'rojo', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `CodMar` int(11) NOT NULL,
  `NomMar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`CodMar`, `NomMar`) VALUES
(1, 'Audi'),
(2, 'Citroën'),
(3, 'Seat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `CodMod` int(11) NOT NULL,
  `NomMod` varchar(50) NOT NULL,
  `CodMar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`CodMod`, `NomMod`, `CodMar`) VALUES
(1, 'A3', 1),
(2, 'A4', 1),
(3, 'A6', 1),
(4, 'C3', 2),
(5, 'C4', 2),
(6, 'C5', 2),
(7, 'Ibiza', 3),
(8, 'León', 3),
(9, 'Arona', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coche`
--
ALTER TABLE `coche`
  ADD PRIMARY KEY (`CodMod`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`CodMar`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`CodMod`),
  ADD KEY `CodMar` (`CodMar`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coche`
--
ALTER TABLE `coche`
  ADD CONSTRAINT `coche_ibfk_1` FOREIGN KEY (`CodMod`) REFERENCES `modelo` (`CodMod`);

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`CodMar`) REFERENCES `marca` (`CodMar`);
--
-- Base de datos: `personify`
--
CREATE DATABASE IF NOT EXISTS `personify` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personify`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `individuos`
--

CREATE TABLE `individuos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `progenitor1` int(11) DEFAULT NULL,
  `progenitor2` int(11) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `fecha_def` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `individuos`
--

INSERT INTO `individuos` (`id`, `nombre`, `apellido1`, `apellido2`, `progenitor1`, `progenitor2`, `fecha_nac`, `fecha_def`) VALUES
(1, 'Juan Antonio', 'Garcia', 'Gomez', NULL, NULL, '1976-12-12', NULL),
(2, 'Maria del Mar', 'Valencia', 'Valencia', NULL, NULL, '1976-12-11', NULL),
(3, 'Juan', 'Garcia', 'Valencia', 1, 2, '2019-07-11', NULL),
(4, 'Lucia', 'Benitez', 'Andrade', 7, 8, '2020-02-11', NULL),
(5, 'Alejandro', 'Garcia', 'Benitez', 3, 4, '2039-01-02', NULL),
(6, 'Maria', 'Garcia', 'Benitez', 3, 4, '2042-05-10', NULL),
(7, 'Antonio', 'Benitez', 'Cuenca', NULL, NULL, '1990-01-01', NULL),
(8, 'Carmen', 'Andrade', 'Los Santos', NULL, NULL, '1990-02-02', '2022-05-01'),
(15, 'Antonio', 'Benitez', 'Andrade', 7, 8, '2022-07-13', NULL),
(18, 'Alonso', 'Sanchez', 'Moreno de Vega', NULL, NULL, '2004-10-01', '2089-12-31'),
(19, 'Lucas', 'Martinez ', 'Sanchez', NULL, NULL, '1789-09-18', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `individuos`
--
ALTER TABLE `individuos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progenitor1` (`progenitor1`),
  ADD KEY `progenitor2` (`progenitor2`),
  ADD KEY `apellido1` (`apellido1`),
  ADD KEY `apellido2` (`apellido2`),
  ADD KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `individuos`
--
ALTER TABLE `individuos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `individuos`
--
ALTER TABLE `individuos`
  ADD CONSTRAINT `individuos_ibfk_1` FOREIGN KEY (`progenitor1`) REFERENCES `individuos` (`id`),
  ADD CONSTRAINT `individuos_ibfk_2` FOREIGN KEY (`progenitor2`) REFERENCES `individuos` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'Blackjack', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"alumnos\",\"blackjack\",\"blackjackgame\",\"ejercicio01\",\"ejercicio03\",\"ejercicio06_01\",\"ejercicio06_02\",\"ejercicio06_03\",\"ejercico02\",\"personify\",\"phpmyadmin\",\"test\",\"users\",\"users2\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"blackjack\",\"table\":\"player\"},{\"db\":\"blackjackgame\",\"table\":\"player\"},{\"db\":\"users2\",\"table\":\"users\"},{\"db\":\"users\",\"table\":\"users\"},{\"db\":\"personify\",\"table\":\"individuos\"},{\"db\":\"alumnos\",\"table\":\"grupos\"},{\"db\":\"alumnos\",\"table\":\"alumnos\"},{\"db\":\"ejercicio03\",\"table\":\"EspMov\"},{\"db\":\"ejercicio03\",\"table\":\"especies\"},{\"db\":\"ejercico02\",\"table\":\"coche\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ejercico02', 'coche', '{\"sorted_col\":\"`coche`.`Color` ASC\"}', '2023-10-24 10:43:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-20 06:16:13', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":183}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `password`) VALUES
(1, 'Juan A.', 'García Gómez', 'juan', 'tururu'),
(2, 'GarcÃ­a', 'ale', 'Ale', '123'),
(3, 'GarcÃ­a', 'pepe', 'Pepe', '123'),
(4, 'Gil', 'carlos', 'carlos', '123'),
(5, 'Sarmiento', 'Cristobal', 'cris', '123'),
(6, 'Sanchez', 'alonso', 'Alonso', '123'),
(7, 'Ferran', 'Torres', 'ferran', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `users2`
--
CREATE DATABASE IF NOT EXISTS `users2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `password`) VALUES
(1, 'Alonso', 'Sanchez', 'alonso', 'Ab123456'),
(2, 'Pepe', 'Rodriguez', 'pepe', '12345Ab'),
(3, 'a', 'av', 'aaa', '123'),
(4, 'Alonso', 'Sanchez', 'alonso', 'Ab'),
(5, 'Alonso', 'Sanchez', 'alonso', '56'),
(6, 'Pepe', 'Rodriguez', 'pepe', '12345Ab'),
(7, 'a', 'av', 'aaa', '123'),
(8, 'Alonso', 'Sanchez', 'alonso', '1234'),
(9, 'Pepe', 'Rodriguez', 'pepe', '12345Ab'),
(10, 'a', 'av', 'aaa', '123'),
(11, 'Pepe', 'Rodriguez', 'pepe', '12345Ab'),
(12, 'a', 'av', 'aaa', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
