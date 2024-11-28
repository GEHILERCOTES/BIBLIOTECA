-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 22:58:45
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `ID_autor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`ID_autor`, `nombre`, `nacionalidad`, `fecha_nacimiento`) VALUES
(1, 'GABRIEL GARCIA MARQUEZ', 'COLOMBIANA', '1927-03-06'),
(2, 'J.K. ROWLING', 'BRITANICA', '1965-07-31'),
(3, 'GEORGE ORWELL', 'BRITANICA', '1903-03-25'),
(4, 'GABRIEL GARCIA MARQUEZ', 'COLOMBIANA', '1927-03-06'),
(5, 'J.K. ROWLING', 'BRITANICA', '1965-07-31'),
(6, 'GEORGE ORWELL', 'BRITANICA', '1903-03-25'),
(7, 'GABRIEL GARCIA MARQUEZ', 'COLOMBIANA', '1927-03-06'),
(8, 'J.K. ROWLING', 'BRITANICA', '1965-07-31'),
(9, 'GEORGE ORWELL', 'BRITANICA', '1903-03-25'),
(10, 'GABRIEL GARCIA MARQUEZ', 'COLOMBIANA', '1927-03-06'),
(11, 'J.K. ROWLING', 'BRITANICA', '1965-07-31'),
(12, 'GEORGE ORWELL', 'BRITANICA', '1903-03-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'novela'),
(2, 'ciencia ficcion'),
(3, 'fantasia'),
(4, 'ensayo'),
(5, 'novela'),
(6, 'ciencia ficcion'),
(7, 'fantasia'),
(8, 'ensayo'),
(9, 'novela'),
(10, 'ciencia ficcion'),
(11, 'fantasia'),
(12, 'ensayo'),
(13, 'novela'),
(14, 'ciencia ficcion'),
(15, 'fantasia'),
(16, 'ensayo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ID_libro` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `ID_autor` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `año_publicacion` int(11) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ID_libro`, `titulo`, `ID_autor`, `id_categoria`, `año_publicacion`, `disponible`) VALUES
(1, 'cien años de soledad', 1, 1, 1967, 1),
(2, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(3, '1984', 3, 2, 1949, 1),
(4, 'cien años de soledad', 1, 1, 1967, 1),
(5, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(6, '1984', 3, 2, 1949, 1),
(7, 'cien años de soledad', 1, 1, 1967, 1),
(8, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(9, '1984', 3, 2, 1949, 1),
(10, 'cien años de soledad', 1, 1, 1967, 1),
(11, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(12, '1984', 3, 2, 1949, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ID_libro` int(11) DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_usuario`, `ID_libro`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(1, 1, 1, '2024-08-01', '2024-08-15'),
(2, 2, 2, '2024-08-02', '2024-08-16'),
(3, 1, 1, '2024-08-01', '2024-08-15'),
(4, 2, 2, '2024-08-02', '2024-08-16'),
(5, 1, 1, '2024-08-01', '2024-08-15'),
(6, 2, 2, '2024-08-02', '2024-08-16'),
(7, 1, 1, '2024-08-01', '2024-08-15'),
(8, 2, 2, '2024-08-02', '2024-08-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos_usuarios`
--

CREATE TABLE `prestamos_usuarios` (
  `ID_Relacion` int(11) NOT NULL,
  `ID_Prestamo` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_usuario`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'carlos martinez', 'calle luna,123', '123456789'),
(2, 'lucia fernandez', 'avenida sol,456', '987654321'),
(3, 'carlos martinez', 'calle luna,123', '123456789'),
(4, 'lucia fernandez', 'avenida sol,456', '987654321'),
(5, 'carlos martinez', 'calle luna,123', '123456789'),
(6, 'lucia fernandez', 'avenida sol,456', '987654321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`ID_autor`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ID_libro`),
  ADD KEY `ID_autor` (`ID_autor`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `ID_libro` (`ID_libro`);

--
-- Indices de la tabla `prestamos_usuarios`
--
ALTER TABLE `prestamos_usuarios`
  ADD PRIMARY KEY (`ID_Relacion`),
  ADD KEY `ID_Prestamo` (`ID_Prestamo`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `ID_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ID_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `prestamos_usuarios`
--
ALTER TABLE `prestamos_usuarios`
  MODIFY `ID_Relacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`ID_autor`) REFERENCES `autores` (`ID_autor`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`ID_libro`) REFERENCES `libros` (`ID_libro`);

--
-- Filtros para la tabla `prestamos_usuarios`
--
ALTER TABLE `prestamos_usuarios`
  ADD CONSTRAINT `prestamos_usuarios_ibfk_1` FOREIGN KEY (`ID_Prestamo`) REFERENCES `prestamos` (`id_prestamo`),
  ADD CONSTRAINT `prestamos_usuarios_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
