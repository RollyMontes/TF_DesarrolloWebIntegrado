-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2023 a las 06:40:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `idCita` int(11) NOT NULL,
  `nombre_doc` varchar(20) NOT NULL,
  `apellido_doc` varchar(20) NOT NULL,
  `hora_cita` varchar(8) NOT NULL,
  `fecha_cita` varchar(10) NOT NULL,
  `especialidad` varchar(60) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`idCita`, `nombre_doc`, `apellido_doc`, `hora_cita`, `fecha_cita`, `especialidad`, `estado`) VALUES
(1, 'Rodrigo', 'Garza', '16:30:00', '17/10/2023', 'OFTALMOLOGIA INTEGRAL', 'Disponible'),
(2, 'Pablo', 'Sanchez', '17:30:00', '17/10/2023', 'OFTALMOLOGIA INTEGRAL', 'Finalizado'),
(3, 'Juan', 'Gonzales', '18:30:00', '18/10/2023', 'OFTALMOLOGIA INTEGRAL', 'Ocupado'),
(4, 'Dr. Smith', 'Gómez', '12:30:00', '2023-12-17', 'OFTALMOLOGIA INTEGRAL', 'Disponible'),
(5, 'Dra. Johnson', 'López', '10:30:00', '2023-12-19', 'CIRUGIA DE CATARATAS', 'Disponible'),
(6, 'Dr. Williams', 'Rodríguez', '15:30:00', '2023-12-20', 'TRATAMIENTO DE GLAUCOMA', 'Disponible'),
(7, 'Dra. Brown', 'Martínez', '17:30:00', '2023-12-20', 'CORRECCION DE VISION CON LASER', 'Disponible'),
(8, 'Dr. Jones', 'Pérez', '13:30:00', '2023-12-21', 'TRATAMIENTO DE RETINA', 'Disponible'),
(9, 'Dra. Davis', 'González', '16:30:00', '2023-12-21', 'ATENCION PEDIATRICA', 'Disponible'),
(10, 'Dr. Miller', 'Hernández', '16:30:00', '2023-12-26', 'TERAPIA OJO SECO', 'Disponible'),
(11, 'Dra. Wilson', 'Díaz', '16:30:00', '2023-12-27', 'TRATAMIENTO DE ESTRABISMO', 'Disponible'),
(12, 'Dr. Moore', 'Ramírez', '16:30:00', '2023-12-28', 'PATOLOGIA OCULAR', 'Disponible'),
(13, 'DANIEL ALEX', 'SUCLLE LUQUE', '15:30', '2023-12-14', 'PATOLOGIA OCULAR', 'Disponible'),
(14, 'DANIEL ALEX', 'SUCLLE LUQUE', '15:00', '2023-12-14', 'TRATAMIENTO DE ESTRABISMO', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `idDoctor` int(11) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fnacimiento` date NOT NULL,
  `especialidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`idDoctor`, `dni`, `nombre`, `apellido`, `telefono`, `correo`, `fnacimiento`, `especialidad`) VALUES
(1, '73384123', 'DANIEL ALEX', 'SUCLLE LUQUE', '902011153', 'alexdspe02@gmail.com', '2002-01-31', 'PATOLOGIA OCULAR'),
(3, '11111111', 'KENYIz', 'PURISz', '654654654', 'asa@gmail.com', '1995-01-31', 'OFTALMOLOGIA INTEGRAL'),
(5, '75432132', 'PEPE', 'RUIZ', '915321321', 'a@gmail.com', '1999-01-01', 'TERAPIA OJO SECO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dudas`
--

CREATE TABLE `dudas` (
  `id` int(11) NOT NULL,
  `nombreD` varchar(30) NOT NULL,
  `correoD` varchar(50) NOT NULL,
  `mensajeD` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dudas`
--

INSERT INTO `dudas` (`id`, `nombreD`, `correoD`, `mensajeD`) VALUES
(1, 'Hugo Daniel', 'hugodanielcajacuri@gmail.com', 'Me pueden dar más detalles sobre los tratamientos? '),
(2, 'Daniel', 'hugodanielcajacuri@gmail.com', 'dsaddaddsaddadsadad'),
(3, 'asdadaddad', 'sdadsdsaddasd', 'sadsadadadadad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `especialidad` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `especialidad`) VALUES
(2, 'OFTALMOLOGIA INTEGRAL'),
(3, 'CIRUGIA DE CATARATAS'),
(4, 'TRATAMIENTRO DE GLAUCOMA'),
(5, 'CORRECCION DE VISION CON LASER'),
(6, 'TRATAMIENTO DE RETINA'),
(7, 'ATENCION PEDIATRICA'),
(8, 'TERAPIA OJO SECO'),
(9, 'TRATAMIENTO DE ESTRABISMO'),
(10, 'PATOLOGIA OCULAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL,
  `idCita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idPago`, `idCita`) VALUES
(1, 2),
(2, 2),
(3, 3),
(4, 5),
(5, 2),
(6, 5),
(7, 6),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `user_dni` varchar(8) NOT NULL,
  `user_nom_ape` varchar(100) NOT NULL,
  `user_tel` varchar(9) NOT NULL,
  `correo_user` varchar(50) NOT NULL,
  `pass_user` varchar(20) NOT NULL,
  `rol_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `user_dni`, `user_nom_ape`, `user_tel`, `correo_user`, `pass_user`, `rol_user`) VALUES
(1, '77044867', 'Daniel Alvarez', '997697553', 'user@gmail.com', '123456', 'Paciente'),
(2, '73384736', 'DANIEL ALEX SUCLLE LUQUE', '902011153', 'alexdspe02@gmail.com', 'Alexsuclle3101!', 'Administrador'),
(4, '40001466', 'Maria Flores', '999888666', 'MaFlo@gmail.com', '1234', 'Paciente'),
(5, '70001466', 'Kevin Rosado', '913575455', 'keRo@gmail.com', '123456', 'Paciente'),
(6, '40001488', 'Clarence Flores', '961704566', 'ClaF@gmail.com', '123456', 'Paciente'),
(7, '40001499', 'Marta Loren', '998877665', 'MarLo@gmail.com', '123456', 'Paciente'),
(8, '77044867', 'dasad adasda', '6876', 'dsad@gmail.com', '1234', 'Paciente'),
(9, '99055945', 'Magaly Suarez', '999111222', 'maga@gmail.com', '1234', 'Paciente'),
(10, '88166897', 'Gustavo Perez', '923222000', 'gus@gmail.com', '123456', 'Paciente'),
(11, '88055221', 'Martin Magallanes', '991102233', 'mag@gmail.com', '123456', 'Paciente'),
(12, '77000112', 'Laura Figueroa', '961704577', 'laufig@gmail.com', '123456', 'Paciente'),
(13, '11223344', 'Juan Humberto Linarez Alva', '900011445', 'juanhum@gmail.com', '123456', 'Paciente'),
(43, '55667799', 'Hugo Daniel Cajacuri Aburto', '977888132', 'hugodanielcajacuri@gmail.com', '123456', 'Paciente'),
(44, 'sdad', 'sadaadad', 'sdad', 'sadajhgjh@gmail.com', '1234', 'Paciente'),
(45, 'sdad', 'sddadsdddd', 'sadda', 'sdsaddadds@gmail.com', '123', 'Paciente'),
(46, 'kjhk', 'hjkjhkjh', 'jhkhk', 'jkhkll@gmail.com', '1234', 'Paciente'),
(47, 'lkjlkjj', 'ljklkjñjkl', 'kljjlk', 'kñljk@gmail.com', '12345', 'Paciente'),
(48, 'lkjlkjj', 'ljklkjñjkl', 'kljjlk', 'kñljk@gmail.com', '123456', 'Paciente'),
(49, 'sadadshf', 'sjhkjkasa', 'fsdfds', 'ljopiok@gmail.com', '123', 'Paciente'),
(50, 'opiipoip', 'poippppo', 'poip', 'poipoip@gmail.com', '456', 'Paciente'),
(51, 'oipoilil', 'ioppiiiii', 'oiiiio', 'dfdsfsd@gmail.com', '7777', 'Paciente'),
(52, '77044888', 'Hugo Daniel Cajacuri Aburto', '999111000', 'hugodanielcajacuri@gmai.com', '123456', 'Paciente'),
(53, '77044888', 'Hugo Daniel Cajacuri Aburto', '999111000', 'hugodanielcajacuri@gmai.com', '123456', 'Paciente'),
(54, 'sdaadd', 'sdaddaadaaa', 'dsad', 'hugodanielcajacuri@gmail.com', '456', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cita`
--

CREATE TABLE `usuario_cita` (
  `idCita` int(11) DEFAULT NULL,
  `user_dni` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_cita`
--

INSERT INTO `usuario_cita` (`idCita`, `user_dni`) VALUES
(2, '77044867'),
(3, '77044867');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`idCita`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`idDoctor`);

--
-- Indices de la tabla `dudas`
--
ALTER TABLE `dudas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `idDoctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dudas`
--
ALTER TABLE `dudas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
