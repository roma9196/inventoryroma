-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2020 a las 00:19:58
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deped`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, ' Equipo'),
(2, 'Muebles y accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Trabajando'),
(2, 'Suspendido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(48, 'John', ' ', 'Dough', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(49, 'Magdali', 'Cecibel', 'Sanchez Basurto', 1, 2, 'Magdali_Sanchez Basurto', '3c21354b68ea8c4014865526b41134b2', 1, 1),
(50, 'Rogelio ', 'Eduardo', 'Mero Santana', 2, 2, 'Rogelio _Mero Santana', '4a1349a8e6839f7c93dcd847ea6488eb', 2, 1),
(51, 'Erick ', 'Andres', 'Castro Loor', 1, 9, 'Erick _Castro Loor', 'da3779fd8cbcff30e2712b236ce8a459', 1, 1),
(52, 'Maria ', 'Elena', 'Loor', 2, 9, 'Maria _Loor', '8bd0b8ec30b1ba8926994247bcdfb490', 2, 1),
(53, 'A', 'B', 'C', 2, 9, 'a_c', '56ab2340b7ee17e2ac8486ddb4464c87', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT 4,
  `status_id` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(1, 'mouse', 'mmmmm', 'nnnnn', 'bbbbb', 258, '2020-10-07', 49, 1, 1, 4),
(36, 'Teclado', ' ', ' ', ' ', 10, '2020-10-06', 50, 2, 1, 4),
(37, 'Silla', ' ', ' ', ' ', 20, '2020-10-06', 51, 2, 1, 4),
(38, 'Mueble', '259', 'lok', 'Djsn', 268, '2020-10-07', 48, 1, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(4, 'none');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_off`
--

CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'PERSONAL'),
(2, 'TECNICO'),
(9, 'Administracion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'Oficial de tecnología de la información'),
(2, 'Encargado del centro'),
(3, 'Informacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT 1,
  `req_is_done` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_request`
--

INSERT INTO `tbl_request` (`req_id`, `req_date`, `item_id`, `req_type_id`, `req_status_id`, `req_is_done`) VALUES
(2, '2020-10-06', 36, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected'),
(4, 'mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indices de la tabla `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indices de la tabla `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indices de la tabla `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indices de la tabla `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indices de la tabla `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indices de la tabla `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indices de la tabla `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indices de la tabla `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indices de la tabla `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Filtros para la tabla `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

--
-- Filtros para la tabla `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_request_ibfk_2` FOREIGN KEY (`req_type_id`) REFERENCES `tbl_req_type` (`req_type_id`),
  ADD CONSTRAINT `tbl_request_ibfk_3` FOREIGN KEY (`req_status_id`) REFERENCES `tbl_req_status` (`req_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
