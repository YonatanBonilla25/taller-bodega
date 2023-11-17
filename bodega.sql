-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 19:09:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `Id_Ingreso` int(11) NOT NULL,
  `Codigo_Producto` int(11) NOT NULL,
  `Cantidad_Pruducto` int(50) NOT NULL,
  `Fecha_Ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`Id_Ingreso`, `Codigo_Producto`, `Cantidad_Pruducto`, `Fecha_Ingreso`) VALUES
(3, 101, 100, '2023-11-17'),
(4, 102, 50, '2023-11-16'),
(5, 103, 30, '2023-11-17'),
(6, 104, 50, '2023-11-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Codigo_Producto` int(11) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Precio_Producto` varchar(50) NOT NULL,
  `Fecha_Vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Codigo_Producto`, `Nombre_Producto`, `Precio_Producto`, `Fecha_Vencimiento`) VALUES
(101, 'Leche', '3500', '2023-12-20'),
(102, 'Chocolate', '1000', '2023-12-19'),
(103, 'Queso', '3000', '2023-12-26'),
(104, 'Galletas', '3000', '2024-01-14'),
(105, 'Tostadas', '6000', '2024-01-18'),
(106, 'Panela', '3500', '2024-01-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`Id_Ingreso`),
  ADD UNIQUE KEY `Codigo_Producto` (`Codigo_Producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo_Producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `Id_Ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `FK_Codigo_Producto` FOREIGN KEY (`Codigo_Producto`) REFERENCES `productos` (`Codigo_Producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
