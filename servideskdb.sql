-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2019 a las 05:17:43
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `servideskdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidenciastbl`
--

CREATE TABLE `incidenciastbl` (
  `ID_INCIDENTE` bigint(15) NOT NULL,
  `DOC_USUARIO` bigint(25) NOT NULL,
  `FECHA_INCIDENTE` date NOT NULL,
  `DES_INCIDENCIA` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `TIPO_INCIDENCIA` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ESTADO_INCIDENCIA` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `PRONOSTICO_PRE` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `RESOLUCION` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `TEC_ASIGNADO` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ID_TECNICO` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `incidenciastbl`
--

INSERT INTO `incidenciastbl` (`ID_INCIDENTE`, `DOC_USUARIO`, `FECHA_INCIDENTE`, `DES_INCIDENCIA`, `TIPO_INCIDENCIA`, `ESTADO_INCIDENCIA`, `PRONOSTICO_PRE`, `RESOLUCION`, `TEC_ASIGNADO`, `ID_TECNICO`) VALUES
(10, 12345678, '2018-09-16', 'No hay ambiente certificación', 'Red', 'Activo', 'El servidor COMFFLGBVL esta caido.', '', 'Rogelio Ruiz II', 6),
(11, 3123123123, '2019-01-15', 'No hay red', 'Red', 'Cerrado', 'no habia red ', 'Se han cambiado los parámetros de la red.', 'Teolin Pinguin', 7),
(12, 12345678, '2019-01-31', ' certificado mal', 'Red', 'Activo', 'Certificado vencido', '', 'Kevin', 0),
(13, 88888, '2019-01-31', ' no hay cable por que las ratas se la comieron', 'Red', 'Cerrado', 'No habia calbe', 'ya hay cable', 'Kevin', 0),
(14, 312332, '2019-01-31', ' celular muerto', 'Comunicacion', 'Cerrado', 'celular sin cargar', 'cargador listo', 'Miguel', 0),
(15, 12345678, '2019-02-03', ' FADSF', 'Red', 'Activo', 'FASDF', 'FASDF', 'Miguel', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicotbl`
--

CREATE TABLE `tecnicotbl` (
  `ID_TECNICO` bigint(20) NOT NULL,
  `DOC_TECNICO` bigint(20) NOT NULL,
  `NOMBRE_TECNICO` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `PERFIL_TECNICO` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `CORREO_TECNICO` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO_TECNICO` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `CONTRASENA_TECNICO` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tecnicotbl`
--

INSERT INTO `tecnicotbl` (`ID_TECNICO`, `DOC_TECNICO`, `NOMBRE_TECNICO`, `PERFIL_TECNICO`, `CORREO_TECNICO`, `TELEFONO_TECNICO`, `CONTRASENA_TECNICO`) VALUES
(1, 1214747539, 'Miguel Gutiérrez', 'Administrador', 'miguel@servidesk.com', '3215676', '1234'),
(4, 99092704021, 'Mariano Fernandez', ' CallCenter', 'Mariano@user.com', '213123', '123456789'),
(6, 777555333, 'Rogelio Ruiz II', ' Tecnico en Seguridad', 'rogelio@user.com', '213123', '123456'),
(7, 999555111, 'Teolin Pinguin', ' Tecnico en Seguridad', 'teolin@user.com', '88092123', '147852'),
(8, 888555222, 'Fernando', ' Experto en Capacitacion', 'Fernando@user.com', '147852', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoincidentetbl`
--

CREATE TABLE `tipoincidentetbl` (
  `ID_INCIDENCIA` bigint(15) NOT NULL,
  `TIPO_INCIDENCIA` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipoincidentetbl`
--

INSERT INTO `tipoincidentetbl` (`ID_INCIDENCIA`, `TIPO_INCIDENCIA`) VALUES
(1, 'Trivial'),
(2, 'Red'),
(3, 'Comunicacion'),
(4, 'Software'),
(5, 'Hardware'),
(6, 'Seguridad'),
(7, 'Capacitación'),
(8, 'Aplicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariostbl`
--

CREATE TABLE `usuariostbl` (
  `ID_USUARIO` bigint(20) NOT NULL,
  `NOMBRE_USUARIO` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `NUMERO_USUARIO` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `CORREO_USUARIO` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `EMPRESA_USUARIO` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `AREA_USUARIO` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuariostbl`
--

INSERT INTO `usuariostbl` (`ID_USUARIO`, `NOMBRE_USUARIO`, `NUMERO_USUARIO`, `CORREO_USUARIO`, `EMPRESA_USUARIO`, `AREA_USUARIO`) VALUES
(12345678, 'Mariano Lopez', '12313', 'Mariano@user.com', 'Bancolombia', 'Redes'),
(111111111, 'Rogelio Ruiz', '1234567', 'rogelio@user.com', 'Bancolombia', 'Desarrollo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `incidenciastbl`
--
ALTER TABLE `incidenciastbl`
  ADD PRIMARY KEY (`ID_INCIDENTE`);

--
-- Indices de la tabla `tecnicotbl`
--
ALTER TABLE `tecnicotbl`
  ADD PRIMARY KEY (`ID_TECNICO`);

--
-- Indices de la tabla `tipoincidentetbl`
--
ALTER TABLE `tipoincidentetbl`
  ADD PRIMARY KEY (`ID_INCIDENCIA`);

--
-- Indices de la tabla `usuariostbl`
--
ALTER TABLE `usuariostbl`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `incidenciastbl`
--
ALTER TABLE `incidenciastbl`
  MODIFY `ID_INCIDENTE` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tecnicotbl`
--
ALTER TABLE `tecnicotbl`
  MODIFY `ID_TECNICO` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipoincidentetbl`
--
ALTER TABLE `tipoincidentetbl`
  MODIFY `ID_INCIDENCIA` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
