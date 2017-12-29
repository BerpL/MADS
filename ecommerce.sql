-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2017 a las 23:30:44
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'ROPA', 'ropa', '2017-12-29 17:48:00'),
(2, 'CALZADO', 'calzado', '2017-12-29 17:48:14'),
(3, 'ACCESORIOS', 'accesorios', '2017-12-29 17:48:30'),
(4, 'TECNOLOGÍA', 'tecnologia', '2017-12-29 17:48:50'),
(5, 'CURSOS', 'cursos', '2017-12-29 17:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#47bac1', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\r\n	\"red\": \"fa-facebook\",\r\n	\"estilo\": \"facebookBlanco\",\r\n	\"url\": \"http://facebook.com/\"\r\n}, {\r\n	\"red\": \"fa-youtube\",\r\n	\"estilo\": \"youtubeBlanco\",\r\n	\"url\": \"http://youtube.com/\"\r\n}, {\r\n	\"red\": \"fa-twitter\",\r\n	\"estilo\": \"twitterBlanco\",\r\n	\"url\": \"http://twitter.com/\"\r\n}, {\r\n	\"red\": \"fa-google-plus\",\r\n	\"estilo\": \"googleBlanco\",\r\n	\"url\": \"http://google.com/\"\r\n}, {\r\n	\"red\": \"fa-instagram\",\r\n	\"estilo\": \"instagramBlanco\",\r\n	\"url\": \"http://instagram.com/\"\r\n}]', '2017-12-29 04:49:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Ropa para dama', 1, 'ropa-para-dama', '2017-12-29 18:03:32'),
(2, 'Ropa para hombre', 1, 'ropa-para-hombre', '2017-12-29 18:03:41'),
(3, 'Ropa deportiva', 1, 'ropa-deportiva', '2017-12-29 18:03:46'),
(4, 'Ropa infantil', 1, 'ropa-infantil', '2017-12-29 18:03:52'),
(5, 'Calzado para dama', 2, 'calzado-para-dama', '2017-12-29 18:05:05'),
(6, 'Calzado para hombre', 2, 'calzado-para-hombre', '2017-12-29 18:05:19'),
(7, 'Calzado deportivo', 2, 'calzado-deportivo', '2017-12-29 18:05:32'),
(8, 'Calzado infantil', 2, 'calzado-infantil', '2017-12-29 18:05:44'),
(9, 'Bolsos', 3, 'bolsos', '2017-12-29 18:05:56'),
(10, 'Relojes', 3, 'relojes', '2017-12-29 18:06:08'),
(11, 'Pulseras', 3, 'pulseras', '2017-12-29 18:06:38'),
(12, 'Collares', 3, 'collares', '2017-12-29 18:06:51'),
(13, 'Gafas de sol', 3, 'gafas-de-sol', '2017-12-29 18:07:03'),
(14, 'Teléfonos Móvil', 4, 'telefonos-movil', '2017-12-29 18:07:42'),
(15, 'Tabletas Electrónicas', 4, 'tabletas-electronicas', '2017-12-29 18:07:31'),
(16, 'Computadoras', 4, 'computadoras', '2017-12-29 18:07:57'),
(17, 'Auriculares', 4, 'auriculares', '2017-12-29 18:08:09'),
(18, 'Desarrollo Web', 5, 'desarrollo-web', '2017-12-29 18:09:21'),
(19, 'Aplicaciones Móviles', 5, 'aplicaciones-moviles', '2017-12-29 18:09:14'),
(20, 'Diseño Gráfico', 5, 'diseno-grafico', '2017-12-29 18:09:09'),
(21, 'Marketing Digital', 5, 'marketing-digital', '2017-12-29 18:09:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
