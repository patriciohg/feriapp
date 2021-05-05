-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2021 a las 04:59:34
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `i7317491_ci1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categ` int(3) NOT NULL,
  `nombre_categ` varchar(80) NOT NULL,
  `desc_categ` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categ`, `nombre_categ`, `desc_categ`) VALUES
(1, 'Vestimenta Custom', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons'),
(2, 'Peluches de Algodón', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons'),
(3, 'Peluches de Lana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.'),
(4, 'Figuras de Greda', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.'),
(5, 'Tazones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id_comuna` int(3) NOT NULL,
  `id_region` int(2) NOT NULL,
  `nombre_comuna` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id_comuna`, `id_region`, `nombre_comuna`) VALUES
(7, 6, 'Valparaíso'),
(8, 6, 'Viña del Mar'),
(9, 6, 'Concon'),
(10, 6, 'Villa Alemana'),
(11, 6, 'Quilpué'),
(12, 6, 'Quillota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courier`
--

CREATE TABLE `courier` (
  `id_courier` int(2) NOT NULL,
  `nombre_courier` varchar(80) NOT NULL,
  `logo_courier` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `courier`
--

INSERT INTO `courier` (`id_courier`, `nombre_courier`, `logo_courier`) VALUES
(1, 'Starken', '/starken.png'),
(2, 'Chilexpress', '/chilexpress.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_producto`
--

CREATE TABLE `multimedia_producto` (
  `id_multi` int(10) NOT NULL,
  `id_prod` int(10) NOT NULL,
  `nombre_multi` varchar(80) NOT NULL,
  `desc_multi` varchar(256) NOT NULL,
  `arch_multi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimedia_producto`
--

INSERT INTO `multimedia_producto` (`id_multi`, `id_prod`, `nombre_multi`, `desc_multi`, `arch_multi`) VALUES
(1, 1, 'Foto Polera Blanca', 'Foto real donde mi usándola.', '/Tienda_1/Producto1.jpeg'),
(2, 2, 'Foto Polera Negra', 'La foto de la polera es referencial', '/Tienda_1/Producto2.jpg'),
(3, 3, 'Foto Polera Gris', 'La foto de la polera es referencial', '/Tienda_1/Producto3.jpg'),
(4, 4, 'Foto Polera Negra', 'La foto de la polera es referencial', '/Tienda_1/Producto4.jpg'),
(5, 5, 'Foto Polera Azul', 'La foto de la polera es referencial', '/Tienda_1/Producto5.jpg'),
(6, 6, 'Foto de los diferentes tipos de colores', 'Todos los colores disponibles', '/Tienda_2/Producto6.jpg'),
(7, 7, 'Foto del peluche', 'Foto en donde se muestra la calidad del tejido.', '/Tienda_2/Producto7.jpg'),
(8, 8, 'Foto Peluche en Verde', '', '/Tienda_2/Producto8.jpg'),
(9, 9, 'Foto Peluche Hollow Knight', 'Hecho con buen material', '/Tienda_2/Producto9.jpg'),
(12, 12, 'Peluche_de_pikachu.jpg', 'Peluche de pikachu.', '/Tienda_3/Producto10.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `id_orden` int(10) NOT NULL,
  `rut_usuario` int(9) NOT NULL,
  `id_tienda` int(5) NOT NULL,
  `id_courier` int(2) NOT NULL,
  `fecha_compra` date NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orden_compra`
--

INSERT INTO `orden_compra` (`id_orden`, `rut_usuario`, `id_tienda`, `id_courier`, `fecha_compra`, `total`) VALUES
(17, 21381717, 1, 1, '2020-12-13', 20000),
(18, 21381717, 2, 1, '2020-12-13', 25000),
(19, 21381717, 1, 1, '2020-12-13', 10000),
(20, 21381717, 2, 1, '2020-12-13', 30000),
(21, 21381717, 2, 1, '2020-12-13', 7000),
(22, 21381717, 1, 1, '2020-12-13', 8000),
(23, 21381717, 1, 1, '2020-12-13', 6000),
(24, 21381717, 2, 2, '2020-12-13', 10000),
(25, 21381717, 1, 2, '2020-12-13', 8000),
(26, 21381717, 2, 2, '2020-12-13', 15000),
(27, 21381717, 1, 1, '2020-12-13', 10000),
(28, 21381717, 2, 1, '2020-12-13', 10000),
(29, 21381717, 2, 1, '2020-12-13', 10000),
(30, 21381717, 2, 1, '2020-12-13', 10000),
(31, 21381717, 2, 1, '2020-12-13', 10000),
(32, 21381717, 2, 1, '2020-12-13', 10000),
(33, 21381717, 2, 1, '2020-12-13', 10000),
(34, 21381717, 2, 1, '2020-12-13', 10000),
(35, 21381717, 2, 1, '2020-12-13', 10000),
(36, 21381717, 2, 1, '2020-12-13', 10000),
(37, 21381717, 2, 1, '2020-12-13', 10000),
(38, 21381717, 2, 1, '2020-12-13', 10000),
(39, 21381717, 2, 1, '2020-12-13', 10000),
(40, 21381717, 2, 1, '2020-12-13', 10000),
(41, 21381717, 2, 1, '2020-12-13', 10000),
(42, 21381717, 2, 1, '2020-12-13', 10000),
(43, 21381717, 2, 1, '2020-12-13', 10000),
(44, 21381717, 2, 1, '2020-12-13', 10000),
(45, 21381717, 2, 1, '2020-12-13', 10000),
(46, 21381717, 2, 1, '2020-12-13', 10000),
(47, 21381717, 2, 1, '2020-12-13', 10000),
(48, 21381717, 2, 1, '2020-12-13', 10000),
(49, 21381717, 2, 1, '2020-12-13', 10000),
(50, 21381717, 2, 1, '2020-12-13', 10000),
(51, 21381717, 2, 1, '2020-12-13', 10000),
(52, 21381717, 2, 1, '2020-12-13', 10000),
(53, 21381717, 2, 1, '2020-12-13', 10000),
(54, 21381717, 2, 1, '2020-12-13', 10000),
(55, 21381717, 2, 1, '2020-12-13', 10000),
(56, 21381717, 2, 1, '2020-12-13', 10000),
(57, 21381717, 2, 1, '2020-12-13', 10000),
(58, 21381717, 2, 1, '2020-12-13', 10000),
(59, 21381717, 2, 1, '2020-12-13', 10000),
(60, 21381717, 2, 1, '2020-12-13', 10000),
(61, 21381717, 2, 1, '2020-12-13', 10000),
(62, 21381717, 2, 1, '2020-12-13', 10000),
(63, 21381717, 2, 1, '2020-12-13', 10000),
(64, 21381717, 2, 1, '2020-12-13', 10000),
(65, 21381717, 2, 1, '2020-12-13', 10000),
(66, 21381717, 2, 1, '2020-12-13', 10000),
(67, 21381717, 2, 1, '2020-12-13', 10000),
(68, 21381717, 2, 1, '2020-12-13', 10000),
(69, 21381717, 2, 1, '2020-12-13', 10000),
(70, 21381717, 2, 1, '2020-12-13', 10000),
(71, 21381717, 2, 1, '2020-12-13', 10000),
(72, 21381717, 2, 1, '2020-12-13', 10000),
(73, 21381717, 2, 1, '2020-12-13', 10000),
(74, 21381717, 2, 1, '2020-12-13', 10000),
(75, 21381717, 2, 1, '2020-12-13', 10000),
(76, 21381717, 2, 1, '2020-12-13', 10000),
(77, 21381717, 2, 1, '2020-12-13', 10000),
(78, 21381717, 2, 1, '2020-12-13', 10000),
(79, 21381717, 2, 1, '2020-12-13', 10000),
(80, 21381717, 2, 2, '2020-12-13', 20000),
(81, 21381717, 2, 2, '2020-12-15', 10000),
(82, 21381717, 1, 2, '2020-12-15', 5000),
(83, 21381717, 2, 2, '2021-05-02', 19500),
(84, 21381717, 2, 2, '2021-05-02', 10000),
(85, 21381717, 2, 2, '2021-05-05', 5000),
(86, 21381717, 1, 2, '2021-05-05', 8000),
(87, 21381717, 1, 2, '2021-05-05', 15000),
(88, 21381717, 1, 2, '2021-05-05', 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_prod` int(10) NOT NULL,
  `id_tienda` int(5) NOT NULL,
  `id_categ` int(3) NOT NULL,
  `nombre_prod` varchar(80) NOT NULL,
  `desc_prod` varchar(256) NOT NULL,
  `precio_prod_act` int(10) NOT NULL,
  `precio_prod_ant` int(10) NOT NULL,
  `stock_prod` int(8) NOT NULL,
  `cant_ventas` int(10) NOT NULL,
  `oferta` int(1) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_prod`, `id_tienda`, `id_categ`, `nombre_prod`, `desc_prod`, `precio_prod_act`, `precio_prod_ant`, `stock_prod`, `cant_ventas`, `oferta`, `estado`) VALUES
(1, 1, 1, 'Producto 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons', 10000, 10000, 20, 5, 0, 1),
(2, 1, 1, 'Producto 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons', 5000, 8000, 9, 2, 1, 1),
(3, 1, 1, 'Producto 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons', 6000, 12000, 5, 0, 1, 1),
(4, 1, 1, 'Producto 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.', 8000, 8000, 9, 1, 0, 1),
(5, 1, 1, 'Producto 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.', 8000, 10000, 5, 10, 1, 1),
(6, 2, 2, 'Producto 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.', 5000, 6000, 50, 10, 1, 0),
(7, 2, 2, 'Producto 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.', 4500, 5000, 15, 4, 1, 1),
(8, 2, 2, 'Producto 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.', 10000, 15000, 20, 15, 1, 1),
(9, 2, 2, 'Producto 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.', 10000, 15000, 25, 15, 1, 1),
(12, 2, 2, 'Peluche de pikachu', 'Peluche de pikachu.', 10000, 10000, 18, 2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_orden`
--

CREATE TABLE `producto_orden` (
  `id_orden` int(12) NOT NULL,
  `id_prod` int(10) NOT NULL,
  `cantidad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_orden`
--

INSERT INTO `producto_orden` (`id_orden`, `id_prod`, `cantidad`) VALUES
(17, 1, 2),
(18, 6, 1),
(18, 8, 1),
(18, 9, 1),
(19, 1, 1),
(20, 8, 2),
(20, 9, 1),
(21, 7, 1),
(22, 4, 1),
(23, 3, 1),
(24, 9, 1),
(25, 5, 1),
(26, 6, 1),
(26, 8, 1),
(27, 1, 1),
(28, 9, 1),
(29, 9, 1),
(30, 8, 1),
(31, 8, 1),
(32, 8, 1),
(33, 8, 1),
(34, 8, 1),
(35, 8, 1),
(36, 8, 1),
(37, 8, 1),
(38, 8, 1),
(39, 8, 1),
(40, 8, 1),
(41, 8, 1),
(42, 8, 1),
(43, 8, 1),
(44, 8, 1),
(45, 8, 1),
(46, 8, 1),
(47, 8, 1),
(48, 8, 1),
(49, 8, 1),
(50, 8, 1),
(51, 8, 1),
(52, 8, 1),
(53, 8, 1),
(54, 8, 1),
(55, 8, 1),
(56, 8, 1),
(57, 8, 1),
(58, 8, 1),
(59, 8, 1),
(60, 8, 1),
(61, 8, 1),
(62, 8, 1),
(63, 8, 1),
(64, 8, 1),
(65, 8, 1),
(66, 8, 1),
(67, 8, 1),
(68, 8, 1),
(69, 8, 1),
(70, 8, 1),
(71, 8, 1),
(72, 8, 1),
(73, 8, 1),
(74, 8, 1),
(75, 8, 1),
(76, 8, 1),
(77, 8, 1),
(78, 8, 1),
(79, 8, 1),
(80, 9, 2),
(81, 12, 1),
(82, 2, 1),
(83, 12, 1),
(84, 12, 1),
(85, 6, 1),
(86, 5, 1),
(87, 1, 1),
(87, 2, 1),
(88, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(2) NOT NULL,
  `nombre_region` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id_region`, `nombre_region`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaiso'),
(7, 'Metropolitana de Santiago'),
(8, 'Libertador General Bernardo O Higgins'),
(9, 'Maule'),
(10, 'Biobío'),
(11, 'La Araucanía'),
(12, 'Los Ríos'),
(13, 'Los Lagos'),
(14, 'Aisén del General Carlos Ibáñez del Campo'),
(15, 'Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id_tienda` int(5) NOT NULL,
  `rut_usuario` int(9) NOT NULL,
  `id_comuna` int(3) NOT NULL,
  `nombre_tienda` varchar(80) NOT NULL,
  `desc_tienda` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id_tienda`, `rut_usuario`, `id_comuna`, `nombre_tienda`, `desc_tienda`) VALUES
(1, 18360950, 7, 'Tienda 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons'),
(2, 19904309, 11, 'Tienda 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu urna eu elit pharetra cursus. Vestibulum eget convallis lacus. Quisque id dignissim metus. Fusce congue in eros in tristique. Fusce consequat scelerisque risus, sit amet malesuada justo cons'),
(5, 17351575, 10, 'Tienda 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dapibus nec metus ac suscipit. Quisque iaculis cursus libero. Nulla ac congue tortor, sit amet sagittis ex. Suspendisse potenti. Aliquam erat volutpat. Duis odio eros, sodales a tincidunt.'),
(6, 19229000, 9, 'Tienda 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut magna in elit pharetra rhoncus eget ac magna. Nam ullamcorper ipsum eu purus aliquam, vitae luctus sapien consequat. Nunc vestibulum nisi sit amet nisl convallis lacinia. Praesent pharetra.'),
(7, 22227252, 8, 'Tienda 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin massa enim, interdum at lectus non, tempus ultricies lacus. Fusce mattis finibus hendrerit. Vestibulum in mi id massa semper semper nec pellentesque neque. In dignissim in ex a auctor molestie.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `rut_usuario` int(9) NOT NULL,
  `nombre_usuario` varchar(80) NOT NULL,
  `apellido_pat` varchar(80) NOT NULL,
  `apellido_mat` varchar(80) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `rol` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`rut_usuario`, `nombre_usuario`, `apellido_pat`, `apellido_mat`, `email`, `password`, `telefono`, `rol`) VALUES
(17351575, 'Francis', 'Guerrero', 'Gonzalez', 'francisGuerrero', '317a20ad70c86115b15a7875b99f5745b79bf4c6', '987321654', 1),
(18360950, 'Tessa', 'Bailey', 'Reyes', 'tessaBailey@gmail.com', '6f30ed792c8c06e14a60abc0d919cc3820afd228', '888888888', 1),
(19229000, 'Emelia', 'Campos', 'O\'Reilly', 'emiliaCampos@gmail.com', 'emilia123', '123456789', 1),
(19904309, 'Randy', 'Dominguez', 'Coleman', 'randyDomingez@gmail.com', '925f9ba18d2eedd8ed766f44178195d75c31399d', '999999999', 1),
(21381717, 'Leona', 'Duncan', 'Lewis', 'leonaDuncan@gmail.com', 'leona123', '879546213', 0),
(22227252, 'Sofia', 'Molina', 'Castillo', 'sofiaMolina@gmail.com', 'sofia123', '987654321', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_direccion`
--

CREATE TABLE `usuario_direccion` (
  `id_direccion` int(10) NOT NULL,
  `rut_usuario` int(9) NOT NULL,
  `id_comuna` int(3) NOT NULL,
  `nombre_direccion` varchar(256) NOT NULL,
  `calle` varchar(256) NOT NULL,
  `departamento` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_direccion`
--

INSERT INTO `usuario_direccion` (`id_direccion`, `rut_usuario`, `id_comuna`, `nombre_direccion`, `calle`, `departamento`) VALUES
(1, 21381717, 11, 'Mi casita', 'Calle donde sea #980', 'Condominio sin Nombre, Casa 10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categ`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id_comuna`),
  ADD KEY `id_region` (`id_region`);

--
-- Indices de la tabla `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id_courier`);

--
-- Indices de la tabla `multimedia_producto`
--
ALTER TABLE `multimedia_producto`
  ADD PRIMARY KEY (`id_multi`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indices de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `rut_usuario` (`rut_usuario`,`id_tienda`,`id_courier`),
  ADD KEY `id_courier` (`id_courier`),
  ADD KEY `id_tienda` (`id_tienda`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `id_tienda` (`id_tienda`,`id_categ`),
  ADD KEY `id_categ` (`id_categ`);

--
-- Indices de la tabla `producto_orden`
--
ALTER TABLE `producto_orden`
  ADD PRIMARY KEY (`id_orden`,`id_prod`),
  ADD KEY `id_orden` (`id_orden`,`id_prod`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id_tienda`),
  ADD KEY `rut_usuario` (`rut_usuario`,`id_comuna`),
  ADD KEY `id_comuna` (`id_comuna`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`rut_usuario`);

--
-- Indices de la tabla `usuario_direccion`
--
ALTER TABLE `usuario_direccion`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `rut_usuario` (`rut_usuario`,`id_comuna`),
  ADD KEY `id_comuna` (`id_comuna`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categ` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id_comuna` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `courier`
--
ALTER TABLE `courier`
  MODIFY `id_courier` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `multimedia_producto`
--
ALTER TABLE `multimedia_producto`
  MODIFY `id_multi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  MODIFY `id_orden` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_prod` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id_tienda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario_direccion`
--
ALTER TABLE `usuario_direccion`
  MODIFY `id_direccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `multimedia_producto`
--
ALTER TABLE `multimedia_producto`
  ADD CONSTRAINT `multimedia_producto_ibfk_1` FOREIGN KEY (`id_prod`) REFERENCES `producto` (`id_prod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`rut_usuario`) REFERENCES `usuario` (`rut_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orden_compra_ibfk_2` FOREIGN KEY (`id_courier`) REFERENCES `courier` (`id_courier`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orden_compra_ibfk_3` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_categ`) REFERENCES `categoria` (`id_categ`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto_orden`
--
ALTER TABLE `producto_orden`
  ADD CONSTRAINT `producto_orden_ibfk_1` FOREIGN KEY (`id_prod`) REFERENCES `producto` (`id_prod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `producto_orden_ibfk_2` FOREIGN KEY (`id_orden`) REFERENCES `orden_compra` (`id_orden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`rut_usuario`) REFERENCES `usuario` (`rut_usuario`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tienda_ibfk_2` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id_comuna`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_direccion`
--
ALTER TABLE `usuario_direccion`
  ADD CONSTRAINT `usuario_direccion_ibfk_1` FOREIGN KEY (`rut_usuario`) REFERENCES `usuario` (`rut_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_direccion_ibfk_2` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id_comuna`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
