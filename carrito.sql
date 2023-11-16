-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 04:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrito`
--

-- --------------------------------------------------------

--
-- Table structure for table `albumes`
--

CREATE TABLE `albumes` (
  `id_alb` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albumes`
--

INSERT INTO `albumes` (`id_alb`, `usuario`, `fecha`, `nombre`) VALUES
(1, 2, '2017-07-13', 'Publicaciones'),
(2, 4, '2017-07-13', 'Publicaciones');

-- --------------------------------------------------------

--
-- Table structure for table `american`
--

CREATE TABLE `american` (
  `imagen` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `Product` varchar(200) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `talla` varchar(5) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `american`
--

INSERT INTO `american` (`imagen`, `id`, `Product`, `nombre`, `descripcion`, `precio`, `categoria`, `talla`, `color`) VALUES
('American2.jpg', 32, 'Logo2.jpg', 'Lucas', 'Camiseta', 75, 'Hombre', 'M', 'Black'),
('American1.jpg', 33, 'Logo2.jpg', 'Lester', 'short', 320, 'Mujer', '4', 'Black'),
('American3.jpg', 34, 'Logo2.jpg', 'Mike', 'Pijama', 65, 'Unisex', 'M', 'Black'),
('American5.jpg', 35, 'Logo2.jpg', 'Mich', 'Sudaderas ', 110, 'hombre', 'L', 'Gris'),
('American6.jpg', 36, 'Logo2.jpg', 'Luck', 'Camiseta', 50, 'Hombre', 'M', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `amigos`
--

CREATE TABLE `amigos` (
  `id_ami` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  `para` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amigos`
--

INSERT INTO `amigos` (`id_ami`, `de`, `para`, `fecha`, `estado`) VALUES
(46, 2, 1, '2017-07-13 18:18:51', 0),
(49, 3, 1, '2017-07-13 18:37:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bodega`
--

CREATE TABLE `bodega` (
  `id_bodega` int(11) NOT NULL,
  `b_nombreBodega` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caja`
--

CREATE TABLE `caja` (
  `CodCaja` int(11) NOT NULL,
  `CJ_NombreCaja` varchar(20) NOT NULL,
  `CJ_Serie` char(8) NOT NULL,
  `FechaCierre` timestamp NOT NULL DEFAULT current_timestamp(),
  `CJ_Bodega` int(11) NOT NULL,
  `MontoInicial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caja`
--

INSERT INTO `caja` (`CodCaja`, `CJ_NombreCaja`, `CJ_Serie`, `FechaCierre`, `CJ_Bodega`, `MontoInicial`) VALUES
(1, 'Nicole', '4', '2021-06-07 23:14:18', 56, 100),
(2, 'Bri', '38', '2021-06-07 23:14:18', 57, 200);

-- --------------------------------------------------------

--
-- Table structure for table `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Mujeres', 'Ropar para dama', 'women.jpg'),
(2, 'Hombres', 'Ropa para hombre', 'men.jpg'),
(3, 'anime', 'Ropa para otakus', ''),
(4, 'Accesorios', 'Todo tipo de complementos adicional a su compra', ''),
(5, 'Rock', 'Ropa para metaleros y anicos/detergente', ''),
(6, 'Ropa formal', 'Hombre serio', ''),
(7, 'Deporte', 'Perfil movido', ''),
(8, 'Temporada', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id_cha` int(11) NOT NULL,
  `id_cch` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  `para` int(11) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `fecha` datetime NOT NULL,
  `leido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id_cha`, `id_cch`, `de`, `para`, `mensaje`, `fecha`, `leido`) VALUES
(15, 1, 1, 4, 'Hola', '2017-07-21 19:33:57', 1),
(16, 1, 1, 4, 'Hola de nuevo', '2017-07-21 19:34:44', 1),
(17, 1, 1, 4, 'que tal?', '2017-07-21 19:36:02', 1),
(18, 2, 1, 2, 'Que tal andres?', '2017-07-21 19:36:30', 1),
(19, 3, 1, 3, 'Hola carlos que tal?', '2017-07-21 19:42:23', 1),
(20, 3, 3, 1, 'Hola tuntoriales un gusto conocerte', '2017-07-21 19:42:50', 1),
(21, 3, 3, 1, 'Subve mas videos porfavor', '2017-07-21 19:43:17', 1),
(22, 3, 1, 3, 'Buenas', '2017-07-21 19:50:03', 1),
(23, 3, 1, 3, 'Sic laro subire mas videos', '2017-07-21 19:50:25', 1),
(24, 3, 3, 1, 'Chao', '2017-07-21 19:51:34', 1),
(25, 2, 2, 1, 'Hola amigo andres porque no me respondes', '2017-07-21 20:00:11', 1),
(26, 3, 3, 1, 'Hola', '2017-07-21 20:10:00', 1),
(27, 3, 1, 3, 'Hola carlos', '2017-07-21 20:10:33', 1),
(28, 3, 1, 3, 'Hola carlos', '2017-07-21 20:14:40', 1),
(29, 1, 1, 4, 'Hola bro que tal?', '2017-10-28 10:18:55', 1),
(30, 1, 4, 1, 'Hola bien y tu', '2017-10-28 10:19:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id_com` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `fecha` datetime NOT NULL,
  `publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id_com`, `usuario`, `comentario`, `fecha`, `publicacion`) VALUES
(1, 2, 'Great post!', '2017-07-13 16:58:29', 1),
(2, 1, 'Bonito paisaje :D', '2017-07-13 17:20:58', 2),
(3, 4, 'Lindas casas ', '2017-07-13 17:21:27', 2),
(4, 4, 'Si', '2017-07-13 17:21:53', 1),
(5, 1, 'Thanks :D', '2017-07-13 17:22:11', 1),
(6, 1, 'Nice', '2017-07-13 17:25:01', 3),
(7, 3, 'Que tal tuntoriales', '2017-07-13 18:37:55', 1),
(8, 1, 'Probando esto', '2017-08-11 13:01:54', 4),
(9, 1, 'fgf', '2017-08-11 13:10:50', 3),
(10, 1, 'sfsd', '2017-08-11 13:11:06', 4),
(11, 1, 'fdfs', '2017-08-11 13:15:06', 4),
(12, 1, 'fdfssgrs', '2017-08-11 13:15:08', 4),
(13, 1, 'ddfd', '2017-08-11 13:16:16', 4),
(14, 1, 'fghfdh', '2017-08-11 13:20:34', 4),
(15, 1, 'jaja', '2017-08-11 13:21:04', 4),
(16, 0, '1dfdf', '2017-08-11 13:22:38', 4),
(17, 1, 'que tal', '2017-08-11 13:25:13', 3),
(18, 1, 'aaa', '2017-08-11 13:28:32', 4),
(19, 1, 'dfd', '2017-08-11 13:30:46', 4),
(20, 1, 'a', '2017-08-11 13:30:51', 3),
(21, 1, 'a', '2017-08-11 13:31:30', 4),
(22, 1, 'sadas', '2017-08-11 13:31:52', 4),
(23, 1, 'e', '2017-08-11 13:33:32', 4),
(24, 1, 'que tal', '2017-08-11 13:33:47', 4),
(25, 1, 'amigos', '2017-08-11 13:33:50', 4),
(26, 1, 'ya', '2017-09-25 08:42:35', 4),
(27, 1, 'yaps', '2017-09-25 08:42:36', 4),
(28, 1, 'Hola tuntoriales', '2017-10-23 14:39:05', 4),
(29, 1, 'hola', '2017-10-23 14:46:07', 4),
(30, 3, 'Hola que tal tunto', '2017-10-23 14:46:47', 4),
(31, 1, 'hola', '2017-10-23 14:51:14', 4),
(32, 1, 'hola', '2017-10-28 10:18:15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `C_Id` int(11) NOT NULL,
  `C_NumCompra` int(11) NOT NULL,
  `C_CodBodega` int(11) NOT NULL,
  `C_CodigoUsuario` varchar(30) NOT NULL,
  `C_CodProveedor` varchar(15) NOT NULL,
  `C_Autorizacion` varchar(30) NOT NULL,
  `C_Aplicada` tinyint(1) NOT NULL,
  `C_TipoComprobante` char(25) NOT NULL,
  `C_TipoPago` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `nit` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `razon_social` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `iva` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cupones`
--

CREATE TABLE `cupones` (
  `codigo` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `fecha_vencimiento` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cupones`
--

INSERT INTO `cupones` (`codigo`, `status`, `tipo`, `valor`, `fecha_vencimiento`, `id`) VALUES
('19955', 'activo', 'modena', '12', '2021-05-08', 1),
('71125', 'activo', 'modena', '14', '2021-04-29', 2),
('36336', 'activo', 'modena', '45', '2021-04-30', 3),
('61592', 'activo', 'modena', '45', '2021-04-29', 4),
('98289', 'activo', 'modena', '100', '2021-05-10', 5),
('96946', 'activo', 'modena', '200', '2021-05-19', 6),
('65170', 'activo', 'modena', '400', '2021-06-17', 7);

-- --------------------------------------------------------

--
-- Table structure for table `c_chats`
--

CREATE TABLE `c_chats` (
  `id_cch` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  `para` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_chats`
--

INSERT INTO `c_chats` (`id_cch`, `de`, `para`) VALUES
(1, 1, 4),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `Dept_NombreDepartamento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detalledevolucion`
--

CREATE TABLE `detalledevolucion` (
  `Dt_Id` int(11) NOT NULL,
  `Dt_NumeroDevolucion` int(11) NOT NULL,
  `Dt_CodProducto` varchar(40) NOT NULL,
  `Dt_Cantidad` int(11) NOT NULL,
  `Dt_Costo` decimal(20,0) NOT NULL,
  `DT_Observacion` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detallefactura`
--

CREATE TABLE `detallefactura` (
  `FC_NumRecibo` int(11) NOT NULL,
  `FC_CodigoCliente` int(11) NOT NULL,
  `FC_Cantidad` int(11) NOT NULL,
  `Fact_MontoTotal` decimal(20,0) NOT NULL,
  `Fact_MontoPago` decimal(20,0) NOT NULL,
  `FC_FechaHora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `empleador`
--

CREATE TABLE `empleador` (
  `EMP_Id` int(11) NOT NULL,
  `EMP_Cedula` varchar(25) NOT NULL,
  `EMP_Telefono` int(11) NOT NULL,
  `EMP_Direccion` varchar(100) NOT NULL,
  `EMP_Estado` bit(1) NOT NULL,
  `EMP_EstadoCivil` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `pais` int(50) NOT NULL,
  `company` int(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` int(50) NOT NULL,
  `cp` int(10) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `envios`
--

INSERT INTO `envios` (`id_envio`, `pais`, `company`, `direccion`, `estado`, `cp`, `id_venta`, `Time`) VALUES
(4, 8, 34, '1223', 2343545, 3445345, 38, '2021-06-07 23:12:55'),
(6, 8, 0, '0', 0, 123456789, 40, '2021-06-07 23:12:55'),
(7, 8, 0, '1223', 1223, 3445345, 41, '2021-06-07 23:12:55'),
(8, 8, 0, '0', 0, 3445345, 42, '2021-06-07 23:12:55'),
(9, 8, 0, '0', 0, 1234567, 43, '2021-06-07 23:12:55'),
(31, 3, 0, '33003', 0, 34253453, 65, '2021-06-07 23:12:55'),
(32, 8, 0, '789168912', 0, 534543543, 66, '2021-06-07 23:12:55'),
(36, 8, 0, '8893', 113410, 123241, 70, '2021-06-07 23:12:55'),
(50, 1, 0, '', 0, 0, 84, '2021-06-08 16:37:43'),
(51, 2, 0, 'Porton Del cementerio', 0, 97987, 85, '2021-06-08 17:31:58'),
(52, 3, 0, '', 0, 34635435, 86, '2021-06-08 17:35:27'),
(53, 3, 0, 'casita', 0, 2147483647, 87, '2021-06-08 17:45:51'),
(54, 1, 0, '', 0, 0, 88, '2021-06-08 19:56:33'),
(55, 1, 0, '', 0, 0, 89, '2021-06-08 20:44:49'),
(56, 1, 0, '', 0, 0, 90, '2021-06-08 21:16:32'),
(57, 1, 0, '', 0, 0, 91, '2021-08-16 18:30:11'),
(58, 1, 0, '', 0, 0, 92, '2021-08-17 00:37:43'),
(59, 1, 0, '', 0, 0, 93, '2021-08-31 21:13:44'),
(60, 1, 0, '', 0, 0, 94, '2021-09-01 04:09:20'),
(61, 1, 0, '', 0, 0, 95, '2021-09-01 05:17:48'),
(62, 1, 0, '65465634634', 0, 45634, 96, '2021-09-01 14:47:09'),
(63, 3, 0, 'masaya', 0, 42500, 97, '2021-09-01 15:42:12'),
(64, 1, 0, '', 0, 0, 98, '2021-09-17 20:05:06'),
(65, 1, 0, '', 0, 0, 99, '2021-09-17 20:10:48'),
(66, 1, 0, '', 0, 0, 100, '2021-09-17 20:12:36'),
(67, 1, 0, '', 0, 0, 101, '2021-09-17 20:13:19'),
(68, 1, 0, '', 0, 0, 102, '2021-09-17 20:13:48'),
(69, 3, 0, '259 SW 8TH ST', 0, 33004, 103, '2021-09-20 17:14:47'),
(70, 1, 0, '', 0, 0, 104, '2021-11-28 18:57:50'),
(71, 1, 0, '', 0, 0, 105, '2021-11-29 21:04:14'),
(72, 1, 0, '', 0, 0, 106, '2021-11-29 21:24:17'),
(73, 1, 0, '', 0, 0, 107, '2021-12-05 20:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `Fact_Id` int(11) NOT NULL,
  `Fact_NumRecibo` int(11) NOT NULL,
  `Fact_FechaHora` timestamp NULL DEFAULT current_timestamp(),
  `Fact_TipoFactura` varchar(20) NOT NULL,
  `Fact_Concepto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id_fot` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ruta` varchar(200) NOT NULL,
  `album` int(11) NOT NULL,
  `publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`id_fot`, `usuario`, `fecha`, `ruta`, `album`, `publicacion`) VALUES
(1, 2, '2017-07-13', '2417BADC5A9B7.jpg', 1, 2),
(2, 4, '2017-07-13', '31DDCCA2FA986.jpg', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hot`
--

CREATE TABLE `hot` (
  `imagen` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `talla` varchar(5) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hot`
--

INSERT INTO `hot` (`imagen`, `id`, `Product`, `nombre`, `descripcion`, `precio`, `categoria`, `talla`, `color`) VALUES
('Hot1.jpg', 50, 'Guitar.jpg', 'Alice Cooper', 'Camiseta', 75, 'Hombre', 'M', 'White'),
('Hot2.jpg', 51, 'Guitar.jpg', 'Rama', 'Sudaderas ', 110, 'hombre', 'L', 'Black'),
('Hot4.jpg', 52, 'Guitar.jpg', 'Slash', 'camisola', 55, 'hombre', 'M', 'Black'),
('Hot5.jpg', 53, 'Guitar.jpg', 'Ozzy', 'Camisa', 230, 'Mujer', 'S', 'Black'),
('Hot3.jpg', 54, 'Guitar.jpg', 'Eddy', 'camisa', 200, 'hombre', 'L', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `lacoste`
--

CREATE TABLE `lacoste` (
  `imagen` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `talla` varchar(5) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lacoste`
--

INSERT INTO `lacoste` (`imagen`, `id`, `Product`, `nombre`, `descripcion`, `precio`, `categoria`, `talla`, `color`) VALUES
('Lacoste1.jpg', 80, 'La.jpg', 'Dan ', 'Pantalon', 75, 'Hombre', '38', 'Black'),
('Lacoste2.jpg', 81, 'La.jpg', 'Caleb', 'Manga larga', 80, 'hombre', 'L', 'Blanca'),
('Lacoste3.jpg', 82, 'La.jpg', 'Brice', 'Manga larga', 65, 'Hombre', 'L', 'Black'),
('Lacoste4.jpg', 83, 'La.jpg', 'Kile', 'camisa', 110, 'hombre', 'L', 'Blanca'),
('Lacoste6.jpg', 84, 'La.jpg', 'Adel', 'Polo', 55, 'hombre', 'M', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id_lik` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id_lik`, `usuario`, `post`, `fecha`) VALUES
(1, 2, 1, '2017-07-13 16:51:34'),
(2, 2, 2, '2017-07-13 17:20:08'),
(3, 1, 2, '2017-07-13 17:20:51'),
(4, 4, 2, '2017-07-13 17:21:20'),
(5, 1, 1, '2017-07-13 17:22:19'),
(6, 4, 3, '2017-07-13 17:24:48'),
(9, 1, 3, '2017-07-21 14:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `motorizado_envio`
--

CREATE TABLE `motorizado_envio` (
  `Id_Motorizado` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `disponibilidad` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motorizado_envio`
--

INSERT INTO `motorizado_envio` (`Id_Motorizado`, `Nombre`, `apellido`, `telefono`, `disponibilidad`) VALUES
(38, 'Pedro', 'cha', 82757486, b'1'),
(86, 'Ivan norte', 'norteno', 86783971, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `movimientoinventario`
--

CREATE TABLE `movimientoinventario` (
  `I_Id` int(11) NOT NULL,
  `I_NumAusteInventario` int(11) NOT NULL,
  `I_Descripcion` varchar(100) NOT NULL,
  `I_Existencias` int(11) NOT NULL,
  `I_Disponibilidad` bit(1) NOT NULL,
  `I_Costo` int(11) NOT NULL,
  `TipoAjuste` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_not` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `leido` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_pub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notificaciones`
--

INSERT INTO `notificaciones` (`id_not`, `user1`, `user2`, `tipo`, `leido`, `fecha`, `id_pub`) VALUES
(4, 1, 1, 'ha comentado', 0, '2017-10-23 14:51:14', 4),
(5, 1, 4, 'ha comentado', 0, '2017-10-28 10:18:15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `metodo` varchar(50) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagos`
--

INSERT INTO `pagos` (`id`, `metodo`, `id_venta`) VALUES
(1, 'paypal', 44),
(2, 'paypal', 45),
(3, 'paypal', 46),
(4, 'paypal', 47),
(5, 'paypal', 52),
(6, 'paypal', 58),
(7, 'paypal', 60),
(8, 'paypal', 61),
(9, 'paypal', 65),
(10, 'paypal', 66),
(11, 'paypal', 67),
(12, 'paypal', 68),
(13, 'paypal', 70),
(14, 'paypal', 75);

-- --------------------------------------------------------

--
-- Table structure for table `periododecajas`
--

CREATE TABLE `periododecajas` (
  `Id_periodos` int(11) NOT NULL,
  `PC_MontoCambio` decimal(20,0) NOT NULL,
  `PC_CodUsuario` int(11) NOT NULL,
  `PC_FechaAbrirCaja` timestamp NOT NULL DEFAULT current_timestamp(),
  `PC_NumArqueo` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `Per_Id` int(11) NOT NULL,
  `Per_Nombre` varchar(25) NOT NULL,
  `Per_Apellido` varchar(25) NOT NULL,
  `Per_FechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productoporbodega`
--

CREATE TABLE `productoporbodega` (
  `Id_ProductosPorBodega` int(11) NOT NULL,
  `PB_CodProducto` varchar(20) NOT NULL,
  `PB_CodBodega` int(11) NOT NULL,
  `PB_Existencias` decimal(18,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `iva` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`, `talla`, `color`, `iva`) VALUES
(6, 'Zapatos de vestir', 'Esta es la descripcion', 50, 'cloth_2.jpg', 86, 2, '8', 'Azul', '0'),
(8, 'Joker 2019', 'Esta es la descripcion', 429, 'S19.jpg', 74, 5, 'L', 'Rojo', '0'),
(9, 'Producto 6', 'Esta es la descripcion', 488, 'S20.jpg', 31, 2, 'XL', 'Blue', '0'),
(10, 'Full metal', 'Esta es la descripcion', 708, 'S21.jpg', 13, 3, 'XL', 'Blue', '0'),
(11, 'Producto 8', 'Esta es la descripcion', 661, 'S22.jpg', 16, 4, 'XL', 'Blue', '0'),
(12, 'Next hentai', 'Esta es la descripcion', 938, 'S23.jpg', 4, 3, '7cm', 'Negro', '0'),
(13, 'Producto 10', 'Esta es la descripcion', 519, 'S24.jpg', 88, 4, 'XL', 'Blue', '0'),
(14, 'Producto 11', 'Esta es la descripcion', 989, 'S25.jpg', 84, 2, 'XL', 'Blue', '0'),
(15, 'Producto 12', 'Esta es la descripcion', 877, 'S26.jpg', 83, 1, 'XL', 'Blue', '0'),
(16, 'Producto 13', 'Esta es la descripcion', 217, 'S27.jpg', 66, 5, 'XL', 'Blue', '0'),
(17, 'Producto 14', 'Esta es la descripcion', 502, 'S28.jpg', 68, 5, 'XL', 'Blue', '0'),
(18, 'Producto 15', 'Esta es la descripcion', 265, 'S29.jpg', 88, 5, 'XL', 'Blue', '0'),
(19, 'Producto 16', 'Esta es la descripcion', 260, 'Lacoste6.jpg', 94, 2, 'XL', 'Blue', '0'),
(20, 'Producto 17', 'Esta es la descripcion', 285, 'cloth_1.jpg', 87, 1, 'XL', 'Blue', '0'),
(21, 'Producto 18', 'Esta es la descripcion', 109, 'cloth_1.jpg', 6, 1, 'XL', 'Blue', '0'),
(22, 'Producto 19', 'Esta es la descripcion', 435, 'cloth_1.jpg', 76, 1, 'XL', 'Blue', '0'),
(23, 'Producto 20', 'Esta es la descripcion', 472, 'cloth_1.jpg', 43, 1, 'XL', 'Blue', '0'),
(24, 'Producto 21', 'Esta es la descripcion', 637, 'cloth_1.jpg', 19, 1, 'XL', 'Blue', '0'),
(25, 'Producto 22', 'Esta es la descripcion', 340, 'cloth_1.jpg', 37, 1, 'XL', 'Blue', '0'),
(26, 'Producto 23', 'Esta es la descripcion', 821, 'cloth_1.jpg', 50, 1, 'XL', 'Blue', '0'),
(27, 'Producto 24', 'Esta es la descripcion', 701, 'cloth_1.jpg', 19, 1, 'XL', 'Blue', '0'),
(28, 'Producto 25', 'Esta es la descripcion', 29, 'cloth_1.jpg', 10, 1, 'XL', 'Blue', '0'),
(29, 'Producto 26', 'Esta es la descripcion', 467, 'S17.jpg', 94, 3, 'XL', 'Blue', '0'),
(30, 'Choco Milk', 'Esta es la descripcion', 830, 'img10.jpg', 87, 3, 'L', 'Negro', '0'),
(31, 'Producto 28', 'Esta es la descripcion', 616, 'img9.jpg', 23, 5, 'XL', 'Blue', '0'),
(32, 'Producto 29', 'Esta es la descripcion', 624, 'img8.jpg', 45, 5, 'XL', 'Blue', '0'),
(33, 'Producto 30', 'Esta es la descripcion', 970, 'img7.jpg', 27, 2, 'XL', 'Blue', '0'),
(34, 'Producto 31', 'Esta es la descripcion', 980, 'img6.jpg', 92, 3, 'XL', 'Blue', '0'),
(35, 'Producto 32', 'Esta es la descripcion', 549, 'img5.jpg', 64, 3, 'XL', 'Blue', '0'),
(36, 'Producto 33', 'Esta es la descripcion', 681, 'img4.jpg', 32, 3, 'XL', 'Blue', '0'),
(37, 'Producto 34', 'Esta es la descripcion', 972, 'img3.jpg', 37, 5, 'XL', 'Blue', '0'),
(38, 'Producto 35', 'Esta es la descripcion', 756, 'img2.jpg', 64, 5, 'XL', 'Blue', '0'),
(40, 'Panties', 'Tres pares de panties perfectamente atrevidas para mantenerte cómoda ', 30, 'S3.jpg', 48, 1, 'XL', 'Blue', '0'),
(41, 'Censura', 'Camisa unisex con tematica de anime', 918, 'S13.jpg', 56, 3, 'XL', 'Blue', '0'),
(42, 'Producto 39', 'Esta es la descripcion', 257, 'S11.jpg', 96, 1, 'XL', 'Blue', '0'),
(43, 'Producto 40', 'Esta es la descripcion', 509, 'S7.jpg', 15, 3, 'XL', 'Blue', '0'),
(44, 'Producto 41', 'Esta es la descripcion', 699, 'S10.jpg', 10, 3, 'XL', 'Blue', '0'),
(45, 'Fantasma', 'Esta es la descripcion', 228, 'S9.jpg', 31, 1, 'S', 'Blanco', '0'),
(46, 'Body fresas', 'Esta es la descripcion', 751, 'S4.jpg', 79, 4, '15cm', 'Rosa', '0'),
(47, 'Lain', 'Esta es la descripcion', 954, 'S12.jpg', 91, 1, 'M', 'Rosa', '0'),
(48, 'llavero de naruto', 'Esta es la descripcion', 514, 'S6.jpg', 7, 4, '10cm', 'Naranja', '0'),
(49, 'I like you', 'Esta es la descripcion', 622, 'S7.jpg', 67, 3, 'XL', 'Blue', '0'),
(50, 'Producto 47', 'Esta es la descripcion', 429, 'S2.jpg', 4, 3, 'XL', 'Blue', '0'),
(51, 'Producto 48', 'Esta es la descripcion', 967, 'S5.jpg', 25, 3, 'XL', 'Blue', '0'),
(52, 'Misa amane', 'Esta es la descripcion', 856, 'S15.jpg', 32, 3, 'XL', 'Blue', '15'),
(53, 'Death note ', 'Descripcion', 40, 'S16.jpg', 28, 3, 'M', 'Black', '0'),
(55, 'Producto 0', 'Esta es la descripcion', 100, 'Lacoste5.jpg', 52, 2, 'XL', 'Blue', '0');

-- --------------------------------------------------------

--
-- Table structure for table `productoscompra`
--

CREATE TABLE `productoscompra` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `iva` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productoscompra`
--

INSERT INTO `productoscompra` (`id`, `nombre`, `Product`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`, `talla`, `color`, `iva`) VALUES
(1, 'Buzo', 'La.jpg', 'paltalon para dormi', 50, 'Lacoste1.jpg', 15, 1, '32', 'blanco', '0'),
(2, 'Camisa blanca', 'La.jpg', 'Camisa de vestir ', 60, 'Lacoste3.jpg', 5, 1, 'Xl', 'blanca', '0'),
(3, 'Camisa azul', 'La.jpg', 'Camisa formal Azul ', 25, 'Lacoste2.jpg', 10, 1, 'M', 'Azul', '0'),
(4, 'Manga larga azul', 'La.jpg', 'Camisa formal', 32, 'Lacoste4.jpg', 10, 1, 'M', 'Blanca', '0'),
(5, 'Sudadera', 'Logo1.jpg', 'Sudadera gris', 25, 'Levis3.jpg', 40, 1, 'L', 'gris', '0'),
(6, 'Sudadera blanca', 'Logo1.jpg', 'Sudadera blanca con diseño', 20, 'Levis4.jpg', 30, 1, 'L', 'Blanca', '0'),
(7, 'Camiseta levis', 'Logo1.jpg', 'Camisa normal', 15, 'Levis4.jpg', 15, 1, 'L', 'Blanca', '0'),
(8, 'Camisa de goku', 'Goku.jpg', 'Anime', 20, 'Rey1.jpg', 20, 1, 'M', 'Naranaja', '0'),
(9, 'Camisa dragon ball', 'Goku.jpg', 'Camisa de goku', 20, 'S1.jpg', 40, 1, 'M', 'Rojo', '0'),
(10, 'Kakashi', 'Goku.jpg', 'Kaka', 20, 'S14.jpg', 10, 1, 'S', 'Blanca', '0'),
(11, 'Red', 'Goku.jpg', 'RedEyes', 30, 'S14.png', 30, 1, 'L', 'Blanca', '0'),
(12, 'PINK', 'Victoria.jpg', 'SexPink', 25, 'Vic5.jpg', 25, 1, '5', 'Rosado', '0'),
(13, 'Zapato', 'Victoria.jpg', 'Zapatos elegantes', 50, 'Zapatos.jpg', 30, 1, '7', 'Negro', '0');

-- --------------------------------------------------------

--
-- Table structure for table `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio`, `subtotal`) VALUES
(84, 66, 11, 2, 661, 1322),
(104, 84, 52, 1, 856, 856),
(105, 85, 52, 1, 856, 856),
(106, 86, 25, 1, 340, 340),
(107, 87, 49, 1, 622, 622),
(108, 88, 53, 1, 40, 40),
(109, 88, 48, 1, 514, 514),
(110, 89, 49, 1, 622, 622),
(111, 90, 55, 1, 100, 100),
(112, 91, 48, 1, 514, 514),
(113, 92, 53, 1, 40, 40),
(114, 93, 53, 1, 40, 40),
(115, 94, 53, 1, 40, 40),
(116, 95, 34, 1, 980, 980),
(117, 96, 53, 1, 40, 40),
(118, 97, 53, 1, 40, 40),
(119, 98, 45, 2, 228, 456),
(120, 99, 45, 1, 228, 228),
(121, 100, 34, 1, 980, 980),
(122, 101, 14, 1, 989, 989),
(123, 102, 46, 1, 751, 751),
(124, 103, 52, 1, 856, 856),
(125, 104, 52, 1, 856, 856),
(126, 105, 55, 1, 100, 100),
(127, 106, 47, 1, 954, 954),
(128, 107, 53, 1, 40, 40),
(129, 107, 52, 1, 856, 856);

-- --------------------------------------------------------

--
-- Table structure for table `proveedores`
--

CREATE TABLE `proveedores` (
  `Prov_Id` int(11) NOT NULL,
  `Prov_Nombre` varchar(25) NOT NULL,
  `Prov_Celular` int(11) NOT NULL,
  `Prov_Email` varchar(50) NOT NULL,
  `Prov_Fecha_Ingreso_Sistema` datetime NOT NULL,
  `ModenaCompra` varchar(20) NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proveedores`
--

INSERT INTO `proveedores` (`Prov_Id`, `Prov_Nombre`, `Prov_Celular`, `Prov_Email`, `Prov_Fecha_Ingreso_Sistema`, `ModenaCompra`, `estatus`) VALUES
(1, 'Mynor', 76625526, 'Mogji@gmail.com', '2021-04-16 18:38:14', 'cordoba', 1),
(2, 'Hot', 88888888, 'Hot@gmail.com', '2021-12-03 06:09:44', 'Dolar', 1),
(3, 'Victoria', 5555555, 'VictoriaS@gmail.com', '2021-12-03 06:09:44', 'Dolar', 1),
(4, 'Lacoste', 45234234, 'Lacoste.com', '2021-12-05 02:40:34', 'Dolar', 1),
(5, 'Rey', 55558888, 'ReyRu.com', '2021-12-05 02:40:34', 'Dolar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `provproduc`
--

CREATE TABLE `provproduc` (
  `imagen` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `Product` varchar(200) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provproduc`
--

INSERT INTO `provproduc` (`imagen`, `id`, `Product`, `nombre`, `descripcion`, `precio`, `categoria`, `talla`, `color`) VALUES
('Levis5.jpg', 2, 'Logo1.jpg', 'Carl', 'Camiseta', 35, 'Hombre', 'M', 'blue'),
('Levis4.jpg', 3, 'Logo1.jpg', 'Kile', 'Sudaderas ', 110, 'hombre', 'XL', 'Black'),
('Levis3.jpg', 5, 'Logo1.jpg', 'Lenny', 'Sudaderas ', 80, 'hombre', 'L', 'Black'),
('Levis1.jpg', 42, 'Logo1.jpg', 'Emilil', 'Pantalones', 40, 'Hot Topic', '38', 'Black'),
('Levis2.jpg', 138, 'Logo1.jpg', 'Eminem', 'Camisetas', 50, 'Hombre', 'L', 'White');

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_pub` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `contenido` text NOT NULL,
  `imagen` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `comentarios` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publicaciones`
--

INSERT INTO `publicaciones` (`id_pub`, `usuario`, `fecha`, `contenido`, `imagen`, `album`, `comentarios`, `likes`) VALUES
(1, 1, '2017-07-13 16:47:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1, 2),
(2, 2, '2017-07-13 17:20:05', 'Disfrutando', 1, 1, 1, 3),
(3, 4, '2017-07-13 17:24:44', 'Breakfast :D', 2, 2, 1, 2),
(4, 1, '2017-08-11 13:00:47', 'Probando esto ', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reclamo`
--

CREATE TABLE `reclamo` (
  `id` int(11) NOT NULL,
  `tipoReclamo` varchar(50) NOT NULL,
  `Cod_Reclamo` int(11) NOT NULL,
  `Asunto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rey`
--

CREATE TABLE `rey` (
  `imagen` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `talla` varchar(5) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rey`
--

INSERT INTO `rey` (`imagen`, `id`, `Product`, `nombre`, `descripcion`, `precio`, `categoria`, `talla`, `color`) VALUES
('Rey1.jpg', 10, 'Goku.jpg', 'Son Goku ', 'Camiseta', 75, 'Hombre', 'M', 'Black'),
('Rey2.jpg', 11, 'Goku.jpg', 'Ichigo Kurosaki', 'camisa', 80, 'hombre', 'L', 'Black'),
('Rey3.jpg', 12, 'Goku.jpg', 'Kakashi Hatake', 'llavero', 55, 'Objeto', '', 'Naranja'),
('Rey4.jpg', 13, 'Goku.jpg', 'Himura Kenshin', 'Espada', 1200, 'Unisex', '', ''),
('Rey5.jpg', 14, 'Goku.jpg', 'Eren Jaeger', 'camisa', 200, 'hombre', 'L', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`) VALUES
(10, 'SlytherParrales', '88888', 'test2@gmail.com', 'a7d579ba76398070eae654c30ff153a4c273272a', '', 'cliente'),
(18, 'brunoaramis', '5656856856', 'Bruno@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 'cliente'),
(19, 'Mynoryo', '04345345', 'jcarlos.ad7@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'cliente'),
(23, 'Ratafak15', '34534534', 'ratafak15@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'S8.jpg', 'admin'),
(31, 'ivantorres', '86783971', 'torresivan841@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(40, 'TuGfe Eltuyo', 'mithelefono', 'simonmicorreo@mikasa.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'default.jpg', 'cliente'),
(42, 'mynor slyther', '8888888', 'mynor@gmail.com', '211ff72632249527fc89c0596e5d05b244076c5e', 'default.jpg', 'cliente'),
(43, 'Ratafak 15', '9999999', 'SlytherParrales@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'default.jpg', 'cliente'),
(49, 'Ratafak 15', '999999', 'ratafak15@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'default.jpg', 'cliente'),
(52, 'Jasson Paul', '76442822', 'Jasson@gmail.com', '2e1a8bf4206ea2db0858852f5ec7655173cfe74f', 'default.jpg', 'cliente'),
(54, 'Slyther parrales', 'slyther1234@gmail.com', '43543543', '6abd5bceba442f9ff321549c3d4901ad1fb8e31e', 'default.jpg', 'cliente'),
(56, 'Mynor  parrales', '453454', '34534543', '7c222fb2927d828af22f592134e8932480637c0d', 'default.jpg', 'bodega'),
(57, 'Maria Jesus', '564564564', 'Maria@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'default.jpg', 'cliente'),
(58, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(59, 'Jack Lopez', '97234923', 'Jack@gmail.com', '993ff6de1df839bb1cadeb07f48a376b28483b79', 'default.jpg', 'cliente'),
(141, 'Jasson2 6574', '745464564', 'Jasson2@gmail.com', '4aa0c0d73696e4c116a2c112661f412708029bbe', 'default.jpg', 'caja'),
(142, 'Mike 934', '', 'Mike@gmail.com', 'd04463371b3eab5440982c7149a42509a57c933d', 'default.jpg', 'admin'),
(143, 'cliente feria', '888888', 'Cliente@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'default.jpg', 'cliente'),
(144, 'jeremy Israel', '12345678', 'hsdfhd@gmai.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(145, 'Mynor Slyther', '9549972962', 'MynorParrales15@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'default.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_use` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `nacimiento` date NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `fecha_reg` datetime NOT NULL,
  `verificado` int(11) NOT NULL DEFAULT 0,
  `privada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_use`, `nombre`, `usuario`, `contrasena`, `nacimiento`, `avatar`, `email`, `sexo`, `fecha_reg`, `verificado`, `privada`) VALUES
(1, 'Tuntoriales', 'tuntoriales', '4d186321c1a7f0f354b297e8914ab240', '1992-06-25', '1.jpg', 'tunto@tunto.com', 'H', '2017-06-02 16:48:47', 1, 1),
(2, 'AndrÃ©s Gutierrez', 'andres.gutierrez', '4d186321c1a7f0f354b297e8914ab240', '0000-00-00', '2.jpg', 'andres@andres.com', 'H', '2017-06-02 16:59:10', 0, 0),
(3, 'Carlos Benjumea', 'carlos', '4d186321c1a7f0f354b297e8914ab240', '0000-00-00', '3.jpg', 'carlos@carlos.com', 'H', '2017-06-02 16:59:46', 0, 1),
(4, 'Mario Gaviria', 'mariogav', '4d186321c1a7f0f354b297e8914ab240', '0000-00-00', '4.jpg', 'mario@mario.com', 'H', '2017-06-02 17:01:58', 0, 0),
(5, 'nuevousuario', 'nuevousuario', '4d186321c1a7f0f354b297e8914ab240', '0000-00-00', 'defect.jpg', 'nuevo@n.com', '', '2017-06-04 14:22:04', 0, 0),
(6, 'Tuntos', 'tunto', '4d186321c1a7f0f354b297e8914ab240', '0000-00-00', 'defect.jpg', 'tunto2@tunto.com', '', '2017-06-24 19:33:06', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL,
  `id_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id`, `id_usuario`, `total`, `fecha`, `status`, `id_pago`) VALUES
(1, 1, 3868, '2021-03-31 11:03:51', 'preparacion', 0),
(2, 2, 3868, '2021-03-31 13:03:16', 'preparacion', 0),
(3, 3, 4148, '2021-03-31 13:03:28', 'preparacion', 0),
(4, 4, 4148, '2021-03-31 13:03:33', 'preparacion', 0),
(5, 5, 4148, '2021-03-31 13:03:27', 'preparacion', 0),
(6, 6, 100, '2021-04-02 07:04:21', 'preparacion', 0),
(7, 7, 280, '2021-04-02 07:04:59', 'preparacion', 0),
(8, 8, 1036, '2021-04-03 18:04:18', 'preparacion', 0),
(9, 9, 1036, '2021-04-03 18:04:05', 'preparacion', 0),
(10, 10, 967, '2021-04-03 18:04:39', 'preparacion', 0),
(11, 11, 60, '2021-04-03 09:04:23', 'preparacion', 0),
(59, 43, 856, '2021-05-24 12:05:54', '', 0),
(60, 55, 1607, '2021-05-25 08:05:20', '', 0),
(61, 55, 877, '2021-05-25 13:05:59', '', 0),
(62, 55, 1599, '2021-05-25 10:05:40', '', 0),
(63, 55, 477, '2021-05-25 11:05:19', '', 0),
(64, 55, 429, '2021-05-25 15:05:34', '', 0),
(65, 56, 1478, '2021-05-25 16:05:44', '', 0),
(66, 57, 1322, '2021-05-27 18:05:39', '', 0),
(67, 58, 708, '2021-05-28 18:05:37', '', 0),
(68, 58, 228, '2021-05-30 14:05:06', '', 0),
(69, 58, 954, '2021-05-31 14:05:50', '', 0),
(70, 59, 3752, '2021-06-02 14:06:44', '', 0),
(71, 58, 597, '2021-06-06 15:06:44', '', 0),
(72, 58, 200, '2021-06-06 15:06:58', '', 0),
(73, 58, 751, '2021-06-06 15:06:28', '', 0),
(74, 58, 260, '2021-06-06 15:06:34', '', 0),
(75, 58, 467, '2021-06-06 15:06:04', '', 0),
(76, 58, 954, '2021-06-07 09:06:46', '', 0),
(77, 58, 616, '2021-06-07 09:06:26', '', 0),
(78, 58, 514, '2021-06-07 09:06:56', '', 0),
(79, 58, 1136, '2021-06-07 13:06:10', '', 0),
(80, 58, 989, '2021-06-08 18:06:00', '', 0),
(81, 58, 3646, '2021-06-08 07:06:53', '', 0),
(82, 58, 40, '2021-06-08 12:06:55', '', 0),
(83, 58, 967, '2021-06-08 13:06:24', '', 0),
(84, 58, 856, '2021-06-08 12:06:42', '', 0),
(85, 138, 856, '2021-06-08 13:06:58', '', 0),
(86, 141, 340, '2021-06-08 13:06:27', '', 0),
(87, 142, 622, '2021-06-08 13:06:51', '', 0),
(88, 58, 554, '2021-06-08 15:06:33', '', 0),
(89, 58, 622, '2021-06-08 16:06:48', '', 0),
(90, 58, 100, '2021-06-08 17:06:32', '', 0),
(91, 58, 514, '2021-08-16 14:08:08', '', 0),
(92, 58, 40, '2021-08-17 08:08:43', '', 0),
(93, 58, 40, '2021-08-31 17:08:43', '', 0),
(94, 58, 40, '2021-09-01 12:09:19', '', 0),
(95, 58, 980, '2021-09-01 13:09:48', '', 0),
(96, 143, 40, '2021-09-01 10:09:09', '', 0),
(97, 144, 40, '2021-09-01 11:09:12', '', 0),
(98, 23, 456, '2021-09-17 16:09:02', '', 0),
(99, 23, 228, '2021-09-17 16:09:47', '', 0),
(100, 23, 980, '2021-09-17 16:09:35', '', 0),
(101, 23, 989, '2021-09-17 16:09:18', '', 0),
(102, 23, 751, '2021-09-17 16:09:47', '', 0),
(103, 145, 856, '2021-09-20 13:09:46', '', 0),
(104, 58, 856, '2021-11-28 13:11:49', '', 0),
(105, 58, 100, '2021-11-29 16:11:12', '', 0),
(106, 58, 954, '2021-11-29 16:11:17', '', 0),
(107, 58, 896, '2021-12-05 15:12:36', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `victoria`
--

CREATE TABLE `victoria` (
  `imagen` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `talla` varchar(25) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `victoria`
--

INSERT INTO `victoria` (`imagen`, `id`, `Product`, `nombre`, `descripcion`, `precio`, `categoria`, `talla`, `color`) VALUES
('Vic5.jpg', 72, 'Victoria.jpg', 'Olivia', 'Lenceria', 75, 'Mujer', '4', 'Black'),
('Vic2.jpg', 73, 'Victoria.jpg', 'Emma', 'lenceria', 80, 'Mujer', '6', 'pink'),
('Vic3.jpg', 74, 'Victoria.jpg', 'Ana', 'Lenceria', 65, 'Mujer', '8', 'pink'),
('Vic4.jpg', 75, 'Victoria.jpg', 'Ava', 'lenceria', 110, 'Mujer', '9', 'black'),
('Vic1.jpg', 76, 'Victoria.jpg', 'Charlotte', 'Lenceria', 350, 'Mujer', '10', 'pink');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id_alb`);

--
-- Indexes for table `american`
--
ALTER TABLE `american`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id_ami`);

--
-- Indexes for table `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`id_bodega`);

--
-- Indexes for table `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`CodCaja`);

--
-- Indexes for table `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id_cha`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_com`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`C_Id`);

--
-- Indexes for table `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_chats`
--
ALTER TABLE `c_chats`
  ADD PRIMARY KEY (`id_cch`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indexes for table `detalledevolucion`
--
ALTER TABLE `detalledevolucion`
  ADD PRIMARY KEY (`Dt_Id`);

--
-- Indexes for table `empleador`
--
ALTER TABLE `empleador`
  ADD PRIMARY KEY (`EMP_Id`);

--
-- Indexes for table `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Fact_Id`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_fot`);

--
-- Indexes for table `hot`
--
ALTER TABLE `hot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lacoste`
--
ALTER TABLE `lacoste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_lik`);

--
-- Indexes for table `motorizado_envio`
--
ALTER TABLE `motorizado_envio`
  ADD PRIMARY KEY (`Id_Motorizado`);

--
-- Indexes for table `movimientoinventario`
--
ALTER TABLE `movimientoinventario`
  ADD PRIMARY KEY (`I_Id`),
  ADD UNIQUE KEY `UNIQUE` (`TipoAjuste`(15));

--
-- Indexes for table `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_not`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periododecajas`
--
ALTER TABLE `periododecajas`
  ADD PRIMARY KEY (`Id_periodos`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`Per_Id`);

--
-- Indexes for table `productoporbodega`
--
ALTER TABLE `productoporbodega`
  ADD PRIMARY KEY (`Id_ProductosPorBodega`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productoscompra`
--
ALTER TABLE `productoscompra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Prov_Id`);

--
-- Indexes for table `provproduc`
--
ALTER TABLE `provproduc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_pub`);

--
-- Indexes for table `reclamo`
--
ALTER TABLE `reclamo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rey`
--
ALTER TABLE `rey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_use`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `victoria`
--
ALTER TABLE `victoria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id_alb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `american`
--
ALTER TABLE `american`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `amigos`
--
ALTER TABLE `amigos`
  MODIFY `id_ami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `bodega`
--
ALTER TABLE `bodega`
  MODIFY `id_bodega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caja`
--
ALTER TABLE `caja`
  MODIFY `CodCaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id_cha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `C_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cupones`
--
ALTER TABLE `cupones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `c_chats`
--
ALTER TABLE `c_chats`
  MODIFY `id_cch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detalledevolucion`
--
ALTER TABLE `detalledevolucion`
  MODIFY `Dt_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `Fact_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_fot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_lik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `motorizado_envio`
--
ALTER TABLE `motorizado_envio`
  MODIFY `Id_Motorizado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_not` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `periododecajas`
--
ALTER TABLE `periododecajas`
  MODIFY `Id_periodos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoporbodega`
--
ALTER TABLE `productoporbodega`
  MODIFY `Id_ProductosPorBodega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `provproduc`
--
ALTER TABLE `provproduc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_pub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reclamo`
--
ALTER TABLE `reclamo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_use` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `victoria`
--
ALTER TABLE `victoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
