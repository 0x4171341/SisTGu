-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2018 a las 14:42:37
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE `carro` (
  `id_placa` varchar(10) NOT NULL,
  `id_organizacion` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `capacidad_vehiculo` int(3) NOT NULL,
  `s_carroceria` varchar(50) NOT NULL,
  `s_motor` varchar(50) NOT NULL,
  `motor_modelo` varchar(100) NOT NULL,
  `motor_marca` varchar(100) NOT NULL,
  `permisologia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla Maestra de Carro';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_cedula` int(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_organizacion` varchar(100) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `telefono` int(12) NOT NULL,
  `grado_licencia` int(2) NOT NULL,
  `id_placa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla Maestra de Conductor';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizacion`
--

CREATE TABLE `organizacion` (
  `id_organizacion` varchar(100) NOT NULL,
  `rama` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `cedula` int(9) NOT NULL,
  `rif` int(15) NOT NULL,
  `telefono` int(12) NOT NULL,
  `telefono1` int(12) NOT NULL,
  `correo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla Maestra de Organizacion';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id_cedula` int(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_organizacion` varchar(100) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `telefono` int(12) NOT NULL,
  `grado_licencia` int(2) NOT NULL,
  `id_placa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla Maestra Propietario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_nombre` varchar(100) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla Maestra de Usuario';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_placa`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_cedula`),
  ADD KEY `id_placa` (`id_placa`),
  ADD KEY `id_organizacion` (`id_organizacion`);

--
-- Indices de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  ADD PRIMARY KEY (`id_organizacion`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id_cedula`),
  ADD KEY `id_placa` (`id_placa`),
  ADD KEY `id_organizacion` (`id_organizacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_nombre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`id_placa`) REFERENCES `carro` (`id_placa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conductor_ibfk_2` FOREIGN KEY (`id_organizacion`) REFERENCES `organizacion` (`id_organizacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD CONSTRAINT `propietario_ibfk_1` FOREIGN KEY (`id_placa`) REFERENCES `carro` (`id_placa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `propietario_ibfk_2` FOREIGN KEY (`id_organizacion`) REFERENCES `organizacion` (`id_organizacion`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
