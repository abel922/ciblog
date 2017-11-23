-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2017 a las 16:58:55
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciblog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `create_at`) VALUES
(1, 1, 'Business', '2017-11-21 14:59:02'),
(3, 1, 'Games', '2017-11-21 15:45:25'),
(5, 2, 'Books', '2017-11-22 12:51:28'),
(7, 2, 'Movies', '2017-11-23 15:19:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 12, 'Abel García Luis', 'abel922@hotmail.com', 'Great game', '2017-11-22 13:27:33'),
(2, 12, 'Jean Doe', 'jean@gmail.com', 'Thank you for this awesome post', '2017-11-22 13:35:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(11, 7, 1, 'Resident Evil Post', 'Resident-Evil-Post', '<p><strong>Biohazard:&nbsp;</strong>nombre con que se conoce en Jap&oacute;n&mdash;, rebautizado en Estados Unidos y Europa como Resident Evil (&quot;la maldad residente&quot;), es una serie de videojuegos y una franquicia de medios, entre los que se incluyen Manga, novelas, pel&iacute;culas y coleccionables como figuras de acci&oacute;n, gu&iacute;as de estrategia y otras publicaciones.1? Desarrollados por Capcom y creados por Shinji Mikami la mayor&iacute;a, al a&ntilde;o 2014, se han vendido 61 millones de copias de los videojuegos en todo el mundo. As&iacute; como en la saga principal de videojuegos, como en otros medios, la trama gira en torno al mismo conflicto: la amenaza bioterrorista. Un peligroso virus se ha propagado por error o intencionalmente por la Corporaci&oacute;n Umbrella, este al infectar a los humanos, los transforma en seres amorfos y monstruos.</p>\r\n', '0XAKVmZq.jpg', '2017-11-21 15:45:41'),
(12, 3, 1, 'Kingom Hearts Post', 'Kingom-Hearts-Post', '<p><strong>Kingdom Hearts&nbsp;</strong>es el nombre de la serie de videojuegos, perteneciente al g&eacute;nero de juegos de rol de acci&oacute;n, desarrollado y publicado por Square Enix. Surge de la colaboraci&oacute;n de Square Enix y Disney Interactive Studios, bajo la direcci&oacute;n de Tetsuya Nomura, dise&ntilde;ador de larga trayectoria en Square Enix. Kingdom Hearts es un crossover de varios t&iacute;tulos de dibujos animados de Disney pero siendo adaptados al universo del juego. La serie cuenta con un doblaje All-Stars, ya que incluye muchas de las voces oficiales de los personajes de Disney y tambi&eacute;n a reconocidos actores tales como Haley Joel Osment, David Gallagher, Jesse McCartney y Hayden Panettiere. Tambi&eacute;n hacen aparici&oacute;n personajes de la serie Final Fantasy de Square Enix, los cuales interact&uacute;an con el jugador y los personajes de Disney. La serie se centra en la b&uacute;squeda de los amigos del personaje principal, Sora, lo cual lo llevara a recorrer varios mundos en donde conocer&aacute; a los distintos personajes de Disney y Final Fantasy.</p>\r\n', '011.jpg', '2017-11-21 15:47:39'),
(13, 1, 1, 'Post sin imagen', 'Post-sin-imagen', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas turpis id purus viverra ornare. Maecenas volutpat vitae leo vel ullamcorper. Phasellus id molestie urna. Aliquam vel semper erat. Praesent venenatis consectetur auctor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur eget nulla vel arcu vehicula vulputate ut dignissim ex. Etiam diam eros, facilisis vitae turpis non, vestibulum placerat mi. Pellentesque nec ante vestibulum, congue turpis at, condimentum ex.</p>\r\n', 'noimage.jpg', '2017-11-21 15:48:12'),
(14, 5, 2, 'Game of Thrones Ice and Fire', 'Game-of-Thrones-Ice-and-Fire', '<p><strong>A Song of Ice and Fire</strong> is a series of epic fantasy novels by the American novelist and screenwriter George R. R. Martin. He began the first volume of the series, A Game of Thrones, in 1991 and had it published in 1996. Martin, who initially envisioned the series as a trilogy, has published five out of a planned seven volumes.&nbsp;</p>\r\n', '61uMbKlGR1L.jpg', '2017-11-23 13:59:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'User testing', '02918', 'test@test.com', 'Test', 'e10adc3949ba59abbe56e057f20f883e', '2017-11-23 13:02:52'),
(2, 'Abel García Luis', '07560', 'abel922@hotmail.com', 'abel922', 'f507fa2a18b3ad7d1add779c099f5f80', '2017-11-23 13:54:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
