-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2023 at 09:17 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registro-1romayo2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `delegaciones`
--

CREATE TABLE `delegaciones` (
  `id` bigint UNSIGNED NOT NULL,
  `nomenclatura` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delegacion` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_region` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delegaciones`
--

INSERT INTO `delegaciones` (`id`, `nomenclatura`, `delegacion`, `nivel`, `sede`, `id_region`, `created_at`, `updated_at`) VALUES
(1, 'delegacion', 'D-I-1', 'PRIMARIAS', 'ACAYUCAN', 11, NULL, NULL),
(2, 'delegacion', 'D-I-2', 'PRIMARIAS', 'ACAYUCAN', 11, NULL, NULL),
(3, 'delegacion', 'D-I-3', 'PRIMARIAS', 'ACULTZINGO', 8, NULL, NULL),
(4, 'delegacion', 'D-I-4', 'PRIMARIAS', 'ALAMO', 3, NULL, NULL),
(5, 'delegacion', 'D-I-5', 'PRIMARIAS', 'ALTOTONGA', 5, NULL, NULL),
(6, 'delegacion', 'D-I-6', 'PRIMARIAS', 'ALVARADO', 9, NULL, NULL),
(7, 'delegacion', 'D-I-7', 'PRIMARIAS', 'BOCA DEL RIO', 6, NULL, NULL),
(8, 'delegacion', 'D-I-8', 'PRIMARIAS', 'CARDEL', 6, NULL, NULL),
(9, 'delegacion', 'D-I-9', 'PRIMARIAS', 'CERRO AZUL', 2, NULL, NULL),
(10, 'delegacion', 'D-I-10', 'PRIMARIAS', 'CIUDAD MENDOZA', 8, NULL, NULL),
(11, 'delegacion', 'D-I-11', 'PRIMARIAS', 'COATEPEC', 5, NULL, NULL),
(12, 'delegacion', 'D-I-12', 'FORANEAS', 'COATZACOALCOS', 11, NULL, NULL),
(13, 'delegacion', 'D-I-13', 'LOCALES', 'COATZACOALCOS', 11, NULL, NULL),
(14, 'delegacion', 'D-I-14', 'LOCALES', 'CORDOBA', 7, NULL, NULL),
(15, 'delegacion', 'D-I-15', 'PRIMARIAS', 'COSAMALOAPAN', 9, NULL, NULL),
(16, 'delegacion', 'D-I-16', 'PRIMARIAS', 'COSCOMATEPEC', 7, NULL, NULL),
(17, 'delegacion', 'D-I-17', 'PRIMARIAS', 'COSOLEACAQUE', 11, NULL, NULL),
(18, 'delegacion', 'D-I-18', 'PRIMARIAS', 'CHICONTEPEC', 1, NULL, NULL),
(19, 'delegacion', 'D-I-19', 'PRIMARIAS', 'CHONTLA', 2, NULL, NULL),
(20, 'delegacion', 'D-I-20', 'PRIMARIAS', 'EMILIANO ZAPATA', 5, NULL, NULL),
(21, 'delegacion', 'D-I-21', 'PRIMARIAS', 'ESPINAL', 3, NULL, NULL),
(22, 'delegacion', 'D-I-22', 'PRIMARIAS', 'FORTIN', 7, NULL, NULL),
(23, 'delegacion', 'D-I-23', 'PRIMARIAS', 'HUATUSCO', 7, NULL, NULL),
(24, 'delegacion', 'D-I-24', 'PRIMARIAS', 'HUAYACOCOTLA', 3, NULL, NULL),
(25, 'delegacion', 'D-I-25', 'PRIMARIAS', 'ISLA', 10, NULL, NULL),
(26, 'delegacion', 'D-I-26', 'PRIMARIAS', 'IXHUATLAN DE MADERO', 3, NULL, NULL),
(27, 'delegacion', 'D-I-27', 'PRIMARIAS', 'IXTACZOQUITLAN', 8, NULL, NULL),
(28, 'delegacion', 'D-I-28', 'PRIMARIAS', 'JESUS CARRANZA', 11, NULL, NULL),
(29, 'delegacion', 'D-I-29', 'PRIMARIAS', 'LERDO DE TEJADA', 10, NULL, NULL),
(30, 'delegacion', 'D-I-30', 'PRIMARIAS', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(31, 'delegacion', 'D-I-31', 'FORANEAS', 'MINATITLAN', 11, NULL, NULL),
(32, 'delegacion', 'D-I-32', 'LOCALES', 'MINATITLAN', 11, NULL, NULL),
(33, 'delegacion', 'D-I-33', 'PRIMARIAS', 'MISANTLA', 4, NULL, NULL),
(34, 'delegacion', 'D-I-34', 'PRIMARIAS', 'NAOLINCO', 5, NULL, NULL),
(35, 'delegacion', 'D-I-35', 'PRIMARIAS', 'NARANJOS', 2, NULL, NULL),
(36, 'delegacion', 'D-I-36', 'PRIMARIAS', 'OMEALCA', 7, NULL, NULL),
(37, 'delegacion', 'D-I-37', 'PRIMARIAS', 'ORIZABA', 8, NULL, NULL),
(38, 'delegacion', 'D-I-38', 'PRIMARIAS', 'OZULUAMA', 2, NULL, NULL),
(39, 'delegacion', 'D-I-39', 'PRIMARIAS', 'PANUCO', 1, NULL, NULL),
(40, 'delegacion', 'D-I-40', 'PRIMARIAS', 'PAPANTLA', 3, NULL, NULL),
(41, 'delegacion', 'D-I-41', 'PREESCOLAR', 'SAN ANDRES TUXTLA', 10, NULL, NULL),
(42, 'delegacion', 'D-I-42', 'PRIMARIAS', 'PASO DEL MACHO', 7, NULL, NULL),
(43, 'delegacion', 'D-I-43', 'PRIMARIAS', 'PIEDRAS NEGRAS', 6, NULL, NULL),
(44, 'delegacion', 'D-I-44', 'PRIMARIAS', 'PLATON SANCHEZ', 1, NULL, NULL),
(45, 'delegacion', 'D-I-45', 'PRIMARIAS', 'PLAYA VICENTE', 10, NULL, NULL),
(46, 'delegacion', 'D-I-46', 'PRIMARIAS', 'POZA RICA', 3, NULL, NULL),
(47, 'delegacion', 'D-I-47', 'PRIMARIAS', 'LAS VIGAS DE RAMIREZ', 5, NULL, NULL),
(48, 'delegacion', 'D-I-48', 'PRIMARIAS', 'SAN ANDRES TUXTLA', 10, NULL, NULL),
(49, 'delegacion', 'D-I-49', 'PRIMARIAS', 'SAYULA DE ALEMAN', 11, NULL, NULL),
(50, 'delegacion', 'D-I-50', 'PRIMARIAS', 'SOLEDAD DE DOBLADO', 6, NULL, NULL),
(51, 'delegacion', 'D-I-51', 'PRIMARIAS', 'TANTOYUCA', 1, NULL, NULL),
(52, 'delegacion', 'D-I-52', 'PRIMARIAS', 'TEMPOAL', 1, NULL, NULL),
(53, 'delegacion', 'D-I-53', 'PRIMARIAS', 'TEOCELO', 5, NULL, NULL),
(54, 'delegacion', 'D-I-54', 'PRIMARIAS', 'TEQUILA', 8, NULL, NULL),
(55, 'delegacion', 'D-I-55', 'PRIMARIAS', 'SAN JUAN TEXHUACAN', 8, NULL, NULL),
(56, 'delegacion', 'D-I-56', 'PRIMARIAS', 'TIERRA BLANCA', 9, NULL, NULL),
(57, 'delegacion', 'D-I-57', 'PRIMARIAS', 'TUXPAN', 2, NULL, NULL),
(58, 'delegacion', 'D-I-58', 'PRIMARIAS', 'VERACRUZ', 6, NULL, NULL),
(59, 'delegacion', 'D-I-59', 'PREESCOLAR', 'ACAYUCAN', 11, NULL, NULL),
(60, 'delegacion', 'D-I-60', 'PREESCOLAR', 'XALAPA', 5, NULL, NULL),
(61, 'delegacion', 'D-I-61', 'LOCALES', 'XALAPA', 5, NULL, NULL),
(62, 'delegacion', 'D-I-62', 'FORANEAS', 'XALAPA', 5, NULL, NULL),
(63, 'delegacion', 'D-I-63', 'PREESCOLAR', 'COSAMALOAPAN', 9, NULL, NULL),
(64, 'delegacion', 'D-I-64', 'PREESCOLAR', 'CORDOBA', 7, NULL, NULL),
(65, 'delegacion', 'D-I-65', 'PRIMARIAS', 'ZONGOLICA', 8, NULL, NULL),
(66, 'delegacion', 'D-I-66', 'FORANEAS', 'CORDOBA', 7, NULL, NULL),
(67, 'delegacion', 'D-I-67', 'PRIMARIAS', 'GUTIERREZ ZAMORA', 3, NULL, NULL),
(68, 'delegacion', 'D-I-68', 'PRIMARIAS', 'SANTIAGO TUXTLA', 10, NULL, NULL),
(69, 'delegacion', 'D-I-69', 'PRIMARIAS', 'TIHUATLAN', 3, NULL, NULL),
(70, 'delegacion', 'D-I-70', 'PRIMARIAS', 'TRES VALLES', 9, NULL, NULL),
(71, 'delegacion', 'D-I-71', 'PRIMARIAS', 'BENITO JUAREZ', 1, NULL, NULL),
(72, 'delegacion', 'D-I-72', 'PRIMARIAS', 'PUEBLO VIEJO', 1, NULL, NULL),
(73, 'delegacion', 'D-I-73', 'PRIMARIAS', 'PASO DE OVEJAS', 6, NULL, NULL),
(74, 'delegacion', 'D-I-74', 'PRIMARIAS', 'TLAPACOYAN', 4, NULL, NULL),
(75, 'delegacion', 'D-I-75', 'PRIMARIAS', 'CARRIZAL', 5, NULL, NULL),
(76, 'delegacion', 'D-I-76', 'PRIMARIAS', 'TOTUTLA', 7, NULL, NULL),
(77, 'delegacion', 'D-I-77', 'PRIMARIAS', 'JUCHIQUE DE FERRER', 4, NULL, NULL),
(78, 'delegacion', 'D-I-78', 'PREESCOLAR', 'ORIZABA', 8, NULL, NULL),
(79, 'delegacion', 'D-I-79', 'PREESCOLAR', 'ALVARADO', 9, NULL, NULL),
(80, 'delegacion', 'D-I-80', 'PREESCOLAR', 'TUXPAN ', 2, NULL, NULL),
(81, 'delegacion', 'D-I-81', 'PREESCOLAR', 'COATEPEC', 5, NULL, NULL),
(82, 'delegacion', 'D-I-82', 'PREESCOLAR', 'MINATITLAN', 11, NULL, NULL),
(83, 'delegacion', 'D-I-83', 'PREESCOLAR', 'POZA RICA', 3, NULL, NULL),
(84, 'delegacion', 'D-I-84', 'TECNICOS DOCENTES ADMINISTRATIVOS', 'XALAPA', 5, NULL, NULL),
(85, 'delegacion', 'D-I-85', 'PREESCOLAR', 'PAPANTLA', 3, NULL, NULL),
(86, 'delegacion', 'D-I-86', 'EDUCACION ESPECIAL', 'ACAYUCAN', 11, NULL, NULL),
(87, 'delegacion', 'D-I-87', 'PRIMARIAS', 'IXCATEPEC', 1, NULL, NULL),
(88, 'delegacion', 'D-I-88', 'PREESCOLAR', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(89, 'delegacion', 'D-I-89', 'PREESCOLAR', 'ISLA', 10, NULL, NULL),
(90, 'delegacion', 'D-I-90', 'PREESCOLAR', 'TANTOYUCA', 1, NULL, NULL),
(91, 'delegacion', 'D-I-91', 'PREESCOLAR', 'PANUCO', 1, NULL, NULL),
(92, 'delegacion', 'D-I-92', 'ENSEÑANZAS MUSICALES', 'XALAPA', 5, NULL, NULL),
(93, 'delegacion', 'D-I-93', 'PRIMARIAS', 'VEGA DE LA TORRE', 4, NULL, NULL),
(94, 'delegacion', 'D-I-94', 'PRIMARIAS', 'TAMIAHUA ', 2, NULL, NULL),
(95, 'delegacion', 'D-II-1', 'NORMAL', 'ACECECA', 1, NULL, NULL),
(96, 'delegacion', 'D-II-2', 'BACHILLERATO ANTONIO MARIA DE RIVERA VESPERTINA', 'XALAPA', 5, NULL, NULL),
(97, 'delegacion', 'D-II-3', 'BACHILLERATO  ARTICULO 3° DIURNA', 'XALAPA', 5, NULL, NULL),
(98, 'delegacion', 'D-II-4', 'BACHILLERATOS MATUTINOS', 'XALAPA', 5, NULL, NULL),
(99, 'delegacion', 'D-II-5', 'TELEBACHILLERATO', 'VERACRUZ', 6, NULL, NULL),
(100, 'delegacion', 'D-II-6', 'ILUSTRE INSTITUTO VERACRUZANO', 'VERACRUZ', 6, NULL, NULL),
(101, 'delegacion', 'D-II-7', 'SECUNDARIA Y BACHILLERES', 'POZA RICA', 3, NULL, NULL),
(102, 'delegacion', 'D-II-8', 'SECUNDARIA Y BACHILLERES', 'COSAMALOAPAN', 9, NULL, NULL),
(103, 'delegacion', 'D-II-9', 'ESCUELA SECUNDARIA Y BACHILLERES DE ARTES Y OFICIOS', 'CORDOBA', 7, NULL, NULL),
(104, 'delegacion', 'D-II-10', 'SECUNDARIA Y BACHILLERES', 'ALVARADO', 9, NULL, NULL),
(105, 'delegacion', 'D-II-11', 'SECUNDARIA', 'COATZACOALCOS', 9, NULL, NULL),
(106, 'delegacion', 'D-II-12', 'SECUNDARIA Y BACHILLERES', 'TLACOTALPAN', 9, NULL, NULL),
(107, 'delegacion', 'D-II-13', 'NORMAL', 'XALAPA', 5, NULL, NULL),
(108, 'delegacion', 'D-II-14', 'ABIERTA', 'ALVARADO', 9, NULL, NULL),
(109, 'delegacion', 'D-II-15', 'BACHILLERATOS VESPERTINOS', 'XALAPA', 5, NULL, NULL),
(110, 'delegacion', 'D-II-16', 'TELEBACHILLERATO', 'SAN ANDRES TUXTLA', 10, NULL, NULL),
(111, 'delegacion', 'D-II-17', 'TELESECUNDARIA', 'ORIZABA', 8, NULL, NULL),
(112, 'delegacion', 'D-II-18', 'TELEBACHILLERATO', 'CHICONTEPEC', 1, NULL, NULL),
(113, 'delegacion', 'D-II-19', 'TELEBACHILLERATO', 'ALAMO', 3, NULL, NULL),
(114, 'delegacion', 'D-II-20', 'TELEBACHILLERATO', 'TUXPAN', 2, NULL, NULL),
(115, 'delegacion', 'D-II-21', 'TELEBACHILLERATO', 'XALAPA', 5, NULL, NULL),
(116, 'delegacion', 'D-II-22', 'TELEBACHILLERATO', 'NARANJOS', 2, NULL, NULL),
(117, 'delegacion', 'D-II-23', 'SECUNDARIA', 'COATZACOALCOS', 11, NULL, NULL),
(118, 'delegacion', 'D-II-24', 'UNIVERSIDAD PEDAGOGICA VERACRUZANA', 'XALAPA', 5, NULL, NULL),
(119, 'delegacion', 'D-II-25', 'TELEBACHILLERATO', 'ESPINAL', 3, NULL, NULL),
(120, 'delegacion', 'D-II-26', 'TELEBACHILLERATO', 'ORIZABA', 8, NULL, NULL),
(121, 'delegacion', 'D-II-27', 'TELEBACHILLERATO', 'TIERRA BLANCA', 9, NULL, NULL),
(122, 'delegacion', 'D-II-28', 'TELEBACHILLERATO', 'ISLA', 10, NULL, NULL),
(123, 'delegacion', 'D-II-29', 'NORMAL', 'TLACOTALPAN', 9, NULL, NULL),
(124, 'delegacion', 'D-II-30', 'TELEBACHILLERATO', 'COSAMALOAPAN', 9, NULL, NULL),
(125, 'delegacion', 'D-II-31', 'TELEBACHILLERATO', 'COSCOMATEPEC', 7, NULL, NULL),
(126, 'delegacion', 'D-II-32', 'TELEBACHILLERATO', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(127, 'delegacion', 'D-II-33', 'TELEBACHILLERATO', 'POZA RICA', 3, NULL, NULL),
(128, 'delegacion', 'D-II-34', 'TELEBACHILLERATO', 'MISANTLA', 4, NULL, NULL),
(129, 'delegacion', 'D-II-35', 'TELEBACHILLERATO', 'TANTOYUCA', 1, NULL, NULL),
(130, 'delegacion', 'D-II-36', 'SECUNDARIA Y BACHILLERES', 'ORIZABA', 8, NULL, NULL),
(131, 'delegacion', 'D-II-37', 'TELESECUNDARIA', 'TANTOYUCA', 1, NULL, NULL),
(132, 'delegacion', 'D-II-38', 'TELESECUNDARIA', 'XALAPA', 5, NULL, NULL),
(133, 'delegacion', 'D-II-39', 'TELESECUNDARIA', 'ACAYUCAN', 11, NULL, NULL),
(134, 'delegacion', 'D-II-40', 'TELESECUNDARIA', 'VERACRUZ', 6, NULL, NULL),
(135, 'delegacion', 'D-II-41', 'TELESECUNDARIA', 'POZA RICA', 3, NULL, NULL),
(136, 'delegacion', 'D-II-42', 'TELESECUNDARIA', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(137, 'delegacion', 'D-II-43', 'BACHILLERATO', 'ALVARADO', 9, NULL, NULL),
(138, 'delegacion', 'D-II-44', 'TELEBACHILLERATO', 'ACAYUCAN', 11, NULL, NULL),
(139, 'delegacion', 'D-II-45', 'TELEBACHILLERATO', 'COATZACOALCOS', 11, NULL, NULL),
(140, 'delegacion', 'D-II-46', 'TELEBACHILLERATO II', 'XALAPA', 5, NULL, NULL),
(141, 'delegacion', 'D-II-47', 'TELEBACHILLERATO', 'PAPANTLA', 3, NULL, NULL),
(142, 'delegacion', 'D-II-48', 'TELEBACHILLERATO', 'SAN RAFAEL', 4, NULL, NULL),
(143, 'delegacion', 'D-II-49', 'SECUNDARIA', 'VERACRUZ', 6, NULL, NULL),
(144, 'delegacion', 'D-II-50', 'TELEBACHILLERATO', 'TEMPOAL', 1, NULL, NULL),
(145, 'delegacion', 'D-II-51', 'TELEBACHILLERATO', 'SANTIAGO TUXTLA', 10, NULL, NULL),
(146, 'delegacion', 'D-II-52', 'TELESECUNDARIA', 'COATZACOALCOS', 11, NULL, NULL),
(147, 'delegacion', 'D-II-53', 'ESCUELA SECUENDARIA Y BACHILLERATO ABIERTO', 'TUXPAN', 2, NULL, NULL),
(148, 'delegacion', 'D-II-54', 'TELESECUNDARIA', 'ALAMO', 3, NULL, NULL),
(149, 'delegacion', 'D-II-56', 'BACHILLERATO ANTONIO MARIA DE RIVERA', 'XALAPA', 5, NULL, NULL),
(150, 'delegacion', 'D-II-57', 'TELEBACHILLERATO', 'HUAYACOCOTLA', 3, NULL, NULL),
(151, 'delegacion', 'D-II-58', 'TELEBACHILLERATO', 'XALAPA', 5, NULL, NULL),
(152, 'delegacion', 'D-II-59', 'SECUNDARIA GENERAL', 'PANUCO', 1, NULL, NULL),
(153, 'delegacion', 'D-III-1', 'MANUALES', 'XALAPA', 5, NULL, NULL),
(154, 'delegacion', 'D-III-2', 'EDUCACION FISICA', 'TIERRA BLANCA', 9, NULL, NULL),
(155, 'delegacion', 'D-III-3', 'ADMINISTRATIVOS OFICINAS CENTRALES', 'XALAPA', 5, NULL, NULL),
(156, 'delegacion', 'D-III-4', 'ADMINISTRATIVOS  EDUCACION FISICA', 'XALAPA', 5, NULL, NULL),
(157, 'delegacion', 'D-III-5', 'EDUCACION FISICA', 'ORIZABA', 8, NULL, NULL),
(158, 'delegacion', 'D-III-6', 'EDUCACION FISICA', 'VERACRUZ', 6, NULL, NULL),
(159, 'delegacion', 'D-III-7', 'EDUCACION FISICA', 'ALVARADO', 9, NULL, NULL),
(160, 'delegacion', 'D-III-8', 'ADMINISTRATIVOS Y DOCENTES DE LA D.G.B', 'XALAPA', 5, NULL, NULL),
(161, 'delegacion', 'D-III-9', 'ADMINISTRATIVOS TELEBACHILLERATO', 'XALAPA', 5, NULL, NULL),
(162, 'delegacion', 'D-III-10', 'EDUCACION FISICA', 'CIUDAD MENDOZA', 8, NULL, NULL),
(163, 'delegacion', 'D-III-11', 'EDUCACION FISICA', 'CORDOBA', 7, NULL, NULL),
(164, 'delegacion', 'D-III-12', 'EDUCACION FISICA', 'POZA RICA', 3, NULL, NULL),
(165, 'delegacion', 'D-III-13', 'EDUCACION FISICA', 'TUXPAN', 2, NULL, NULL),
(166, 'delegacion', 'D-III-14', 'DOCENTES EDUCACION FISICA', 'XALAPA', 5, NULL, NULL),
(167, 'delegacion', 'D-III-15', 'EDUCACION FISICA', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(168, 'delegacion', 'D-III-16', 'EDUCACION FISICA', 'COATEPEC', 5, NULL, NULL),
(169, 'delegacion', 'D-III-17', 'EDUCACION FISICA', 'TANTOYUCA', 1, NULL, NULL),
(170, 'delegacion', 'D-III-18', 'EDUCACION FISICA', 'CARDEL', 6, NULL, NULL),
(171, 'delegacion', 'D-III-19', 'EDUCACION FISICA', 'SAN ANDRES TUXTLA', 10, NULL, NULL),
(172, 'delegacion', 'D-III-20', 'EDUCACION FISICA', 'COSAMALOAPAN', 9, NULL, NULL),
(173, 'delegacion', 'D-III-21', 'EDUCACION FISICA', 'HUATUSCO', 7, NULL, NULL),
(174, 'delegacion', 'D-III-22', 'EDUCACION FISICA', 'COATZACOALCOS', 11, NULL, NULL),
(175, 'delegacion', 'D-III-23', 'EDUCACION FISICA', 'XALAPA', 5, NULL, NULL),
(176, 'delegacion', 'D-III-24', 'ADMINISTRATIVOS TELEBACHILLERATO', 'XALAPA', 5, NULL, NULL),
(177, 'delegacion', 'D-IV-1', 'JUBILADOS Y PENSIONADOS', 'VERACRUZ', 6, NULL, NULL),
(178, 'delegacion', 'D-IV-2', 'JUBILADOS Y PENSIONADOS', 'XALAPA', 5, NULL, NULL),
(179, 'delegacion', 'D-IV-3', 'JUBILADOS Y PENSIONADOS', 'SAN ANDRES TUXTLA', 10, NULL, NULL),
(180, 'delegacion', 'D-IV-4', 'JUBILADOS Y PENSIONADOS', 'CIUDAD MENDOZA', 8, NULL, NULL),
(181, 'delegacion', 'D-IV-5', 'JUBILADOS Y PENSIONADOS', 'SOLEDAD DE DOBLADO', 6, NULL, NULL),
(182, 'delegacion', 'D-IV-6', 'JUBILADOS Y PENSIONADOS', 'COSAMALOAPAN', 9, NULL, NULL),
(183, 'delegacion', 'D-IV-7', 'JUBILADOS Y PENSIONADOS', 'ORIZABA', 8, NULL, NULL),
(184, 'delegacion', 'D-IV-8', 'JUBILADOS Y PENSIONADOS', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(185, 'delegacion', 'D-IV-9', 'JUBILADOS Y PENSIONADOS', 'TUXPAN', 2, NULL, NULL),
(186, 'delegacion', 'D-IV-10', 'JUBILADOS Y PENSIONADOS', 'POZA RICA', 3, NULL, NULL),
(187, 'delegacion', 'D-IV-11', 'JUBILADOS Y PENSIONADOS', 'TEMPOAL ', 1, NULL, NULL),
(188, 'delegacion', 'D-IV-12', 'JUBILADOS Y PENSIONADOS', 'NARANJOS', 2, NULL, NULL),
(189, 'delegacion', 'D-IV-13', 'JUBILADOS Y PENSIONADOS', 'TANTOYUCA', 1, NULL, NULL),
(190, 'delegacion', 'D-IV-14', 'JUBILADOS Y PENSIONADOS', 'ALAMO', 3, NULL, NULL),
(191, 'delegacion', 'D-IV-15', 'JUBILADOS Y PENSIONADOS', 'PAPANTLA', 3, NULL, NULL),
(192, 'delegacion', 'D-IV-16', 'JUBILADOS Y PENSIONADOS', 'CORDOBA', 7, NULL, NULL),
(193, 'delegacion', 'D-IV-17', 'JUBILADOS Y PENSIONADOS', 'COATEPEC', 5, NULL, NULL),
(194, 'delegacion', 'D-IV-18', 'JUBILADOS Y PENSIONADOS', 'ALTOTONGA', 5, NULL, NULL),
(195, 'delegacion', 'D-IV-19', 'JUBILADOS Y PENSIONADOS', 'COATZACOALCOS', 11, NULL, NULL),
(196, 'delegacion', 'D-IV-20', 'JUBILADOS Y PENSIONADOS', 'ACAYUCAN', 11, NULL, NULL),
(197, 'delegacion', 'D-IV-21', 'JUBILADOS Y PENSIONADOS', 'ALVARADO', 9, NULL, NULL),
(198, 'delegacion', 'D-IV-22', 'JUBILADOS Y PENSIONADOS', 'CHICONTEPEC', 1, NULL, NULL),
(199, 'delegacion', 'D-IV-23', 'JUBILADOS Y PENSIONADOS', 'PANUCO', 1, NULL, NULL),
(200, 'delegacion', 'D-IV-24', 'JUBILADOS Y PENSIONADOS', 'GUTIERREZ ZAMORA', 3, NULL, NULL),
(201, 'delegacion', 'D-IV-25', 'JUBILADOS Y PENSIONADOS', 'MINATITLAN', 11, NULL, NULL),
(202, 'delegacion', 'D-IV-26', 'JUBILADOS Y PENSIONADOS', 'ISLA', 10, NULL, NULL),
(203, 'delegacion', 'D-IV-27', 'JUBILADOS Y PENSIONADOS', 'BOCA DEL RIO', 6, NULL, NULL),
(204, 'delegacion', 'D-IV-28', 'JUBILADOS Y PENSIONADOS', 'MISANTLA', 4, NULL, NULL),
(205, 'delegacion', 'D-IV-29', 'JUBILADOS Y PENSIONADOS', 'TIERRA BLANCA', 9, NULL, NULL),
(206, 'delegacion', 'D-IV-30', 'JUBILADOS Y PENSIONADOS', 'PIEDRAS NEGRAS', 6, NULL, NULL),
(207, 'delegacion', 'D-IV-31', 'JUBILADOS Y PENSIONADOS', 'TIHUATLAN', 3, NULL, NULL),
(208, 'delegacion', 'D-IV-32', 'JUBILADOS Y PENSIONADOS', 'ZONGOLICA', 8, NULL, NULL),
(209, 'delegacion', 'D-IV-33', 'JUBILADOS Y PENSIONADOS', 'CARDEL', 6, NULL, NULL),
(210, 'delegacion', 'D-IV-34', 'JUBILADOS Y PENSIONADOS', 'TLACOTALPAN', 9, NULL, NULL),
(211, 'delegacion', 'D-IV-35', 'JUBILADOS Y PENSIONADOS', 'PUEBLO VIEJO', 1, NULL, NULL),
(212, 'delegacion', 'D-IV-36', 'JUBILADOS Y PENSIONADOS', 'TAMIAHUA ', 2, NULL, NULL),
(213, 'delegacion', 'D-IV-37', 'JUBILADOS Y PENSIONADOS', 'PLATON SANCHEZ', 1, NULL, NULL),
(214, 'centro de trabajo', 'C.T.01', 'BACHILLERATO', 'PAPANTLA', 3, NULL, NULL),
(215, 'centro de trabajo', 'C.T.02', 'SECUNDARIA', 'HUATUSCO', 7, NULL, NULL),
(216, 'centro de trabajo', 'C.T.03', 'BACHILLERATO SABATINO', 'XALAPA', 5, NULL, NULL),
(217, 'centro de trabajo', 'C.T.04', 'SECUNDARIA Y BACHILLERES', 'VERACRUZ', 6, NULL, NULL),
(218, 'centro de trabajo', 'C.T.05', 'ESCUELA Y BACHILLERES ALFONSO REYES', 'MISANTLA', 4, NULL, NULL),
(219, 'centro de trabajo', 'C.T.06', 'BACHILLERATO OFICIAL', 'CARDEL', 6, NULL, NULL),
(220, 'centro de trabajo', 'C.T.07', 'SECUNDARIA GENERAL', 'IXCATEPEC', 1, NULL, NULL),
(221, 'centro de trabajo', 'C.T.08', 'UNIVERSIDAD PEDAGOGICA VERACRUZANA', 'TUXPAN', 2, NULL, NULL),
(222, 'centro de trabajo', 'C.T.09', 'SECUNDARIA GENERAL', 'SAN RAFAEL', 4, NULL, NULL),
(223, 'centro de trabajo', 'C.T.10', 'SECUNDARIA', 'SOLEDAD DE DOBLADO', 6, NULL, NULL),
(224, 'centro de trabajo', 'C.T.11', 'BACHILLERATO OFICIAL', 'VERACRUZ', 6, NULL, NULL),
(225, 'centro de trabajo', 'C.T.13', 'SECUNDARIA', 'CIUDAD MENDOZA', 8, NULL, NULL),
(226, 'centro de trabajo', 'C.T.14', 'BACHILLERATO', 'ORIZABA', 8, NULL, NULL),
(227, 'centro de trabajo', 'C.T.15', 'BACHILLERATO NOCTURNA', 'VERACRUZ', 6, NULL, NULL),
(228, 'centro de trabajo', 'C.T.17', 'UNIVERSIDAD FEMENINA', 'VERACRUZ', 6, NULL, NULL),
(229, 'centro de trabajo', 'C.T.18', 'ESCUELA SECUNDARIA EXPERIMENTAL', 'XALAPA', 5, NULL, NULL),
(230, 'centro de trabajo', 'C.T.20', 'BACHILLEARTO RICARDO FLORES MAGON MIXTO', 'XALAPA', 5, NULL, NULL),
(231, 'centro de trabajo', 'C.T.21', 'BACHILLERATO ANTONIO MARIA DE RIVERA MIXTA', 'XALAPA', 5, NULL, NULL),
(232, 'centro de trabajo', 'C.T.22', 'BACHILLERATO ESTEBAN MORALES', 'VERACRUZ', 6, NULL, NULL),
(233, 'centro de trabajo', 'C.T.23', 'BACHILLERATO JOAQUIN RAMIREZ CABAÑAS MIXTA', 'XALAPA', 5, NULL, NULL),
(234, 'centro de trabajo', 'C.T.24', 'DEPARTAMENTO NORMALES', 'XALAPA', 5, NULL, NULL),
(235, 'centro de trabajo', 'C.T.25', 'EDUCACION FISICA', 'ACAYUCAN', 11, NULL, NULL),
(236, 'centro de trabajo', 'C.T.26', 'ESCUELA DE ENFERMERIA', 'ACAYUCAN', 11, NULL, NULL),
(237, 'centro de trabajo', 'C.T.27', 'BACHILLERATO EXPERIMENTAL MIXTA', 'XALAPA', 5, NULL, NULL),
(238, 'centro de trabajo', 'C.T.29', 'BACHILLERATO', 'MARTINEZ DE LA TORRE', 4, NULL, NULL),
(239, 'centro de trabajo', 'C.T.30', 'SECUNDARIA Y BACHILLERATO', 'MINATITLAN', 11, NULL, NULL),
(240, 'centro de trabajo', 'C.T.31', 'UNIVERSIDAD PEDAGOGICA VERACRUZANA', 'VERACRUZ', 6, NULL, NULL),
(241, 'centro de trabajo', 'C.T.32', 'SECUNDARIA', 'CARDEL', 6, NULL, NULL),
(242, 'centro de trabajo', 'C.T.33', 'NORMAL MANUEL SUAREZ TRUJILLO', 'XALAPA', 5, NULL, NULL),
(243, 'centro de trabajo', 'C.T.35', 'TELEBACHILLERATO', 'XALAPA', 5, NULL, NULL),
(244, 'centro de trabajo', 'C.T.36', 'SECUNDARIA Y BACHILLERATO', 'SANTIAGO TUXTLA', 10, NULL, NULL),
(245, 'centro de trabajo', 'C.T.40', 'TELEBACHILLERATO', 'ZONGOLICA', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `id` bigint UNSIGNED NOT NULL,
  `genero` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`id`, `genero`, `created_at`, `updated_at`) VALUES
(1, 'FEMENINO', NULL, NULL),
(2, 'MASCULINO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_05_30_211833_create_permission_tables', 1),
(5, '2023_05_31_145937_create_regions_table', 1),
(6, '2023_05_31_151619_create_generos_table', 1),
(7, '2023_05_31_152610_create_nivels_table', 1),
(8, '2023_05_31_153953_create_delegacions_table', 1),
(9, '2023_05_31_153959_create_users_table', 1),
(10, '2023_05_31_170840_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(3, 'App\\Models\\User', 83),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 86),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 94),
(3, 'App\\Models\\User', 95),
(3, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 97),
(3, 'App\\Models\\User', 98),
(3, 'App\\Models\\User', 99),
(3, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 101),
(3, 'App\\Models\\User', 102),
(3, 'App\\Models\\User', 103),
(3, 'App\\Models\\User', 104),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 107),
(3, 'App\\Models\\User', 108),
(3, 'App\\Models\\User', 109),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 114),
(3, 'App\\Models\\User', 115),
(3, 'App\\Models\\User', 116),
(3, 'App\\Models\\User', 117),
(3, 'App\\Models\\User', 118),
(3, 'App\\Models\\User', 119),
(3, 'App\\Models\\User', 120),
(3, 'App\\Models\\User', 121),
(3, 'App\\Models\\User', 122),
(3, 'App\\Models\\User', 123),
(3, 'App\\Models\\User', 124),
(3, 'App\\Models\\User', 125),
(3, 'App\\Models\\User', 126),
(3, 'App\\Models\\User', 127),
(3, 'App\\Models\\User', 128),
(3, 'App\\Models\\User', 129),
(3, 'App\\Models\\User', 130),
(3, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(3, 'App\\Models\\User', 133),
(3, 'App\\Models\\User', 134),
(3, 'App\\Models\\User', 135),
(3, 'App\\Models\\User', 136),
(3, 'App\\Models\\User', 137),
(3, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(3, 'App\\Models\\User', 140),
(3, 'App\\Models\\User', 141),
(3, 'App\\Models\\User', 142),
(3, 'App\\Models\\User', 143),
(3, 'App\\Models\\User', 144),
(3, 'App\\Models\\User', 145),
(3, 'App\\Models\\User', 146),
(3, 'App\\Models\\User', 147),
(3, 'App\\Models\\User', 148),
(3, 'App\\Models\\User', 149),
(3, 'App\\Models\\User', 150),
(3, 'App\\Models\\User', 151),
(3, 'App\\Models\\User', 152),
(3, 'App\\Models\\User', 153),
(3, 'App\\Models\\User', 154),
(3, 'App\\Models\\User', 155),
(3, 'App\\Models\\User', 156),
(3, 'App\\Models\\User', 157),
(3, 'App\\Models\\User', 158),
(3, 'App\\Models\\User', 159),
(3, 'App\\Models\\User', 160),
(3, 'App\\Models\\User', 161),
(3, 'App\\Models\\User', 162),
(3, 'App\\Models\\User', 163),
(3, 'App\\Models\\User', 164),
(3, 'App\\Models\\User', 165),
(3, 'App\\Models\\User', 166),
(3, 'App\\Models\\User', 167),
(3, 'App\\Models\\User', 168),
(3, 'App\\Models\\User', 169),
(3, 'App\\Models\\User', 170),
(3, 'App\\Models\\User', 171),
(3, 'App\\Models\\User', 172),
(3, 'App\\Models\\User', 173),
(3, 'App\\Models\\User', 174),
(3, 'App\\Models\\User', 175),
(3, 'App\\Models\\User', 176),
(3, 'App\\Models\\User', 177),
(3, 'App\\Models\\User', 178),
(3, 'App\\Models\\User', 179),
(3, 'App\\Models\\User', 180),
(3, 'App\\Models\\User', 181),
(3, 'App\\Models\\User', 182),
(3, 'App\\Models\\User', 183),
(3, 'App\\Models\\User', 184),
(3, 'App\\Models\\User', 185),
(3, 'App\\Models\\User', 186),
(3, 'App\\Models\\User', 187),
(3, 'App\\Models\\User', 188),
(3, 'App\\Models\\User', 189),
(3, 'App\\Models\\User', 190),
(3, 'App\\Models\\User', 191),
(3, 'App\\Models\\User', 192),
(3, 'App\\Models\\User', 193),
(3, 'App\\Models\\User', 194),
(3, 'App\\Models\\User', 195),
(3, 'App\\Models\\User', 196),
(3, 'App\\Models\\User', 197),
(3, 'App\\Models\\User', 198),
(3, 'App\\Models\\User', 199),
(3, 'App\\Models\\User', 200),
(3, 'App\\Models\\User', 201),
(3, 'App\\Models\\User', 202),
(3, 'App\\Models\\User', 203),
(3, 'App\\Models\\User', 204),
(3, 'App\\Models\\User', 205),
(3, 'App\\Models\\User', 206),
(3, 'App\\Models\\User', 207),
(3, 'App\\Models\\User', 208),
(3, 'App\\Models\\User', 209),
(3, 'App\\Models\\User', 210),
(3, 'App\\Models\\User', 211),
(3, 'App\\Models\\User', 212),
(3, 'App\\Models\\User', 213),
(3, 'App\\Models\\User', 214),
(3, 'App\\Models\\User', 215),
(3, 'App\\Models\\User', 216),
(3, 'App\\Models\\User', 217),
(3, 'App\\Models\\User', 218),
(3, 'App\\Models\\User', 219),
(3, 'App\\Models\\User', 220),
(3, 'App\\Models\\User', 221),
(3, 'App\\Models\\User', 222),
(3, 'App\\Models\\User', 223),
(3, 'App\\Models\\User', 224),
(3, 'App\\Models\\User', 225),
(2, 'App\\Models\\User', 226);

-- --------------------------------------------------------

--
-- Table structure for table `niveles`
--

CREATE TABLE `niveles` (
  `id` bigint UNSIGNED NOT NULL,
  `nivel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `niveles`
--

INSERT INTO `niveles` (`id`, `nivel`, `created_at`, `updated_at`) VALUES
(1, 'PREESCOLAR', NULL, NULL),
(2, 'PRIMARIA', NULL, NULL),
(3, 'EDUCACIÓN ESPECIAL', NULL, NULL),
(4, 'SECUNDARIAS', NULL, NULL),
(5, 'EDUCACIÓN FÍSICA', NULL, NULL),
(6, 'NIVELES ESPECIALES', NULL, NULL),
(7, 'TELESECUNDARIAS', NULL, NULL),
(8, 'PAAE', NULL, NULL),
(9, 'BACHILLERATO', NULL, NULL),
(10, 'TELEBACHILLERATO', NULL, NULL),
(11, 'NORMALES', NULL, NULL),
(12, 'UPV ', NULL, NULL),
(13, 'PENSIONADOS Y JUBILADOS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ver-rol', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(2, 'crear-rol', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(3, 'editar-rol', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(4, 'borrar-rol', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(5, 'ver-user', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(6, 'crear-user', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(7, 'editar-user', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(8, 'borrar-user', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(9, 'ver-region', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(10, 'crear-region', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(11, 'editar-region', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(12, 'borrar-region', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(13, 'ver-delegacion', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(14, 'crear-delegacion', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(15, 'editar-delegacion', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(16, 'borrar-delegacion', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(17, 'ver-genero', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(18, 'crear-genero', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(19, 'editar-genero', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(20, 'borrar-genero', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(21, 'ver-nivel', 'web', '2023-05-31 23:38:31', '2023-05-31 23:38:31'),
(22, 'crear-nivel', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(23, 'editar-nivel', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(24, 'borrar-nivel', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(25, 'ver-usuario', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(26, 'crear-usuario', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(27, 'editar-usuario', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(28, 'borrar-usuario', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(29, 'ver-usuario-deleg', 'web', '2023-06-05 23:19:37', '2023-06-05 23:19:37'),
(30, 'crear-usuario-deleg', 'web', '2023-06-05 23:19:37', '2023-06-05 23:19:37'),
(31, 'editar-usuario-deleg', 'web', '2023-06-05 23:19:37', '2023-06-05 23:19:37'),
(32, 'borrar-usuario-deleg', 'web', '2023-06-05 23:19:37', '2023-06-05 23:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regiones`
--

CREATE TABLE `regiones` (
  `id` bigint UNSIGNED NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinador` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regiones`
--

INSERT INTO `regiones` (`id`, `region`, `sede`, `coordinador`, `created_at`, `updated_at`) VALUES
(1, 'REGIÓN I', 'TANTOYUCA', 'PROF. HECTOR MIGUEL TORRES PÉREZ', NULL, NULL),
(2, 'REGIÓN II', 'TUXPAN', 'PROF. JOSÉ GUADALUPE MUÑOZ REYES', NULL, NULL),
(3, 'REGIÓN III', 'POZA RICA', 'PROF. JUAN MARTÍNEZ ACOSTA', NULL, NULL),
(4, 'REGIÓN IV', 'MARTÍNEZ DE LA TORRE', 'PROF. SERGIO MARTÍNEZ MORATO', NULL, NULL),
(5, 'REGIÓN V', 'XALAPA', 'PROFA. DORA CAROLINA LAGUNES DÍAZ', NULL, NULL),
(6, 'REGIÓN VI', 'VERACRUZ', 'PROF. LUIS EDUARDO CHÁVEZ ROJO', NULL, NULL),
(7, 'REGIÓN VII', 'CORDOBA', 'PROF. RAMIRO MONTESINO TRUJILLO', NULL, NULL),
(8, 'REGIÓN VIII', 'ORIZABA', 'PROF. PORFIRIO GUTIÉRREZ LOPÉZ', NULL, NULL),
(9, 'REGIÓN IX', 'COSAMALOAPAN', 'PROF. JOSÉ DE JESÚS SÁNCHEZ SERMAN', NULL, NULL),
(10, 'REGIÓN X', 'SAN ANDRES TUXTLA', 'PROF. FRANCISCO CILIAS SUSUNAGA', NULL, NULL),
(11, 'REGIÓN XI', 'MINATITLÁN', 'PROF. LUIS ARMANDO LÓPEZ ALVARADO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(2, 'Supervisor', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32'),
(3, 'Editor', 'web', '2023-05-31 23:38:32', '2023-05-31 23:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(1, 2),
(5, 2),
(9, 2),
(13, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 3),
(30, 3),
(31, 3),
(32, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_delegacion` bigint UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `id_delegacion`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'VICENTE JUAREZ ALARCON', 'juarez.vic@gmail.com', NULL, '$2y$10$hahCavFbebXZWCUt.y270edZBPx.g2bdLFZsZUosZy6XrU.YlWzXq', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(2, 'ISRAEL LANDA ORTIZ', 'ilanda@email.com', NULL, '$2y$10$JkqZ6Ib1Av0gc0j6Nyn4De90III6uSNnppw6wLSg5tvaaJKKoS2G.', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(3, 'ABEL MENDOZA CONDADO', 'amendoza@email.com', NULL, '$2y$10$uwC68ZZi0PrB5VwEZAr9S.bbp/Yk8AuDs7huPJQ8UkSyMbAdEp9A2', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(4, 'HÉCTOR MIGUEL TORRES PÉREZ', 'migueltorres830607@hotmail.com', NULL, '$2y$10$.94qjxYFOiNnxoMWPdjLLeRaNN7oY0Il/Jj3QhrTiV/v26GJ2UVgy', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(5, 'JOSÉ GUADALUPE MUÑOZ REYES', 'jose.guadamur78@hotmail.com', NULL, '$2y$10$KYaKKA.1i7YGJKYIZnGbjO4046kEwXKdfgJnfDwBuu9TgtLKqu546', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(6, 'JUAN MARTÍNEZ ACOSTA', 'acostajuan1380.ja@gmail.com', NULL, '$2y$10$lj0hVMY4seEd0/RHKLnW..ZuShapYxMXtntzLCFLd2gV2vM5aFcb6', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(7, 'SERGIO MARTÍNEZ MORATO', 'moratoser77@gmail.com', NULL, '$2y$10$MijrpYkBmUMzmQD6rHYSYeesVCqYzufYR1ECWEe3bARQsSQ8mJl06', 1, NULL, '2023-06-06 02:35:15', '2023-06-06 02:35:15'),
(8, 'DORA CAROLINA LAGUNES DÍAZ', 'carolain_12@hotmail.com', NULL, '$2y$10$Al.Mh3mJYYf9E.BSP9D7uOTMaKM/cNw5x3Offhn92NlhgacgYx0Zm', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(9, 'LUIS EDUARDO CHÁVEZ ROJO', 'rojo_le@hotmail.com', NULL, '$2y$10$/PuW0xVkllkHm1.S1STuk.dCeXp5sGzt/516pWAE76a/gV/KFd5Bu', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(10, 'RAMIRO MONTESINOS TRUJILLO', 'redli@live.com.mx', NULL, '$2y$10$cxC/i9LKLJmgRHBqV6DbWufrspdBr2FtN7G.0DvrGuEAyzXDMnKKW', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(11, 'PORFIRIO GUTIÉRREZ LÓPEZ', 'madajoev@hotmail.com', NULL, '$2y$10$Sp5nwjLXa237oZkaH.QJ1eFYsmGAhdm1MozRTgoZck.W1jceSgd1.', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(12, 'JOSÉ DE JESÚS SÁNCHEZ SERMAN', 'licserman2009@live.com.mx', NULL, '$2y$10$Ypxz59Wjf5WRRlMlrQ4jYuUsS0/qKfQpWqSpkfAUqF0LmLF8r7mm2', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(13, 'FRANCISCO CILIAS SUSUNAGA', 'cilias_susunaga@hotmail.com', NULL, '$2y$10$kq99abgpZA6MF7vScadcQOhpH7l87SXiEpU3V9rVn3Ur0SF9mE8vK', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(14, 'LUIS ARMANDO LÓPEZ ALVARADO', 'luisbachis@hotmail.com', NULL, '$2y$10$II1CvekDYXfQVljcjTxObOeWc/KehNWy8f3WLOCGSHYvVdFA3Smoa', 1, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(15, 'LUIS EUSEBIO USCANGA OCHOA', 'lefnegrito@hotmail.com', NULL, '$2y$10$fkaThuTm0dWWNctL2UCk/exetziwo.3UGrEsHNm63aUREo.TuMbna', 171, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(16, 'LUÍS ALFREDO HERRERA HERNÁNDEZ', 'snte56d-ii-59panuco@outlook.com', NULL, '$2y$10$GPKUslYqupNvxGgmWP4GJODxAYDEQGACyWS/GJhxOsxJpVl5AwBO.', 152, NULL, '2023-06-06 02:35:16', '2023-06-06 02:35:16'),
(17, 'JORGE LUIS BERNABE GARCIA', 'jlberna_18@hotmail.com', NULL, '$2y$10$APbJUOHm6lftpQOzgQnFmeDNIP8y9CNenEA4u8aQqjjMAP5K.eUD.', 165, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(18, 'PÁVEL ISRAEL GARCÍA GÓMEZ', 'pavelisraelgarciagomez@gmail.com', NULL, '$2y$10$u3LkxidWnTiWb2k1X2AyVuQA0t1xy9.9GKLkzcyx3xc9X19Ar5H4G', 114, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(19, 'VALENTINA AVILA SOUSA', 'beatriz.bar.71@gmail.com', NULL, '$2y$10$0nTfIRNaGS1kXyuwpf/HYu0MbanI6NpRilnCdogLHm52r3Fs8Ov.u', 242, NULL, '2023-06-06 02:35:17', '2023-06-08 02:12:06'),
(20, 'ROBERTO CARLOS GARCÍA ALEJANDRE', 'alejandreroca@hotmail.com', NULL, '$2y$10$xiMo5Un58/6/nG5UFTsDcePAloNGTBPcmICvVfSRp7mpV4ja04YMW', 94, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(21, 'IRIS CRISTAL CAMARERO PRIEGO', 'pink082484@gmail.com', NULL, '$2y$10$KsW1GI/RuUAZHPIaieexYeexwk/HFzblXKzbiqrPz/Pp6WcFaMaBy', 8, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(22, 'JAVIER MALERVA MARTÍNEZ', 'javiermalerva80@gmail.com', NULL, '$2y$10$RuYb2mlGU8i8WeHfRdpSl.hYHVKauP6YtMYXYWPcjfG2ZPgOeB9.a', 9, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(23, 'ANA ISABEL SALAZAR MARTÍNEZ', 'samaranai1@hotmail.com', NULL, '$2y$10$Ubz1e1cuyEUgsv0oIfU3q.QMk6ONK1dNnX9n.HqmOgQ/ydFYB1xeu', 116, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(24, 'ENRIQUE LUNA MUÑOZ', 'prof.luna@hotmail.com', NULL, '$2y$10$5VJgfNboq1WhGjpYWREZtOXrGi/9FMXFK3uW5cFbpZtRsGA1jtvXy', 125, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(25, 'JESÚS DEL ÁNGEL ROBLES', 'chuzo_2008@hotmail.com', NULL, '$2y$10$OcukCCGf6bvK0P31rOqRM.4hJWdc/aIucSw1HWb0lw9jsp1ELTpeu', 129, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(26, 'TONATIU GARCIA AMADOR', 'tonanzin17@gmail.com', NULL, '$2y$10$Gh89g000JcqIJdWxcpDbs.FgwnaOgkGObeICqyxV9cZWQgk3Buq3.', 147, NULL, '2023-06-06 02:35:17', '2023-06-06 02:35:17'),
(27, 'KARLA ANGELICA VALERIO PAZ', 'profra.vp@hotmail.com', NULL, '$2y$10$XhTmxvRGN45GLQ0gr52Q1.5/E/CC6g94ERtZ6cgtwFz1HFXNtrEzK', 57, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(28, 'EMMANUEL OBANDO PEREZ', 'obando.83@hotmail.com', NULL, '$2y$10$1cB8Wm.z2IExf8CtZh3nZuRHgFzYUpU/Tn7F5UU/mvBfWm7lACyj.', 35, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(29, 'MARIO HERVIN SOSA SOSA', 'mariohervin@hotmail.com', NULL, '$2y$10$oG0fbB4wQiDY9EH5u9d6xOZBqgcHjMNpW49rDtGV9obDycslvxtoe', 19, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(30, 'JOSÉ DANIEL LOYA ROSAS', 'josedanielloyarosas@gmail.com', NULL, '$2y$10$zJbf1e33qYZ82Va8njpL3e4rFSASjrHi95Unx1dU/MF4iMeStx5NK', 38, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(31, 'LUCAS BAUTISTA HERNANDEZ', 'astaez1978@outlook.com', NULL, '$2y$10$Ds9z.DCXnzQgT7Q4FstRVe6JA4/1HX3VxgO7w3S/tnJ6TgGKlYDKa', 71, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(32, 'ELIZABETH ESCOBAR PERDOMO', 'eli.escper@gmail.com', NULL, '$2y$10$CuScK7/WN72wKhUCuw7oE..05DfEKqBzS2rcMORBbQn/Q7/Ocdgsy', 80, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(33, 'GABRIEL ROBERTO ZAVALA QUINTERO', 'chaneque_zavala@hotmail.com', NULL, '$2y$10$oCg6QBCDnD/TTn.J2UxWuO6IQDS7ieROTGccLd7cKkYWYwr8Ek8Zy', 144, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(34, 'JUAN CRUZ LAGUNES', 'delboing_jcl@hotmail.com', NULL, '$2y$10$z6xIgZfn.kPefxoWiRYsGu7QuOB71ZRq4M7Lc/PdDE/ixJ4TJoivm', 128, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(35, 'KARINA LANDA RODRÍGUEZ', 'karina.ne2008@hotmail.com', NULL, '$2y$10$hNVt7yCQK0K9tAwvCJkCwesnV4kCTKPHK.mRTHsN2ZCQJx1Md6QC6', 60, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(36, 'NIMBE ELISDATH FLORES ACOSTA', 'braxton111@hotmail.com', NULL, '$2y$10$Bw..ssPFnakW5hWlj98EYOcvgaP/PO3EeY/7.1sbNkUmRdgGsQDAa', 43, NULL, '2023-06-06 02:35:18', '2023-06-06 02:35:18'),
(37, 'ASAID GARCÍA MARTÍNEZ', 'gamasaid@hotmail.com', NULL, '$2y$10$fGz/.m64mxCacWZACtTE5Od55ddLNMdu5dDEkTyYMTClL4w8hG0Im', 93, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(38, 'JOSÉ ANTONIO PREZA REYES', 'snteeducacionfisica_mtz@outlook.com', NULL, '$2y$10$QuMQUiEKKyQRHlj1gmbVnOM67Ytizb2DN8rdPdcNW08CQYabe8Jbq', 167, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(39, 'EDUARDO MIGUEL MONTALVO MARTÍNEZ', 'kowboy_9@hotmail.com', NULL, '$2y$10$MUAdhQQJVeUi.xnh.FVPw.75dQee.dJSNzsC5MOhMCIil/BdAp.66', 106, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(40, 'MARIO ALBERTO ABURTO CANO', 'cano241085@hotmail.com', NULL, '$2y$10$TBxesqOThzJLRQyfwJH8m.UTxj9zRcCwToKjvzFhGfqSyi6u84EVq', 74, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(41, 'ARMANDO RODRÍGUEZ HERNÁNDEZ', 'rohea_2002@hotmail.com', NULL, '$2y$10$j6KO/yDM3NFRzUWwVCR2yu79QOw3AOewKxtEe0zw0cjM/K5Yc6ubq', 126, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(42, 'HABACUC VLADIMIR AGUILAR RAMÍREZ', 'vlad_aguilarjr@hotmail.com', NULL, '$2y$10$NsD7t5iezrCLFi90xtjygOHpY0u7XgC0.RGBOwZs7Tmt47C9PlL9W', 136, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(43, 'MARIA DE LOURDES VARGAS JUÁREZ', 'lulisvarjua@hotmail.com', NULL, '$2y$10$60rqiTzY5LHaNYfzUQH7I.YLpIYCA1dqtSlWRHXbNBaO82opI7PK.', 131, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(44, 'JOSÉ ANTONIO LÓPEZ HERNÁNDEZ', 'jossen_82@hotmail.com', NULL, '$2y$10$S/UvBoESXNeO/AK50M28NeFTH3cGjcBqxPFashcwt2tuTwlBDKO2G', 142, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(45, 'JASON SOTO HERRERA', 'jasonsoto_122@hotmail.com', NULL, '$2y$10$cSgyVUBKhNL1tlHzJD4RMez8DecFq9cJK6qfTMw.RJuNYS3C5L42K', 30, NULL, '2023-06-06 02:35:19', '2023-06-06 02:35:19'),
(46, 'LUIS ENRIQUE RUFINO CUEVAS', 'artes-upv2018@hotmail.com', NULL, '$2y$10$DN6.3KfjSGrDnteBsgecEOzqz8kc8nqsEDuEGf.O266wMsa.BbWay', 33, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(47, 'MARÍA DEL CARMEN HERNANDEZ ROSAS', 'mely_h3r769@hotmail.com', NULL, '$2y$10$J26t.TUdw6pORRBmI82uzuU9/1buOrrLr9ntXFLq3IOyvAzgNql5e', 108, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(48, 'MARÍA DEL CARMEN HERNÁNDEZ ROSAS', 'mely_h3r768@hotmail.com', NULL, '$2y$10$e7OrJwXzFdDixhpIwsebUu09l/452L9RrzGlkbUbaORO6Ti8kW.Ru', 58, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(49, 'TOMAS VIVEROS DE LA LUZ', 'tomyviver85@gmail.com', NULL, '$2y$10$wBh3iJZnWK5SbknC9Ed3V.bqHNHMc6Tg0f6w44bK.LUCeSxHnixu.', 170, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(50, 'YESICA MARITZA TRINIDAD CANO', 'yesicamaritza95@outlook.com', NULL, '$2y$10$8/xFvGcs3ylPVgS0FkFxGerHgLK/MIGyQ8OrmIFQ6XP/rZpk4iT6K', 79, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(51, 'MILTON JAVIER MARTÍNEZ ORTEGA', 'milton_24@hotmail.com', NULL, '$2y$10$QW4ggR4XZy.Gvr62gcHVx.ORynwQ2/Pz7TOHnhpVzt.nQTtTZ4f7S', 23, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(52, 'SERGIO HERNANDEZ MENDOZA', 'cergi23_@hotmail.com', NULL, '$2y$10$eQuNKicTFtV6ENRyaJxBQOw4AA0/2hJGYrI1RoJJYAu4CGqrtibP.', 151, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(53, 'VICTOR PERALTA SOLÍS', 'v.peralta2014@hotmail.com', NULL, '$2y$10$PGlpzepgYzJv9JbU6EV5wutxujm7TqK0bBWqV0GdQKpa.W6/HjEMS', 66, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(54, 'SOLEDAD GARCIA LOBO', 'garcisol1973@gmail.com', NULL, '$2y$10$XYuxKLXq5IXQ5oi8lTJY3u/oGjiVn2mnjCQ5Zx/xv15Oq6Ct6/aZS', 88, NULL, '2023-06-06 02:35:20', '2023-06-06 02:35:20'),
(55, 'PATRICIA CARRASCO HERNÁNDEZ', 'paty_cardz@hotmail.com', NULL, '$2y$10$BSg1X1v63yH7mSqjph2B3uN4GeefIEeLTU.IGIz3rk3R.a.ofA/Ay', 78, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(56, 'SANDINO GABRIEL SANTOS AYALA', 'sandinogabriel@hotmail.com', NULL, '$2y$10$js1Z.uupTZAWfBRQZjP5juU5I6QImbbV3wtozWWnkn48U6scI2OvO', 48, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(57, 'LESTER BALAM PEREZ GARCIA', 'lesjaguar@hotmail.com', NULL, '$2y$10$UrHvH0oFBMqKxfUELr446OgVpud6Jd6jyYODGrCZgqTNg4ubBlRTC', 36, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(58, 'ÁNGEL MANUEL CAMPOS PACHECO', 'angelmanuelcampospacheco@gmail.com', NULL, '$2y$10$Ue3kMe2BSKj0aJ3uqkxcmONGd6smPR/HAmke3LfeKT107.8ia7nKG', 14, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(59, 'AGRIPINO ARGÜELLES ARGÜELLES', 'agripinoarar@gmail.com', NULL, '$2y$10$q.EgGzYToY3HbX7.oiogYuQUCfhAH70uWPKFh/y1hIN7vH141e2Xm', 25, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(60, 'RUTH MARÍA PAVÁN SALOMÓN', 'pasaruth@hotmail.com', NULL, '$2y$10$Cpjyu4VtOBckGcXoSrMP8eX0LKaCGy1JcI4KrabrI53Ukj4CdR49K', 123, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(61, 'LUIS FERNANDO CABRERA VILLEGAS', 'fercabvill2@hotmail.com', NULL, '$2y$10$h0wwVL90SFoTfkS8xryW5.MYP.krDbp9irvKxn2xMlIsNhnSnDiM.', 110, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(62, 'GRACIELA AIDA PAVÓN ARMENTA', 'gapavon@hotmail.com', NULL, '$2y$10$H336C9Qqw9Folo/CxrdupuCTjTXXJfOlfGdM.DcO2IgAPXIo5c8oy', 84, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(63, 'MIGUEL ANGEL VAZQUEZ VAZQUEZ', 'vazquezvazquezmiguel912@gmail.com', NULL, '$2y$10$e3YLOZhsFyYKQXMi7HZ7AOOo81SJS7PKn.oyNKABzHmq3O8oJt9RG', 45, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(64, 'RAMON FERNANDEZ MATEOS', 'ramonfernandez3108@gmail.com', NULL, '$2y$10$fxvb2t5.a0DyTlYwHdqRteavIZs4Kea97ckpe13ChagSosIQEmroO', 122, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(65, 'ISMAEL LOPEZ CABALLERO', 'struendo1986@hotmail.com', NULL, '$2y$10$FaDFl.gn5//QQUkW085b/uaDnViEXqYwN3q0s0n/SuwuOVpyVcHs6', 104, NULL, '2023-06-06 02:35:21', '2023-06-06 02:35:21'),
(66, 'LORENA CHIUNTI REYES', 'lorenchiu@hotmail.com', NULL, '$2y$10$3Voc1kRGi8LbVL.Mo0e5ye0h4Ebpzi/24gfBuiPZwze0V9/EtoZtm', 63, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(67, 'BRENDA LUCIA SANTIAGO MEDINA', 'bennylu_santi@hotmail.com', NULL, '$2y$10$ANuMLHUcgGKck.Qt.wbrCuVndeb33KB.2LcRPocavik/ahXRnsjH.', 29, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(68, 'RUTH ABURTO MONTALVO', 'ruthaburtomontalvo@hotmail.com', NULL, '$2y$10$Bu7AJpuWRSmK/t9qfpy7s.untyAAt7V2mILzuLJE2BxxOa1V7KZVy', 89, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(69, 'EUSTOLIO YEPEZ LUNA', 'e_yepez@hotmail.com', NULL, '$2y$10$M.nDCXmjgCsmbdnPWz39UOU6FXREv6R7rzweKCv64.V3od/OS3K5i', 145, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(70, 'RICARDO ADOLFO ZIENER RUISECO', 'bastian_ozil@hotmail.com', NULL, '$2y$10$YK96OChZsgogdBrShuVuBO.9DQ.pU2I.rxTbGWLkj.jDQ/QeNgljG', 68, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(71, 'FLOR MODESTA MATÍAS HERNÁNDEZ', 'flormh.0210@gmail.com', NULL, '$2y$10$lt6LoK9rUbWX0gc3oBMczeC6iJ2ZsQOTylbX2zgYEp0ABK6vH9lSu', 37, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(72, 'IRMA ARACELI OVANDO MARTÍNEZ', 'oami750520@gmail.com', NULL, '$2y$10$EVQshHJmWgK/GLJNuRh2UuamIq4QdDrHNSaUrFbvpM7mTTm9qN5mO', 156, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(73, 'FÉLIX MAYO RODRÍGUEZ', 'fmr306@hotmail.com', NULL, '$2y$10$jBq2lyIKMPyNFQl5i5UfCebzKyil1vuZ.9L1nH70l4/JxE1cGtImW', 115, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(74, 'ROBERTO ALEJANDRO NORIEGA LAGUNAS', 'noriegaroberto@hotmail.com', NULL, '$2y$10$46htJE5JlY/3LJ0Ax/KuXOZXPAjuQYVmzhaJ31zFpZWMlq4sRmoZe', 103, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(75, 'MANUEL CLEMENTE LÓPEZ VELÁZQUEZ', 'mclopez76@gmail.com', NULL, '$2y$10$VvMwZ1gXVKzAbm8BIigneuoUt6RRSAxSs8N1I1V02Eg5Ct8DV73K6', 140, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(76, 'KARLA QUETZALLI HERNÁNDEZ ANDREW', 'selketescorpion@gmail.com', NULL, '$2y$10$FPz6yR.cQ8bR4MEzIpt8R.x2J82c4YN02wR.UajsQFiRcLEU3M92i', 41, NULL, '2023-06-06 02:35:22', '2023-06-06 02:35:22'),
(77, 'EDGAR SÁNCHEZ AGUAS', 'd165zong@gmail.com', NULL, '$2y$10$qnYtpJsuR0zFwGNuw5f87e/ixYkM4EdaZz2Nh38.Jk.a8Y3bpfjxW', 65, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(78, 'KARLA JANETTE RIVADENEYRA MEJIA', 'karlita_riva@hotmail.com', NULL, '$2y$10$wvYdk1.pHqvpKlQRSEBZMOLoTcHorQf.G/VGo/1bT/aXaGzUuAyaC', 55, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(79, 'RAUL PIÑA ORTIZ', 'rulimpio@gmail.com', NULL, '$2y$10$7SfPBWpcWLou5m4rgIf.Ku5Etyyit7knaB7FY1WBtw9hZ/6C4wuo.', 10, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(80, 'VICTOR HUGO ZEPAHUA MONTALVO', 'hugozm1486@gmail.com', NULL, '$2y$10$2j8CKqpciqUI9ZfAEJqs8ulv/LCcwU0tD9qBJh1kU246AZbiI11Zq', 54, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(81, 'PEDRO MÁRQUEZ ', 'pedromarquezgriss@hotmail.com', NULL, '$2y$10$nuRRWPeTI1hW2wlontm8SOgxKcFl/FlMM3scLgWHn59F8WSAFbwp2', 153, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(82, 'HORACIO CORTINA ROCHA', 'corttynna@hotmail.com', NULL, '$2y$10$212aHjVYoWLFfTmmPF5bxecE9jaHD6TePnPNMbjn9QbI4Fws9NmLi', 163, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(83, 'GASPAR FERNANDEZ GUZMAN', 'ferguz3104@hotmail.com', NULL, '$2y$10$Tlcw6YsiS7pm9fkokud7ueQRQQ9oC9253NZmZgCfNZgq2BraNRsS.', 5, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(84, 'MIRIAM FÉLIX CANTU', 'pichis65@hotmail.com', NULL, '$2y$10$4ETKKT8JC1s1jv9G6hfraORKUtMYKn6cxJztb1TLJW3xEUNME/xbi', 92, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(85, 'TATIANA PARDIÑAS CUERVO', 'tatilehi@gmail.com', NULL, '$2y$10$qRuTavSspGXq0F4AJw8Pj.Qbr6zKWwmRjWahszdiYFpnxzMvSExJK', 90, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(86, 'ALBERTO TRINIDAD FLORES', 'soyhuasteco@hotmail.com', NULL, '$2y$10$soHF7ykKrn1j7Jewj9Fmm.UmzJV5wcdJR1FB4DrcUAUs/f05qcSxK', 87, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(87, 'JOSAFAT MARTINEZ RODRIGUEZ', 'josamr17@gmail.com', NULL, '$2y$10$H7DEhBqPBcfY5zLWfyRHVec9stWcgoTIzPENWuYoVvWQ0IzEUXKaq', 111, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(88, 'JOSÉ DOMINGO BADIANO RUÍZ', 'tebadianodom@gmail.com', NULL, '$2y$10$2exXiFjfHuOQm6jG3O4q8eVhbZybDhHn514/MmQPxjFfNH6kGDk.O', 120, NULL, '2023-06-06 02:35:23', '2023-06-06 02:35:23'),
(89, 'JORGE ROJAS GATICA', 'jorge_rojasgatica@hotmail.com', NULL, '$2y$10$g1LZWE8o7UU/PnoRFKUbsOUSI2N916o5wY.aRIauFNTzc2R7.Awaa', 3, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(90, 'SILVINO ARMANDO MORALES AGUILAR', 'silarmoa@hotmail.com', NULL, '$2y$10$s8pUzbM/39UpwkYQVBRzDO/LKrA.AQFh.xFpY3VOw2VcZk2rJ2O4u', 157, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(91, 'MARIA JUDITH CORONADO MALDONADO', 'mariajudithcoronado1977@gmail.com', NULL, '$2y$10$3unUrJzR.U.7szqqtKawKuU/M0zd//s3vLpRD75HJdKmBH4085Yb6', 91, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(92, 'LEONOR SÁNCHEZ ARGUELLES', 'leosarle77@hotmail.com', NULL, '$2y$10$rvegnwiLLqpxripEjGyH1eV/ASFoOj80qbtXMpDEAaqXIrbznOTiG', 44, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(93, 'DIEGO IGNACIO HERRERA AGUILAR', 'lef_diegoherrera@hotmail.com', NULL, '$2y$10$A0xZ9CIl0UI7haLt2RgNvO2IowOtwxS3RFKx8acF9Yeohj24OmaDG', 168, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(94, 'XOCHITL EDUVIGES AGUILAR LOPEZ', 'agloxe@hotmail.com', NULL, '$2y$10$WcOXFx8l9cSTXIp25nXAVe141.xu5CQps1CF5zqlY9xlxPi1p.XTG', 64, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(95, 'MARCO ANTONIO PÉREZ RODRÍGUEZ', 'emilianozapata1971@gmail.com', NULL, '$2y$10$9wdx1ub5J5qoo8ZwIu7e6umcDLNpcfLYQJqKXsOCNY6PW8YF8lpAG', 132, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(96, 'PATRICIA MARIA GAMBOA BELLO', 'patymgb77@gmail.com', NULL, '$2y$10$uL2bLDXI3OKvzAsZXDWdOeJnnM5XY2o7X5gHGbd/siX1Dr8gA69pa', 107, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(97, 'ERNESTO NOÉ RODRÍGUEZ RAMÍREZ', 'zerimarnoe3@gmail.com', NULL, '$2y$10$/Xe6MQSb07gA4gTkIrRzGOXSeHM2Cc.xQ5tQJbwtz5ltFLVSWDFTq', 51, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(98, 'DELMAR ORELLAN LANDA', 'delmar17@hotmail.com', NULL, '$2y$10$0HZDsyKJnvhHd7RGju9ZeO3J1ToI1xlQm5FYtVge7mAZ8VjpGHFgK', 109, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(99, 'LEON HERVERT AHUMADA', 'primguadalupevictoria@outlook.com', NULL, '$2y$10$0QuYdZRbUWRRHCpSXXxVZOkTIwrMWtKrGMkhwwW8ZMDGTslVsqHtO', 52, NULL, '2023-06-06 02:35:24', '2023-06-06 02:35:24'),
(100, 'ARNULFO ALBERTO SÁNCHEZ MADERO', 'aasanchez@msev.gob.mx', NULL, '$2y$10$2OuDHpSik6pUlww2WaFmDeWvwooPcu15NhH9mgUN557xUrxigpaDu', 160, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(101, 'ELSA ANDREA MALDONADO ALEMÁN', 'cucsiandrea@hotmail.com', NULL, '$2y$10$cG/RNQO9QzFGOLsQBBcFCetbT7nmlx3FPbbVEM2Z912yEkJemgKk.', 118, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(102, 'ZENAIDA ALICIA SANTIAGO ALVARADO', 'zenaida69@hotmail.es', NULL, '$2y$10$QlkCdukGPVAgf6ShKnA3m.2FQWdivhe0uQFEDta2rrSMTryygSOTK', 7, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(103, 'ESMERALDA FIERRO GALVAN', 'yayis18figa@hotmail.com', NULL, '$2y$10$0AxcByyoOPcJc8RLcaQ0meP84s4ZewgH/hGjR0otwYy1.bUI45cVW', 39, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(104, 'DARIO RODRIGUEZ RESENDIZ', 'tauro27_6@hotmail.com', NULL, '$2y$10$MuPLaGDdyuteWVnzywJRT.z94ApiSvtsxDuTn6sviVzQCJXxFq7kS', 169, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(105, 'MIRSA ELEM TERRAZAS SALGADO', 'mirsaelem27@hotmail.com', NULL, '$2y$10$6UWThnfzT.W85Bab5FzRT.F6KBAaO0f93bjH9CehM1Aeuxg0z4bqK', 137, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(106, 'JOSE MANUEL TRINIDAD MOLINA', 'pichomania.jmtm@gmail.com', NULL, '$2y$10$1AJ23PI01rd8FKB2UAtuuuHlVhy2nDVJQkhdmwXhnV1g7otZZD3Ly', 6, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(107, 'CLAUDIA NOTARIO ROJAS', 'notario29@hotmail.com', NULL, '$2y$10$L4K0ddiv5oUIN9ucsF7exO2WCQUziOmZkZFSKTyJEYQL2gGdLIx2K', 97, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(108, 'ERIKA JIMÉNEZ ROMÁN', 'jrpeque@hotmail.com', NULL, '$2y$10$qnrwEFu0/gWG7LX5DU7CfeBgcziT6lJv863PAJiZv24tV.DOjcInm', 56, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(109, 'MARISOL MORALES SANCHEZ', 'solecito.074@hotmail.com', NULL, '$2y$10$71kUPA5qUQmwznLo2Th9tOfl8xPjTV8My9NYaIAMQ0pq3YLNdrNmi', 81, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(110, 'GLORIA ALMORA SANTIAGO', 'ceciliaalmora@hotmail.com', NULL, '$2y$10$iL.6upiyuhAlEXGRgQD8wu/VhYH0B6asOKK6bp6KZkH4JqeyBBnja', 61, NULL, '2023-06-06 02:35:25', '2023-06-06 02:35:25'),
(111, 'SARA EUGENIA GARCÍA SÁNCHEZ', 'saraeugeniagarcia@hotmail.com.mx', NULL, '$2y$10$/3CaC40Z5.f740TI7O8LPeW6JCsa.9LXWwppCqQyqsAMR.cS.o0Ii', 72, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(112, 'ALONSO CAMILO NOVOA GASTALDI', 'alonsogastaldi@gmail.com', NULL, '$2y$10$4Lsb9hpQs8lZj8IGnX.t0eIaLC7uxNcVCWqvzPaeIdAMv4oJmdwoy', 53, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(113, 'MARISOL SANCHEZ HERNÁNDEZ', 'kiwinota_sol@hotmail.com', NULL, '$2y$10$UwHE3XM.Kzit3TfAJO1UQu/5ogHH8NJ0LbBHnjYmv6g7vR.xOznOC', 155, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(114, 'MARCO ANTONIO SÁNCHEZ CAMACHO', 'adry_8@hotmail.com', NULL, '$2y$10$XYdInMcMg2wTX1my5G2jfO1V4FJGeBo8SWwPo9reXSvnUYmxDrkSi', 11, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(115, 'ROSALINO GABINO LAGUNES SALAS', 'lasrog@hotmail.com', NULL, '$2y$10$6adf2gYIRxAYy6EXGF3psOz7EV8sC5oNXtxJHuao5FYVmROTh0yMq', 34, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(116, 'MIRIAM MENDEZ MORENO', 'mayrim_capri294@hotmail.com', NULL, '$2y$10$6a2QfxvZUytayNjtZYIhEOSC5fiKQcLXdmNIdXmWtj6FsoEQzAnFS', 176, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(117, 'ALBERTO BAIZABAL HUERTA', 'aimarbaiza@hotmail.com', NULL, '$2y$10$TKKCaIImSgqIwD9e/3X2I.X1Q7GQPLwKMmdE6KLcqp76GoI5l5.Ua', 75, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(118, 'VIRGINIA MIRANDA GUZMÁN', 'soymirandaguz@hotmail.com', NULL, '$2y$10$idz53xhjIkOnN9niZ1LqieXn0HmmtYAmOXXF25jewSqIvgiRCNUSS', 175, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(119, 'MÓNICA SUSANA HERRERA CORONA', 'herreramonicasusana@gmail.com', NULL, '$2y$10$LZDMLQ18pOTF8chEUY75kOwnayJLdw3CIafVaJqxVdp6aX5IWyxh2', 20, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(120, 'JONATAN EBER GARCÉS REYES', 'jonagareyes@gmail.com', NULL, '$2y$10$DwKbeZWTtR4Ht5oqQpdiXOPZjVVfga6fdrTy4PSWqHajtrBt8KDdC', 98, NULL, '2023-06-06 02:35:26', '2023-06-06 02:35:26'),
(121, 'JUAN ITURBIDE MEUNIER', 'juaniturbide361@gmail.com', NULL, '$2y$10$LWmg.XwEaHo0VMcYDGtNhebYhbnqkd92mc9fUx07EyP1YjvYz4F9G', 194, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(122, 'SANDRA LUZ VEGA RAMÍREZ', 'sandraluzvegaramirez1958@gmail.com', NULL, '$2y$10$o4HGOCX6wugZSZ1WPDT2sey9.rjW/iohHYm3Zz.BXnXssBk3fnM1O', 185, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(123, 'LUCIO LARA DEL ÁNGEL', 'lara02006@hotmail.com', NULL, '$2y$10$2GtrGXU8NwTazje1Y.v.JOYl6.PYzw5OxdponQFG.A5RhK084g2xG', 204, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(124, 'GREGORIO SILVERIO HERNÁNDEZ REYES', 'gregoriohernandezreyes54@gmail.com', NULL, '$2y$10$5k8vAm8lQ2x6xJZotHxEIe5MR05cfjFnafp1PtaHsxRl73T497Gjy', 184, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(125, 'JESÚS DAVID MORALES LÓPEZ', 'iguasol@hotmail.com', NULL, '$2y$10$Ux69QSkUSL5UuhKTjCgC9eQ2Whq7Tu5tL8pO2HpFh6hP1HaRMAY8i', 181, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(126, 'MANUELA FLORINDA SANTOS ZETINA', 'maflorsagi@hotmail.com', NULL, '$2y$10$UD0G3BzB.9MknRtbDLLsdu4A055noHszlEwp8Pl2xQ2DWwa26Mjoa', 179, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(127, 'MARÍA EUGENIA LINARES SANTOS', 'marilina64@hotmail.com', NULL, '$2y$10$mP3Xy6PRf3kbbDUMl7xyk.YMtz/p0BdVVECLLffF21Wr0T2YrTFKK', 202, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(128, 'FELICIANO SILVA ALMENDRA', 'silvaalfe@yahoo.com.mx', NULL, '$2y$10$7QbMAm9q4dD6w6k9SjXoQOlvfc.4O51AUFXIUCUmj9IiH8lAfaqSS', 182, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(129, 'ERASMO DELGADO GUERRA', 'delgadoeg15@hotmail.com', NULL, '$2y$10$//2px1sQBAHs95up2xpIuevncdNkEnts5NJjrTsae3PG2dDmj2ECy', 208, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(130, 'SUSANA MÉNDEZ GONZÁLEZ', 'susan2_94@hotmail.com', NULL, '$2y$10$uqfxqAYcKZYEDuSopjlOpenIJSNAHNvkAWv26TnNZfXwlK4kP7eNS', 183, NULL, '2023-06-06 02:35:27', '2023-06-06 02:35:27'),
(131, 'AGUSTÍN FERNANDO LOZANO MALDONADO', 'halconnegrogus@hotmail.es', NULL, '$2y$10$tQ3x/OayrvTwA57/VukJ6.BHN6bhImXQdtRj4vcA70EtLVdd9SU7G', 193, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(132, 'RAFAELA CABRERA OCHOA', 'cabrerarafaela66@gmail.com', NULL, '$2y$10$AhuBIjpBMTEX4T8YXLlpWesq7sVXx70be1y4D3rrvUejFrhD5dQQW', 192, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(133, 'JESÚS ALEJANDRO TLALPA REYES', 'tlalpa241256@hotmail.com', NULL, '$2y$10$bEB4Pi/qBVr05fFkFfyquusXsjmngx002Vz9IMwCq5M/1pixt0CYS', 197, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(134, 'ESTHER SIXTA BOEHLER SUÁREZ', 'maestra_boehler@hotmail.com', NULL, '$2y$10$qhxzxzLr8WhpBei.Zjrgfek.8RxbIBMqKt7aTbTzpKRb8xOf3rocy', 178, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(135, 'CÉSAR ORTEGA RAMÍREZ', 'ortegaramirez_cesar@yahoo.com.mx', NULL, '$2y$10$Eio6Eqc1Gdwio8lO7KulpeB25DVlttTCbojw.R.r9yQ/ffLjf5lRe', 189, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(136, 'OSCAR MÉNDEZ HERNÁNDEZ', 'oscmendher@hotmail.com', NULL, '$2y$10$1nNwm7ghAIpQBPkNjVoWou/HZn0KwdxKbRibuaGElrG.ULU7e9FEq', 218, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(137, 'MARTIN JOSAFAT MORALES ALONSO', 'josafatmorales68@hotmail.com', NULL, '$2y$10$HNVXhEa00yFfNs8OgzcO6etqpz6F3qOSnfXT/2vUe2C7dDO8Gsyxu', 233, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(138, 'MELINA DEL ANGEL RAMOS', 'mely_dar@hotmail.com', NULL, '$2y$10$oZBdCbFiLtaYrgduZcz6xOzFGk5xkKWapbTNGWSgSd5KQvz.oipfW', 222, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(139, 'JUAN CARLOS GARCÍA ESTEVEZ', 'carlosgaest@hotmail.com', NULL, '$2y$10$yRqDiGA6g65306.NhYauMOpY/Jn5AE3ok.ZgiFKnkpJ.plmVzgoDK', 225, NULL, '2023-06-06 02:35:28', '2023-06-06 02:35:28'),
(140, 'JOSÉ MIGUEL RUMAYOR ZACARIAS', 'jmrz1804@gmail.com', NULL, '$2y$10$5e.DXwgTGYL9/27EHspsJ.fgNAuVl1J0MrgVKE34A.5wQl8mFe1T.', 238, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(141, 'ANA MARÍA DEL CARMEN BLANCO MENDOZA', 'anablanco82961@gmail.com', NULL, '$2y$10$4GCHfpryj.B0vWalCmuwleDo.g06ar.3Y0MtedGGGZmeZ44wkyEW6', 244, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(142, 'JOSÉ ANTONIO SUÁREZ GÁLVEZ', 'suarezgalvezjoseantonio@gmail.com', NULL, '$2y$10$yS.5N7anJcoHDnxnAgd9rejrzJRf6h2ICfrSyOT7ryvqAPYuuGQii', 230, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(143, 'ENRIQUE RAFAEL CHESTY VIVEROS', 'enrique_chesty@hotmail.com', NULL, '$2y$10$S71LOrFwIQ6HJB1Hf/qA9Ozy2lUfehyuzYYAb/BK3tge4nikpS2ya', 216, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(144, 'ESTEPHANI JOSEPHA BARRADAS ROJAS', 'rojaspormama@gmail.com', NULL, '$2y$10$uzg4kSAFNXmHYYO/mS1kduy/t9Rr5lYinREUcYeU4T61.gSiTU3s.', 231, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(145, 'ARMANDO RUIZ MORALES', 'armando_ruiz21@hotmail.com', NULL, '$2y$10$FP7roxg.P6zNjUkp3oYIW.aRg8xpl7dCVFv8FjA80KFQC/qwNiGSO', 226, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(146, 'ANA LINE MEZA PÉREZ', 'linemeza@gmail.com', NULL, '$2y$10$91FttIEevu16oM8EA4GY3.3cL.iQOVXHHd2BYEupFMFW9m5cobHPi', 223, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(147, 'DIEGO ARMANDO SÁNCHEZ FERNÁNDEZ', 'geniussom84@gmail.com', NULL, '$2y$10$m2RutRYRfJioUIOlV8rUK.RVN/2vXBBZ.J4yJ1U69HjsW4Z5al3RK', 245, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(148, 'EZEQUIEL ORTEGA GARCÍA', 'garciacheque@hotmail.com', NULL, '$2y$10$KoRbon6FNioVPrbcotmMVuJewGgJxDtaDJrHImzP7Ish5r5ewxERC', 241, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(149, 'DANIEL CEQUERA HERVERT', 'dazulc@hotmail.com', NULL, '$2y$10$XYwPsn8VQfHrfyO7sD1z0OJrSxgD9lxDLWbP4Jtqm4m//NRqKLg2G', 220, NULL, '2023-06-06 02:35:29', '2023-06-06 02:35:29'),
(150, 'ROCÍO DEL MAR RAMÍREZ PADILLA', 'mar.ramirezp84@gmail.com', NULL, '$2y$10$LVOy0xy2pDJQoq31VUMaPe3EEzQE.rrDflbiXDiEYq92lbPBjMtPi', 240, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(151, 'WENDY BLANCO MORALES', 'wblanco@msev.gob.mx', NULL, '$2y$10$osq1Xms/sMIt91cXZ6EbyeML7rjrvx8ubuf0xKtNZm7WULvsE7wOa', 242, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(152, 'GUILLERMINA PARRA LOZANO', 'guilleplsnte@gmail.com', NULL, '$2y$10$QPkShHoyRe3OoswrNFFbNuyR9bulbl23cFhCf6wGF1zlarV9dAo7S', 243, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(153, 'CÉSAR VALENZUELA VÁZQUEZ', 'goodloocky@hotmail.com', NULL, '$2y$10$lHlXjqoZWgJV5FqKyC19.uSuVTkdpZsb/DDO2MUda5Xw7fiqG1f6O', 234, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(154, 'PORFIRIO ANTONIO MARTINEZ', 'piyoyosabanero1@hotmail.com', NULL, '$2y$10$hrdLOTXvPYDQZhAZkWHSueYnnOyuhGYS2hi0v435tEx/ICFCZkRHm', 28, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(155, 'FRANCISCO CHI FABIAN', 'fchifabian@hotmail.com', NULL, '$2y$10$IvfCqQfboPAACq.mU16N5e5n6I0FqIOTS1h80evukhujEjRi/44ri', 2, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(156, 'FRANCISCO ARRIAGA SANCHEZ', 'frank_escorpion965@hotmail.com', NULL, '$2y$10$aN/BNrnOFMJeX4ALYckQuOD6ISozGIj9P7ujLcogpp3V0ZP/2YNli', 119, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(157, 'CAROLINA TENORIO DÍAZ', 'catedi1120@gmail.com', NULL, '$2y$10$vihH.ThUbvpT2H2aBscwxObY7Wqt5EC65hVqiVOeAvLmKfpO8JgiC', 31, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(158, 'JOSÉ ALBERTO CÁRDENAS RODRÍGUEZ', 'cardenas566@gmail.com', NULL, '$2y$10$0YGJzrD11umwcYTNUOJJNesfkaLcAIVVUxST70o9B/tufe6nBnoxG', 17, NULL, '2023-06-06 02:35:30', '2023-06-06 02:35:30'),
(159, 'JUAN MATEO MARTINEZ FLORES', 'juanmateomartinezflores@hotmail.com', NULL, '$2y$10$i6VyFASgcmM5G2kjvU4g2e5rLLoD8ZpQXrNPrIoAovKpoVLV6Xs.u', 26, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(160, 'FELIPE GÓMEZ QUINTERO', 'qfelipeg@gmail.com', NULL, '$2y$10$iegVNY.UtjVed2xxusOuVezgTUDKZgJ4HqCZRmZ6V97LVTp.Na.hm', 95, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(161, 'JAVIER HERNANDEZ HERNANDEZ', 'segundogrado1819@gmail.com', NULL, '$2y$10$GFlUw.kDZkjedPJj77kwX./aI5UQa9oAYnlgf9xrBegji9DauJWZq', 4, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(162, 'CAROLINA SALINAS LÓPEZ', 'carolina_salinas@rocketmail.com', NULL, '$2y$10$NuWQ0dxGJ9LQfZYm0ftsA.76oxAVLuNpdwRWnWKPRRMSzvNz/My92', 1, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(163, 'MARIANA MARANTO BECERRA', 'marianamarano@gmail.com', NULL, '$2y$10$Pv6bxGLdOxR5DNexmSRmzO8sB8YMkxzJq4XtXxNub4dPKiOZ5wPLS', 83, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(164, 'MARÍA DEL CARMEN SÁNCHEZ RAMOS', 'krmenazul13@hotmail.com', NULL, '$2y$10$PyrtL9MSk83Si1msADQUAeqDNPN8eQ9wdPZoOi45TTrIEEdGg246y', 173, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(165, 'MANUEL ROJAS PIMENTEL', 'tigres_manuel7865@hotmail.com', NULL, '$2y$10$YnRwJJqNeE8lqStNGwK85OZj60ehmcaLErG2KcT/XN3ucf5RHwKIu', 22, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(166, 'ILCE SARAI COUTIÑO ARELLANO', 'ilsacoar66@hotmail.com', NULL, '$2y$10$vo7QY3rMdQMrD9upqoBX4uCS7.p58LpigxTm4vgBOjKYXJgLb03MW', 86, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(167, 'BENY RAFAEL GALICIA OLIVARES', 'rafael_1979@hotmail.es', NULL, '$2y$10$UQlSHum89rkTSPA7HyvS3ugkp.Wijb81BQfw/qr/RjxFwvK5EYQDy', 69, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(168, 'FELIPE DE JESÚS SOSA LÓPEZ', 'phillip1274@hotmail.com', NULL, '$2y$10$mOLiReQaLngFR8muDXUDIeijIkIWRSBUocAp4ihNNqljnp.iwGr2q', 16, NULL, '2023-06-06 02:35:31', '2023-06-06 02:35:31'),
(169, 'ELSA MADAHI SANTES PAREDES', 'elsama.santes@msev.gob.mx', NULL, '$2y$10$pMkaJA9oe8LlYlVLJy/NZe1BryHE1orVZAjo18VgorR4YbSqhuDJy', 141, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(170, 'JOSÉ LUIS HERNÁNDEZ HERNÁNDEZ', 'jose_lef_16107@hotmail.com', NULL, '$2y$10$YDmeZFhLIhd2yXsEi0LQJuaMkvAWTcsi1W.t2nCFF.3q4RJVmxhh2', 164, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(171, 'SELENE RIQUE NOLASCO', 'selenerique@gmail.com', NULL, '$2y$10$xbSllhSlJRlFXuOQy7rbPeQU3h0ZEX4Jstth.gFPAeaYMjVldPSqS', 138, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(172, 'XOCHITL PATRICIA RUCABADO HERRERA', 'patricia140370@gmail.com', NULL, '$2y$10$/5j.dZUrB5D.zgs6dhnmpeIi.e.LK6JCN5d0WALslb3lqkAv5U7Em', 146, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(173, 'ELIZABETH BLANCO CADENA', 'eliblac20@gmail.com', NULL, '$2y$10$2.b4Km.hvNGDsFQNENcC5OH4/O4ZUvZczuQkcqx313lFCjy7Ibqa.', 117, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(174, 'CRISTAL SAGAHÓN SÁNCHEZ', 'cristalsagahon82@gmail.com', NULL, '$2y$10$K7/B/niXkANllfpj.08jguFKczxx73IpMJSJ1JEiivxbFOqnJKAuO', 24, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(175, 'ISMAEL RODRIGUEZ LOPEZ', 'maysorverjeny@hotmail.com', NULL, '$2y$10$2kf3kNFSaSYBNhn.Xj6bV.arM70SjmfmSVRerySnyHqiUmOPzz4wS', 40, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(176, 'ORLANDO HERNANDEZ DEL ANGEL', 'snte56primariasespinal@gmail.com', NULL, '$2y$10$F8HjPrt0P6tN4mPRit7jJOY2U.1B4v6fn/6L9lEypgv/p0MA9pxNu', 21, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(177, 'GEORGINA RAGA RIVERA', 'gina_rr59@hotmail.com', NULL, '$2y$10$6Rd8FnKRMsC/uKT.dYPJZezpBvwwfBcPzsbakmML0lHqctbTP.5sC', 85, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(178, 'ALFREDO BLAS ORTIZ', 'alfredo.blas@gmail.com', NULL, '$2y$10$.Tp6ObsnIOPFZsqnLq1kL.Y7G2/frrWqMPQfRD8up5Y6p6P82uOcS', 46, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(179, 'LYSSETTE YAZMÍN ESTHER HUERTA TRUJILLO', 'lyssyeht@gmail.com', NULL, '$2y$10$CfviCVr9OZWIqN.s/2iiguB2trjSPKiTakoxMHvadBQ2jBB/l2TuG', 67, NULL, '2023-06-06 02:35:32', '2023-06-06 02:35:32'),
(180, 'JUANA ELIZABETH GOMEZ AEDO', 'elygomez42@gmail.com', NULL, '$2y$10$uhRu1q6cX3fBGDB3Bo8rQens0r.zMK4CTQPUXKnwTHR3VkPZrVxzy', 12, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(181, 'JORGE REYES SÁNCHEZ', 'reyes_j@hotmail.com', NULL, '$2y$10$ZbmxkDzkDF3tjKae01Ng5O4YP6wGRsKTYCPfpbJGfTDaMV2KOTqbe', 135, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(182, 'SANDRA MIRETH SALDAÑA ROMÁN', 'sandra_0310s@hotmail.com', NULL, '$2y$10$.zumwj70bs6bU7KfkJW7qOOCUeiHKoMlZnkt2VHW4atyD.dK4lsjm', 113, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(183, 'VICENTE TADEO BAUTISTA', 'tadeo58.js@hotmail.com', NULL, '$2y$10$SSCWgQBDVZgSk9xjyNNgKeekz4.5doE7Ne3pui/KhZCtHt2Vk7Ave', 49, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(184, 'ERIKA RIOS SANTIAGO', 'acueri12@hotmail.com', NULL, '$2y$10$hM5qQTcnf44qvKcsTQ5IdeH0mih8e8Cu7yUMIXEgx7oBRipsxBXES', 59, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(185, 'CARLOS ALBERTO COBOS PEREDA', 'cacobos@hotmail.com', NULL, '$2y$10$DcHQXgHV1ZOmR6J/0QR7.eVvvZTrBAVrL33MbBrG./Om9tACrpW0K', 139, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(186, 'CLAUDIA LUCIA ARIAS RIVERA', 'claunef_22@hotmail.com', NULL, '$2y$10$/gFwF.tnhzfGzcfIjNP35uUGbf50L2SupYeDrUTRC1MfMjVMYo2Ga', 174, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(187, 'YAJAIRA VILLALOBOS LÓPEZ', 'yaki_lv17382@hotmail.com', NULL, '$2y$10$Hij1B82E.e.Rkd1brE.BTOvm8w.BkTTtGzifnDBrd4bNpAoiW8MCe', 32, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(188, 'ISIDORO ORTEGA SÁNCHEZ', 'lolo_ortega80@hotmail.com', NULL, '$2y$10$AJqVplzjhubrYGA/tBwBaerDyjbSDk8ivSlG4Ecmf3vEOTK4G7Su6', 18, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(189, 'LAURA SUSANO LINO', 'oinrocirpac@live.com.mx', NULL, '$2y$10$Qv9cim.h4txFs067G..NhepuikfDuMsy3pWhdir/CTIBVriL.irt2', 150, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(190, 'MELISSA ALDANA PAZ', 'mely.sgam@gmail.com', NULL, '$2y$10$LHIN/g3H5OPpAnyvCDiBw.FqAkyGPxZT36G8qBCdqHxwx.1SaH4E2', 76, NULL, '2023-06-06 02:35:33', '2023-06-06 02:35:33'),
(191, 'LADY ARIADNA PÉREZ AZUARA', 'laryteacher@hotmail.com', NULL, '$2y$10$NppXPhPNRYN/RajDBqOSFOhxo5F8CcD6AxXPNyW2/aiFmQc5x7L3.', 42, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(192, 'RAÚL CAAMAÑO PUEBLA', 'puebla-r@hotmail.com', NULL, '$2y$10$RzSW.v/GokoLDVixNJbrYucT7kAZXo2G7i2z.d8w13.28N7BNLmZS', 15, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(193, 'ARVED ZÁRATE MORALES', 'zamoa_80@hotmail.com', NULL, '$2y$10$Hl6rITOorpxg5f97b43ryekejUU7T2.EGj29jbDULliI36VxDeGMu', 154, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(194, 'JOSÉ BORREGO LOYA', 'jose_borrego1960@hotmail.com', NULL, '$2y$10$R7RvS08/URo.u6z/EtxuNOP6gbXBSrrsuY02RzrpCJBj1gdqH1ieO', 188, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(195, 'VICENTE GUTIÉRREZ GONZÁLEZ', 'vicenteupv@hotmail.com', NULL, '$2y$10$JhY8Xfk7Nv1QxPm0Ac14huBr.DpPn1dmqus3V3SPVjhXuH/v/GhA.', 201, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(196, 'MARÍA MIRSA LÓPEZ RAMÍREZ', 'a.sri.m@hotmail.com', NULL, '$2y$10$QCl8sLPXe3Q4Xg2Rd5E4tO2HPgdQE9kLB1wBqhZCMSGAfJ5X4E8GS', 195, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(197, 'ADELA IZAZAGA MENDIOLA', 'adeiza0211@gmail.com', NULL, '$2y$10$1iKVzBXxqYLOAsi9FpW6lunzfHBtoCaW7zhQFZ0OBkV7sOoKhzmb6', 186, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(198, 'MIGUEL ANGEL BETANCOURT MARTINEZ', 'miguelbetancourt781@gmail.com', NULL, '$2y$10$xWT66lPoFsHojkRLoZJVG.8Ka5nJlsDfI4kiX9S9K1np7Kd9YHdBC', 207, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(199, 'ROSARIO MORA CONTRERAS', 'higiniolunamora@gmail.com', NULL, '$2y$10$X/SqQDh511gQ407byQbU7e.yqhhGHCg9xVDvfageyuNXqd/CDT5BS', 191, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(200, 'FRANCISCO JAVIÉR GUTIÉRREZ HERNÁNDEZ', 'fjgutierrez753@gmail.com', NULL, '$2y$10$NUZq3wX0yvRSodErkwS3euQjIwWSu5yZKb7TJW1suldCgqIVThDxa', 214, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(201, 'ZULMA HIPOLITO PATRICIO RUSSELL', 'zulaka3@hotmail.com', NULL, '$2y$10$T.yZOKdkyJxy0k/ztO8sQujMHKYKcj9fWE15qNBPY7DfH84msaJ6a', 239, NULL, '2023-06-06 02:35:34', '2023-06-06 02:35:34'),
(202, 'FELIPE TORRALVA GARCIA', 'torralva19@hotmail.com', NULL, '$2y$10$cFRX40ukIAI0IWKxYaE3A.L7K8DffH0RqQA7oR5XPwoJR9f.oDbuO', 235, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(203, 'MIGUEL DARIO CUBILLOS GUILLÉN', 'mdariocg@gmail.com', NULL, '$2y$10$GUsw3tAyCblF9GPIHe2QOuNj3xYCADDs7w8cOxLD.TmTNjSOn2X1W', 236, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(204, 'IMELDA CRUZ SANROMAN', 'ime1966@hotmail.com', NULL, '$2y$10$5GGRG5Mjtcz.CElay5QIZOPIwqmnx4xXIFo8Wx7FO/gT/sAMZmhYW', 221, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(205, 'EUFRACIA ROMERO LUGO', 'eufraciaromero_lugo60@hotmail.com', NULL, '$2y$10$ARngVPVV6M17iUXzDpCT6.iwFAFAwUF7B6LMo6JjyjGEM2ge5fZNK', 212, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(206, 'JAQUELINE JIMÉNEZ PADILLA', 'jackirudi72_77@hotmail.com', NULL, '$2y$10$g2y.juGJ1FzCZJU1Hz4yMOCzfzcRAuZiEJrbhJLxFf3UX.nFLLD.u', 62, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(207, 'MARCO ANTONIO MOLINA GARCÍA', 'osohandballcarrillo@gmail.com', NULL, '$2y$10$EB7/bZTwKtA34BMdTlwQt.WECwMjGAeOU3mHlVK5uUIA1rQJj4mtq', 166, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(208, 'AIDA VELASQUEZ AMECA', 'aida_doka@hotmail.com', NULL, '$2y$10$XM476PKc2QaVrWgWnlnpH.lcgrRbKBwMwle/RQVfndpD/pj7CM70q', 96, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(209, 'JORGE ARMANDO RIVERA MEZA', 'jarm_1979@hotmail.com', NULL, '$2y$10$4oHVfpT4qvIXrOZC7Kjo..YxTReFqlFgyJkATa2aON44qsua18WHy', 161, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(210, 'VERA NAHIELY MARÍN AGUIRRE', 'maguivn@gmail.com', NULL, '$2y$10$u0nnszzeeOLfsJeljwr8cuu/hWeiMu8FP5VwADHw/atqdUVH55cMG', 149, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(211, 'LUIS ANTONIO BECERRA MENDOZA', 'labm108@hotmail.com', NULL, '$2y$10$ivVj7w8OhD9JQPo3M/A0Y.BXJtOtNTtbwILd3q9Fj2Ky0Q/KQUJni', 47, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(212, 'MANUEL LAGUNES PÉREZ', 'lagunes_111105@live.com.mx', NULL, '$2y$10$shoArXfh188K9TCH7IGdN.ANyIhfZw5QsbqWSwaE7MpJXob8e9Slm', 121, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(213, 'AZARET YURAID SOSA SELVAS', 'sosa-aza@hotmail.com', NULL, '$2y$10$Q64QImjOdGl4Lw2lMJ3MnOacQ6F1QtMcx1om/LMOC266nE8b/RoCi', 159, NULL, '2023-06-06 02:35:35', '2023-06-06 02:35:35'),
(214, 'ISA SIGREY CRUZ LOPEZ', 'isa_sigrey@hotmail.com', NULL, '$2y$10$RLZot9SpfYuK1XExlFj94.Wh8MkRbesPtuwlnKdlqjsFEPG.K56me', 162, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(215, 'OSVALDO REYES ARANO', 'osvaldo_rea@hotmail.com', NULL, '$2y$10$/ls91u.uz1kJ/IIhWmkCBuSbzrn8Wp8W3GkOVaL4Ei4CnnH2MMvZ.', 124, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(216, 'ROSALBA DEL CARMEN ROSAS CHÁVEZ', 'rosalba_johan@hotmail.com', NULL, '$2y$10$dBqcFTDRK496QbcGnucavOw8vEXfp1f4EaZOVraBymLu7y7ZIMyXO', 70, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(217, 'LUIS MANUEL SOLER NIETO', 'luigi_8@hotmail.com', NULL, '$2y$10$kGYq/agPo8DKuSsmaltYx.4RM4Nq3JLbHEWvvCgjdPsUC0v99UO8K', 172, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(218, 'MARTIN PEREZ NAVARRO', 'perez_m2_6@hotmail.com', NULL, '$2y$10$YkBBTY5GAC7tEO6pOKEFaO64HNGK8.RU9C0MBbf.xouORiqPjlViG', 210, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(219, 'ANGEL DEL RIBERO MARTÍNEZ', 'angeldelr@hotmail.com', NULL, '$2y$10$S7vQ9RksBjJcQq3BKmFAxe217utxVHqC8xCQqs6Gb33h4TLs2tmHW', 229, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(220, 'JOYNNERY ISABEL VERGARA LUNA', 'email1@example.com', NULL, '$2y$10$.59KtEzQ6kGeA0UJPHBAeuPeV8ix.G9EbTNV0hzLfkQeH09AoT7R6', 99, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(221, 'ELIZABETH TORRES ULLOA', 'email2@example.com', NULL, '$2y$10$yd0zhs1GOSdGmX6v1Vksw.js1zMlRmDyUzw8RawX2UOEd6kUYhU4W', 224, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(222, 'BARBARA CONCEPCION PIÑA CASTRO', 'bcpinacastro@hotmail.com', NULL, '$2y$10$ce8n1QIkUTqeljyaH7ylXO0rzoyvBXjtRE3933kqx1vh2qNWgESg.', 211, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(223, 'LILLIAN SUSET CHÁVEZ CERECEDO', 'lisuchace@hotmail.com', NULL, '$2y$10$HIzXMflpEgckm7vasIxpy.iqUQu13TLtnI4HHMcJBbAJsRvjQkxVe', 112, NULL, '2023-06-06 02:35:36', '2023-06-06 02:35:36'),
(224, 'IRENE CASTRO FERTO', 'irecafer@hotmail.com', NULL, '$2y$10$/eetgLLteoCNS8vNEul0dOkHqgw9AifNlZjfXA2M.dSVh0tfkylF.', 203, NULL, '2023-06-06 02:35:37', '2023-06-06 02:35:37'),
(225, 'EULALIA ÁLVAREZ ROJAS', 'lalitaalbarez2009@hotmail.com', NULL, '$2y$10$UHTxTB1qvTJYjSOqUMwUEeyO6RtuID8TxwINz9sDx6/dHm4mHgwo.', 199, NULL, '2023-06-06 02:35:37', '2023-06-06 02:35:37'),
(226, 'VICENTE JÚAREZ ALARCÓN', 'vicjurez@outlook.com', NULL, '$2y$10$EEDK19isJGvNWnVes0HJ5e/iqONaU5SYE23zhVMxQr31IRVm9zMNm', 5, NULL, '2023-06-07 02:52:57', '2023-06-08 02:19:02'),
(227, 'ELIA DE LA MERCED FRANCISCO', 'elia@email.com', NULL, '$2y$10$LEmy.gvo4CBqcq6s47N8qeTan5ShhHE8xYn6I5td55GE2UQBp4GTa', 5, NULL, '2023-06-08 02:32:48', '2023-06-08 02:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apaterno` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amaterno` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_genero` bigint UNSIGNED NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npersonal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nivel` bigint UNSIGNED NOT NULL,
  `id_delegacion` bigint UNSIGNED NOT NULL,
  `id_users` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apaterno`, `amaterno`, `curp`, `rfc`, `id_genero`, `telefono`, `email`, `npersonal`, `id_nivel`, `id_delegacion`, `id_users`, `created_at`, `updated_at`) VALUES
(1, 'GABRIELLA', 'FEIL', 'MONAHAN', 'RGUZ183875HCUECB66', 'PGGB58212580W', 2, '984-855-5910', 'adele01@example.com', '62111', 7, 173, 128, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(2, 'RAHUL', 'MARQUARDT', 'HERMAN', 'ZSBC069436|TGIDB31', 'GXFK863735F5P', 2, '901-358-9520', 'boris.koch@example.net', '18196', 5, 127, 140, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(3, 'TITO', 'SCHNEIDER', 'KUTCH', 'ZOAJ127545MVRZZI93', 'ONMW917293065', 2, '(607) 503-3598', 'mgulgowski@example.org', '52451', 7, 63, 188, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(4, 'DEON', 'JOHNSON', 'ERNSER', 'WPGN759065|OSPRH82', 'YURA888507EXI', 2, '+18103547563', 'jaqueline03@example.org', '14978', 13, 161, 131, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(5, 'FRANCES', 'KASSULKE', 'CORWIN', 'LOJF204666MXJUPY07', 'YCNQ421564PXY', 2, '1-603-696-2587', 'julio.kutch@example.org', '17857', 12, 142, 47, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(6, 'DEAN', 'WATSICA', 'ROSENBAUM', 'QWYG976383HOKZZV50', 'DWZE1497232DT', 2, '1-475-730-9823', 'gutmann.shanna@example.com', '32857', 13, 219, 188, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(7, 'FRANCESCA', 'MARKS', 'KUB', 'ACBZ254384MDRTSI56', 'TYZQ527591XK0', 2, '907-291-9589', 'meaghan.nicolas@example.net', '25679', 1, 10, 162, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(8, 'DARREN', 'MARKS', 'STIEDEMANN', 'USBL235833|ENCMP22', 'UWBF004500AOP', 1, '+1-820-702-3000', 'heaney.hattie@example.com', '11762', 13, 194, 205, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(9, 'ABDULLAH', 'WITTING', 'HAUCK', 'SHLN361842|QYKUI69', 'YINP274065BQE', 1, '732-776-1108', 'ernie.towne@example.org', '56850', 5, 218, 103, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(10, 'KESHAWN', 'BRAUN', 'FLATLEY', 'VGQZ495988MQBCYA37', 'NBYH585396NN5', 1, '+1-541-396-3782', 'femmerich@example.com', '30818', 1, 102, 5, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(11, 'CYRUS', 'BLANDA', 'TILLMAN', 'CUUJ557698HZZWGZ66', 'GGSB3628605JA', 2, '+1.517.327.6149', 'kelli58@example.net', '65543', 1, 148, 84, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(12, 'BRYANA', 'SPINKA', 'ROBERTS', 'ODPH200650HXTNHU74', 'UQIB7296161ZE', 2, '+1.628.226.3923', 'utromp@example.com', '28290', 6, 50, 94, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(13, 'LYDA', 'KIHN', 'CRONIN', 'NNGR570162MJWNIN31', 'ONPI339597UQW', 1, '(281) 279-4439', 'randal.graham@example.net', '62739', 10, 140, 175, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(14, 'MONSERRAT', 'HEGMANN', 'LARKIN', 'XCCQ424555MLTJQT25', 'DKNJ401348Z68', 1, '1-669-200-9952', 'kelvin.nader@example.com', '51661', 7, 209, 40, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(15, 'MYRNA', 'EMMERICH', 'KEEBLER', 'YZEQ056799MIENVQ08', 'XBPT263244X9X', 2, '1-838-278-2744', 'oreilly@example.org', '38884', 2, 125, 50, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(16, 'KOLBY', 'MAYER', 'MOHR', 'NYZJ272256|YYLAQ73', 'YUON698808O1S', 1, '+1-512-550-8924', 'jdickinson@example.org', '35618', 12, 209, 2, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(17, 'OFELIA', 'MCGLYNN', 'STREICH', 'AUEL161202|LBTLE26', 'TOKL5343167Y3', 2, '+1-941-899-5334', 'dariana.reinger@example.net', '54618', 7, 196, 44, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(18, 'EUGENE', 'PAGAC', 'FAHEY', 'BFBL049790MVNBCD94', 'AYKA96310801G', 1, '+1-814-228-7608', 'ysmitham@example.org', '21546', 13, 69, 216, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(19, 'CARLI', 'SCHADEN', 'COLE', 'JPPW491090|PGMEK77', 'NAZO695206YD9', 1, '+1.775.996.7856', 'guiseppe85@example.net', '18095', 4, 87, 71, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(20, 'AMELY', 'HAUCK', 'EICHMANN', 'YSWG207934|YPWDQ93', 'MKNX570077A59', 1, '845.517.0475', 'hauck.christelle@example.org', '23391', 9, 200, 116, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(21, 'KENYA', 'FEEST', 'O\'KEEFE', 'EYUT825556MQTOWW55', 'VZVP330606HTD', 1, '228-381-1348', 'lennie.breitenberg@example.com', '55739', 4, 129, 221, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(22, 'GEOVANNY', 'VANDERVORT', 'SCHAMBERGER', 'CNTE061995HMSKUC74', 'ZLOT025761GP2', 1, '(820) 685-6826', 'stamm.arden@example.com', '49522', 4, 135, 220, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(23, 'JESSYCA', 'LABADIE', 'SCHROEDER', 'ZBBY163122HITSTB63', 'HTJK739376MG9', 2, '+1.947.759.7769', 'rubye10@example.com', '13984', 8, 93, 151, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(24, 'DARIO', 'WEISSNAT', 'ERDMAN', 'HWVL761737HJRDWZ49', 'QKTX74122345U', 2, '(253) 223-4849', 'gshanahan@example.com', '30378', 11, 145, 115, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(25, 'ALEX', 'STRACKE', 'WALSH', 'JMFZ813152HFIHOM02', 'OSXP4514042NT', 1, '+17752718828', 'uriah37@example.net', '61008', 9, 184, 142, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(26, 'JOSIANNE', 'GERHOLD', 'WALTER', 'YEHR115880MDEIIA31', 'ZSAL004439UP4', 2, '1-803-491-0840', 'roob.durward@example.com', '20467', 6, 109, 62, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(27, 'AUDREY', 'HILLS', 'BUCKRIDGE', 'DDEU967890|EZLKR22', 'GJAG581395XSI', 2, '+15396240081', 'ihermann@example.org', '15620', 13, 70, 49, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(28, 'AYLIN', 'MARKS', 'ORTIZ', 'XIKY569706|ZFVEA66', 'QQZL098065C2U', 1, '351.559.7181', 'mmayer@example.net', '55803', 3, 218, 199, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(29, 'STEFANIE', 'RODRIGUEZ', 'CRONIN', 'YVNY998614|NWDOE49', 'OERW589148ZJC', 1, '567-326-7814', 'weissnat.merlin@example.org', '17450', 9, 70, 172, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(30, 'ABDIEL', 'KEEBLER', 'KOEPP', 'XYSX698958|SVMOS03', 'PBBF602328SCJ', 1, '+1.458.999.8343', 'imogene32@example.com', '24232', 13, 29, 89, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(31, 'NORENE', 'COLLINS', 'BUCKRIDGE', 'TAMN678651|HEKVC23', 'KHGZ412479F5N', 1, '1-832-434-0392', 'giovanni79@example.com', '45106', 8, 205, 224, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(32, 'MAGGIE', 'WYMAN', 'OBERBRUNNER', 'CUYJ242521MFFZML27', 'CGTO5797087ZW', 1, '520.296.7094', 'derrick78@example.net', '24533', 3, 99, 165, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(33, 'AALIYAH', 'KIEHN', 'KRIS', 'IDTH254628|FOQAA93', 'JIZW541836H82', 1, '830-873-7895', 'pzieme@example.org', '45045', 6, 1, 131, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(34, 'KAYDEN', 'ERNSER', 'WAELCHI', 'HOGI929490|FNJLX16', 'XTUX5099041K8', 2, '1-863-725-8682', 'hannah09@example.com', '11959', 12, 188, 135, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(35, 'JASPER', 'ROSENBAUM', 'GLEASON', 'FCPJ827951HUVKBS77', 'CVSC957604ODY', 1, '406-725-3938', 'othompson@example.org', '52927', 5, 221, 125, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(36, 'MELLIE', 'DOUGLAS', 'GLOVER', 'JHWY110051HUQMHP39', 'NYBE1831349J6', 2, '1-757-437-2192', 'frances25@example.org', '15893', 6, 65, 181, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(37, 'GERALDINE', 'DURGAN', 'TORP', 'MVQT591285|YENRQ31', 'PEGR909572Y4H', 1, '404-424-0475', 'jannie.mohr@example.net', '35722', 11, 168, 22, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(38, 'AMARA', 'ROMAGUERA', 'KESSLER', 'DWCA215036|LOBEF92', 'NYTJ098056G30', 1, '520.320.9746', 'edgardo42@example.com', '26466', 8, 223, 13, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(39, 'IMELDA', 'PURDY', 'HERMAN', 'UJKW242171|OETAY47', 'PXXK469753NJT', 1, '(801) 242-9166', 'mante.lawson@example.org', '37566', 2, 57, 81, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(40, 'DOLLY', 'SKILES', 'HETTINGER', 'NWHL576360HLJXNA90', 'DAWQ350643Q20', 2, '229-297-4950', 'sheldon34@example.org', '53314', 13, 154, 35, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(41, 'CLAUDIE', 'SWANIAWSKI', 'LUBOWITZ', 'EIMN006487|YDQBZ98', 'UQXA055814QCN', 1, '+19809235788', 'torey88@example.org', '12101', 4, 180, 71, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(42, 'NORENE', 'ORTIZ', 'KASSULKE', 'TDZB902834MBOXTI05', 'YKCK20542748P', 1, '+1-484-271-9496', 'xzavier17@example.net', '24969', 8, 38, 94, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(43, 'OSCAR', 'WEISSNAT', 'BECHTELAR', 'CEZO703239HTKNNC72', 'HUPO777355RJR', 1, '+1.516.862.3698', 'steuber.alan@example.net', '41247', 12, 99, 66, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(44, 'LEILANI', 'GREENFELDER', 'BAUMBACH', 'RIPR753605MMLQMB11', 'RMSI2398725F0', 1, '+17147771039', 'sipes.issac@example.net', '49713', 6, 148, 11, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(45, 'BUFORD', 'REICHERT', 'OLSON', 'THRE378576|KURRK31', 'FNGK962228471', 1, '(508) 944-6430', 'brant.kovacek@example.com', '37094', 4, 131, 173, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(46, 'FATIMA', 'MARVIN', 'BEER', 'AMTG491317HVWMOU34', 'ETDF985493FEE', 2, '+16782738915', 'rhiannon14@example.org', '65257', 7, 133, 15, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(47, 'CAROLYNE', 'TROMP', 'KRAJCIK', 'VUXB479694|AEYFW34', 'EOYQ59050305V', 1, '1-424-413-0606', 'crawford.tillman@example.net', '23037', 3, 164, 95, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(48, 'ANTWON', 'DIBBERT', 'KOZEY', 'ZRDX043587MAHOLJ26', 'BFAD385645IHG', 2, '+1-463-684-5409', 'herta.kohler@example.org', '44241', 10, 126, 107, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(49, 'JUSTYN', 'RUNOLFSDOTTIR', 'FEIL', 'GWWY420024HOAGDN30', 'ODKE879464DK8', 2, '+1-574-223-1554', 'kdonnelly@example.net', '48607', 7, 90, 163, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(50, 'MAUDE', 'RITCHIE', 'FADEL', 'LZON188871MHNEOF33', 'IRJD8004086BC', 1, '959-740-0409', 'greenfelder.dewayne@example.com', '20053', 8, 110, 167, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(51, 'MILTON', 'HALVORSON', 'BAHRINGER', 'FSHK515602|QYKEG36', 'UDHB925339L86', 1, '(308) 944-7766', 'hudson.felipe@example.com', '48301', 4, 49, 164, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(52, 'LORENZO', 'VONRUEDEN', 'OSINSKI', 'BEGW060945|BPUOW89', 'OJND901302UNS', 2, '1-425-928-1494', 'harold02@example.com', '21852', 8, 138, 31, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(54, 'MAIYA', 'TILLMAN', 'MURAZIK', 'ZXHY563805HBWNJK46', 'DKWO0875728NF', 1, '+1-878-689-9549', 'rath.myles@example.com', '58665', 5, 166, 196, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(55, 'ALESSANDRA', 'HAUCK', 'FUNK', 'OHZG673527|VFFGB58', 'PPJA8266783B7', 2, '920.802.3594', 'jacinto39@example.org', '54184', 2, 9, 62, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(56, 'JAILYN', 'MURPHY', 'LABADIE', 'QQKZ244304HDENYR58', 'SVRW241178U5A', 2, '878-812-7842', 'dawn.corwin@example.org', '30900', 11, 21, 130, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(57, 'BRUCE', 'FEEST', 'DIBBERT', 'WKBP403951|VMYTP32', 'GLZY711435W00', 2, '781.819.5509', 'vschultz@example.org', '51815', 5, 172, 147, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(58, 'RACHAEL', 'LIND', 'WEST', 'OZEN010298MYXOER49', 'VTSA734454MOY', 1, '+1-657-467-6255', 'destiny.kunze@example.org', '45971', 4, 183, 197, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(59, 'EWELL', 'MOSCISKI', 'RUNOLFSSON', 'OWRI668110MJSHAE47', 'PTYH96313709Q', 1, '1-815-218-8996', 'koch.edgar@example.org', '25163', 7, 64, 40, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(60, 'PEARLIE', 'VEUM', 'ALTENWERTH', 'GTPA898362|FIUIB40', 'HKUB3747365VF', 2, '+1-215-864-8655', 'bailee.miller@example.net', '20640', 11, 34, 22, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(61, 'RHETT', 'METZ', 'WISOKY', 'ZAQU239561MTUBPW41', 'IDGX390102477', 2, '(435) 413-2059', 'ratke.ike@example.org', '50383', 5, 128, 109, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(62, 'MARGARITA', 'DACH', 'ORN', 'YLZI158075|VCHXM15', 'DFSE688760965', 2, '941.301.1910', 'weimann.wilbert@example.net', '14228', 3, 6, 71, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(63, 'GLENNIE', 'MOSCISKI', 'KRAJCIK', 'ARZN821652|GZJBR92', 'RZCK005397GR0', 2, '+12567629367', 'savanah29@example.net', '66086', 6, 112, 32, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(64, 'KAMERON', 'HANE', 'HERMISTON', 'GHIO841950HNHDYV87', 'GEEB424859IYE', 1, '281-375-0752', 'lilyan.corwin@example.net', '61333', 10, 67, 82, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(65, 'TATUM', 'MCGLYNN', 'RITCHIE', 'QIDO407633|HVPUW42', 'MAUX036437Z21', 1, '(704) 983-8697', 'lurline.ruecker@example.net', '14575', 5, 20, 87, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(66, 'LAVERNA', 'COLLINS', 'WISOZK', 'JVKS131283|QKCUO51', 'CNBA0185892PD', 1, '(414) 985-0467', 'ytowne@example.com', '35704', 1, 88, 120, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(67, 'PIETRO', 'CUMMERATA', 'RICE', 'EJVI084372HHQJMK22', 'QWZN8979972SY', 1, '248-221-7172', 'pagac.napoleon@example.net', '49364', 13, 59, 117, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(68, 'ELSA', 'SENGER', 'SWIFT', 'SVUT111784HTRBSH13', 'TSTS254050140', 2, '+1-318-739-8493', 'jadon52@example.net', '64946', 5, 134, 176, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(69, 'MARIANO', 'RUNOLFSSON', 'DICKI', 'NDKV061054|UJDQG56', 'JITC803490XMD', 2, '1-631-919-7584', 'elliot.ernser@example.net', '62288', 10, 185, 60, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(70, 'BESSIE', 'MCCULLOUGH', 'TOY', 'EZYT441903MWZDQP60', 'FDEP60890503H', 2, '908-466-0206', 'micaela.labadie@example.com', '60887', 2, 132, 72, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(71, 'RAYMOND', 'HARVEY', 'KULAS', 'XQLB220785|CYSIP34', 'UGLS597466LC0', 2, '610-435-1251', 'norval.brown@example.com', '12654', 13, 142, 150, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(72, 'ADELIA', 'FADEL', 'HEIDENREICH', 'TDZZ500469MXARZY60', 'FOSD159553RDM', 1, '301.654.4406', 'pbayer@example.org', '64854', 6, 225, 57, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(73, 'DELANEY', 'OBERBRUNNER', 'KSHLERIN', 'WIRC078919MDJIRK38', 'FXPP591373SQR', 1, '1-408-633-2615', 'ida.hane@example.com', '50687', 8, 187, 8, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(74, 'KIRK', 'TOY', 'NADER', 'UWXO608918|IIHAJ64', 'ILYO320473LOE', 2, '440.702.0761', 'labadie.gabe@example.net', '40574', 12, 38, 27, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(75, 'KOREY', 'BROWN', 'MAYERT', 'TAPC006904HHPGOM66', 'RHHX526306BLE', 2, '813-439-4573', 'grimes.mallory@example.net', '20684', 4, 169, 146, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(76, 'BENTON', 'EMARD', 'KUPHAL', 'BVMR024517HVLMOK11', 'DXHW5851198NV', 2, '(681) 295-2477', 'ines.pouros@example.org', '63150', 11, 157, 78, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(77, 'DON', 'LESCH', 'PREDOVIC', 'JLBO462799|XCFNG68', 'JSLX758294AP6', 2, '205.340.8944', 'ally.gottlieb@example.com', '62864', 6, 146, 162, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(78, 'PATSY', 'ROBERTS', 'KERLUKE', 'OVUC333911MYPYTT14', 'EIRA724170CM2', 1, '916.842.3659', 'bernhard.neha@example.org', '25825', 6, 78, 16, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(79, 'ADONIS', 'DAUGHERTY', 'FAY', 'JHJX441052MGMKNT08', 'IFIZ736084C63', 2, '781.886.4650', 'johathan.stamm@example.net', '38286', 4, 146, 57, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(80, 'CORDIE', 'HEATHCOTE', 'TREUTEL', 'KNLK474741|DIXLA44', 'ABOK920186QZO', 2, '+16415453179', 'hershel77@example.com', '34216', 5, 154, 149, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(81, 'YESSENIA', 'DOUGLAS', 'KUNZE', 'WLHW033340MZHJUE08', 'FMUN491276Q61', 1, '478-554-3553', 'retta.reynolds@example.com', '20576', 10, 39, 143, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(82, 'CARLI', 'JENKINS', 'ROBERTS', 'EBGV516542|ANUAO34', 'YEJH0179201PN', 1, '478.933.8601', 'schmitt.elnora@example.org', '24437', 1, 173, 38, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(83, 'RIGOBERTO', 'KOHLER', 'CRONA', 'RWLU219252HPIXBJ03', 'IKFP025199FK3', 1, '+1 (516) 761-8147', 'luettgen.ryan@example.org', '25880', 6, 111, 80, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(84, 'ROSS', 'SAUER', 'SCHAMBERGER', 'TAKA337718MVYBDZ24', 'OBBZ536159614', 1, '641-557-1262', 'jodie37@example.com', '45186', 9, 161, 95, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(85, 'ISAI', 'BAILEY', 'MOSCISKI', 'NVKC159988|MCAKX73', 'ZZFA757066F94', 2, '+1-743-831-4185', 'uglover@example.net', '46907', 10, 197, 155, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(86, 'CESAR', 'BOGISICH', 'NIKOLAUS', 'BQNP735632MVORJX20', 'AFZC5794860TZ', 2, '502-790-3556', 'daltenwerth@example.com', '17932', 8, 68, 108, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(87, 'MARCIA', 'GREENFELDER', 'GOTTLIEB', 'UHFE443009MZOWUV33', 'KXZU083141OCA', 2, '1-814-774-5429', 'dubuque.amy@example.net', '36338', 9, 121, 211, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(88, 'SHANIA', 'TERRY', 'MCDERMOTT', 'BUYX570236HUTQUU59', 'ICGT21307782O', 1, '+1.219.866.8152', 'bins.ilene@example.net', '61597', 3, 132, 141, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(89, 'DARLENE', 'GUSIKOWSKI', 'RENNER', 'KIAC689907MDJXER25', 'FHWM289107FJ0', 1, '346.736.8128', 'ibrekke@example.com', '43735', 12, 90, 123, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(90, 'LISANDRO', 'DURGAN', 'BARROWS', 'TEND911797MYCXGJ45', 'GYZE097880Z2W', 2, '+18784572720', 'abbott.reagan@example.net', '64106', 13, 177, 193, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(91, 'HASKELL', 'DANIEL', 'WILKINSON', 'QKPP377306MHWDXU39', 'BRPO8849629RK', 1, '(956) 717-3536', 'america26@example.net', '45995', 13, 216, 105, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(92, 'EULA', 'BOGAN', 'RENNER', 'NJCQ387392MGDENR59', 'DGNC710437NCK', 1, '+1.346.601.4241', 'yhammes@example.org', '64558', 9, 20, 114, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(93, 'CECELIA', 'BERGE', 'KUHN', 'GKWH804853HVGSYT94', 'ENAR978334WBZ', 1, '+1 (747) 922-2526', 'oreilly.keely@example.org', '60984', 11, 150, 124, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(94, 'ARLO', 'MARKS', 'GRANT', 'UENT083780HQCGMJ85', 'RWCF703277HIG', 2, '1-986-629-7171', 'damaris67@example.org', '36079', 7, 144, 155, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(95, 'VERNICE', 'LEGROS', 'KASSULKE', 'RVPM185036MMRPFO60', 'TOYG946319OH0', 2, '940-371-2456', 'feil.torrey@example.net', '22929', 7, 18, 79, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(96, 'AVA', 'PACOCHA', 'CONSIDINE', 'QREE019103|ZLJGE81', 'HJWB7572521UN', 1, '+1-414-738-5529', 'cecilia.jakubowski@example.com', '28054', 8, 213, 96, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(97, 'HAL', 'ROBEL', 'RENNER', 'ZQED992654MOZKJR33', 'YVKW914713425', 2, '(551) 236-6237', 'langosh.pietro@example.com', '29701', 5, 148, 38, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(98, 'GUNNER', 'ZBONCAK', 'SKILES', 'UXWX244738MOQDIN25', 'DJIY599410V1I', 1, '(276) 827-6549', 'jade36@example.net', '21475', 5, 71, 68, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(99, 'VERLIE', 'PRICE', 'FRANECKI', 'KQMM054017|YRRLU66', 'COUN09967487S', 1, '929.593.6501', 'colt51@example.com', '65904', 1, 65, 192, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(100, 'MAGALI', 'PARISIAN', 'BAILEY', 'MOYN847319HDJQTI31', 'VGQQ174048C3B', 1, '1-283-270-7614', 'kristy50@example.net', '20014', 6, 117, 157, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(101, 'ELFRIEDA', 'SPINKA', 'VANDERVORT', 'UCKO124583MSHFFZ22', 'CQBA065388593', 1, '1-802-540-3637', 'eichmann.valentin@example.com', '14467', 13, 115, 81, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(102, 'VIRGINIA', 'OLSON', 'LYNCH', 'KQKM643519|VDJWG12', 'SJSF657628ABG', 1, '279.271.5703', 'monty.waters@example.org', '43753', 4, 201, 146, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(103, 'OFELIA', 'BODE', 'MILLS', 'SXAE397275HGQXGG96', 'TRET338927X5F', 2, '+1 (310) 242-1261', 'grath@example.com', '18587', 10, 153, 96, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(104, 'KAMRON', 'BERGE', 'KIRLIN', 'MYXI193296HVTEOM59', 'YBSV139072Q4V', 1, '+19862202721', 'crutherford@example.com', '46570', 1, 177, 25, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(105, 'GINA', 'BAHRINGER', 'GRIMES', 'XIEG942867MFYYYC84', 'WUBO566963B8E', 2, '435.585.3302', 'gulgowski.jeffrey@example.com', '25575', 12, 129, 156, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(106, 'ASHLY', 'RUSSEL', 'MERTZ', 'DGGQ603492|GZWQH22', 'LSVE578690O12', 2, '(564) 315-1286', 'lstrosin@example.net', '42518', 7, 22, 43, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(107, 'ELLIE', 'CRIST', 'KRIS', 'GRNC098169HSDOOZ63', 'MPBQ368755DCB', 2, '+1-831-809-1219', 'reba.moen@example.com', '62606', 1, 131, 17, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(108, 'JODIE', 'CORWIN', 'STROSIN', 'CZYA720820|ESGFD43', 'WCSS639453RIG', 1, '(713) 291-3682', 'dulce.predovic@example.net', '57590', 7, 46, 151, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(109, 'NEDRA', 'PROSACCO', 'BOYER', 'QIAB491801MBIAEU52', 'TLDF031548YWW', 1, '+1-660-825-7286', 'kirlin.rolando@example.com', '52801', 9, 26, 127, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(110, 'LOY', 'SCHUMM', 'REMPEL', 'RQAP004503MZJSCC92', 'JGSV337022YV8', 1, '1-615-374-9525', 'bernier.ashtyn@example.net', '54807', 6, 108, 48, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(111, 'AHMED', 'SHIELDS', 'CRONIN', 'JDCD667312|ZPIFP19', 'SLZH419687OCU', 2, '740-957-8377', 'granville30@example.net', '38054', 5, 199, 112, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(112, 'KOBE', 'STEUBER', 'JAST', 'HOUA325228|PBWLP19', 'KRFA186769B67', 2, '(231) 628-3755', 'johnpaul97@example.net', '48893', 7, 19, 94, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(113, 'LAILA', 'O\'REILLY', 'CARTWRIGHT', 'XSLW842034HHWHHQ47', 'QOXH951712Q93', 1, '713-251-6958', 'gerlach.eve@example.org', '20404', 10, 94, 124, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(114, 'VITO', 'WILLIAMSON', 'HESSEL', 'EVOX302191HSEUMC46', 'JNVM2372131KE', 2, '+1-863-559-1273', 'dan.schmitt@example.com', '15708', 1, 118, 24, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(115, 'LYRIC', 'HEATHCOTE', 'CRONA', 'SJMJ162069HRNIJA68', 'RBXH236877AHZ', 2, '440-710-4338', 'angie50@example.com', '47778', 12, 129, 89, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(116, 'MAXIMILLIA', 'MULLER', 'HAHN', 'JGFZ219673HJGXXE90', 'DFTQ361514QRR', 1, '+1 (267) 487-8034', 'keegan.hessel@example.com', '37055', 7, 168, 51, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(117, 'ANTONE', 'TORPHY', 'PADBERG', 'GXQL973964HWLJJB67', 'GYYR7484885PL', 1, '+15408634630', 'winifred.bins@example.com', '42748', 9, 7, 183, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(118, 'PANSY', 'BASHIRIAN', 'KUPHAL', 'BSBH747073|UICBG14', 'XUNY946200IZI', 1, '(607) 506-3541', 'gibson.verner@example.org', '12349', 1, 15, 198, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(119, 'FATIMA', 'HOMENICK', 'TOY', 'QTKT730270|AZSVN63', 'QNNM895613AKZ', 2, '(445) 347-6894', 'foster.lemke@example.net', '24447', 1, 11, 41, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(121, 'BROCK', 'WILL', 'TILLMAN', 'BAHZ182476HXWUHP02', 'SNPQ314720AJ8', 2, '1-520-303-8306', 'landen55@example.org', '33474', 1, 115, 88, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(122, 'RUBY', 'WATERS', 'UPTON', 'ZAAQ831373HGUMPL20', 'FSSW064457MHE', 2, '+16127618039', 'boyle.roy@example.com', '59716', 13, 31, 106, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(123, 'ANNABEL', 'STARK', 'KERTZMANN', 'ULHS796678MXXUMH51', 'PXGW7725697HL', 1, '(443) 448-5107', 'mikel.doyle@example.net', '29195', 3, 204, 146, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(124, 'PIERCE', 'KOVACEK', 'TREMBLAY', 'NZOS772673HQZUGM91', 'BJER6526941ND', 2, '+1 (334) 969-5825', 'gyost@example.net', '52616', 12, 150, 63, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(125, 'EDYTH', 'BAYER', 'KRIS', 'DULL277334MYTJDL36', 'WDZL480150KEL', 1, '262-644-6655', 'will.kris@example.com', '44311', 6, 132, 93, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(126, 'CHRISTOPHE', 'CONSIDINE', 'PFANNERSTILL', 'AXMJ195325MIBWLU02', 'RSJQ447384HXV', 2, '1-959-599-6361', 'grant.georgette@example.net', '22652', 13, 7, 48, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(127, 'ELOY', 'NIENOW', 'SIMONIS', 'TQAJ924492MPPLHK60', 'JPPL2707331KZ', 2, '402-879-6519', 'zhauck@example.org', '55174', 1, 116, 61, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(128, 'SKYLA', 'GULGOWSKI', 'MACEJKOVIC', 'BPBC300144MIGJZX27', 'JYBY06946294R', 2, '209-490-9185', 'ygorczany@example.org', '65094', 13, 146, 68, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(129, 'ZACK', 'HAMMES', 'JENKINS', 'QJYZ529010HDGKTO07', 'ODTT42986575Z', 1, '+1 (786) 457-1794', 'candace.walter@example.org', '26984', 2, 144, 93, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(130, 'SALVATORE', 'KUHIC', 'PROSACCO', 'YQTH216761|CZCMM76', 'JVCG343769XAS', 2, '+1-864-338-4965', 'lukas.hodkiewicz@example.com', '29603', 5, 213, 74, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(131, 'ISIDRO', 'WEISSNAT', 'CONROY', 'LWEC895231|NMEGA60', 'PZJY317636NEK', 2, '+16816857636', 'klein.camryn@example.net', '25526', 9, 138, 222, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(132, 'ZELMA', 'HARTMANN', 'SATTERFIELD', 'AVZC724981HKNHHN34', 'XOCV178117EQF', 2, '(857) 282-9287', 'haag.arlene@example.net', '38604', 4, 33, 217, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(133, 'HIRAM', 'O\'KON', 'KULAS', 'BDLE596084|EAMCA71', 'VJUD292688CFE', 1, '(225) 691-8109', 'shields.marcelle@example.org', '56008', 6, 32, 153, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(134, 'VERNIE', 'MAYER', 'WALTER', 'HZNV592177HSDANC33', 'RSPF7293517EO', 2, '+1-341-665-0754', 'tnolan@example.net', '43013', 3, 77, 46, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(135, 'LUCIENNE', 'MARKS', 'WILLIAMSON', 'HNCY210396|TMKUE91', 'XGOE8732568R2', 2, '+1-786-473-7686', 'samantha.oconner@example.com', '31275', 4, 36, 148, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(136, 'PEARLINE', 'KUPHAL', 'REMPEL', 'FRYO616650MCBSXS49', 'SIJK5912763L6', 1, '+1.641.686.0336', 'tessie00@example.org', '51567', 11, 93, 195, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(137, 'TRISTIAN', 'RUNOLFSSON', 'MRAZ', 'FGVI710584MFALHX52', 'BMJC3361417RX', 1, '435-879-0728', 'milford36@example.org', '54526', 3, 21, 51, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(138, 'FLAVIO', 'WILKINSON', 'KILBACK', 'YUOD514164MHGCRZ45', 'MDGI969327ZVQ', 1, '754-588-5778', 'porn@example.org', '55545', 1, 124, 128, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(139, 'BEVERLY', 'LABADIE', 'FEEST', 'AZOF736962HXGDTZ08', 'KWVX840115CH8', 1, '(435) 289-6252', 'lynch.vita@example.com', '41490', 2, 181, 196, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(140, 'MAXIMILLIA', 'REINGER', 'ARMSTRONG', 'HJZU588138|QTGJP47', 'DRXJ345810ENC', 1, '+1-207-684-5816', 'hope.kautzer@example.com', '44930', 3, 65, 109, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(141, 'ISABELLE', 'PURDY', 'KULAS', 'KAZH269650|MTTDQ37', 'MSSH786882Z5Q', 2, '+17403488941', 'boris36@example.com', '56421', 7, 173, 107, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(142, 'FLOSSIE', 'SCHNEIDER', 'WILLIAMSON', 'PESB263133MRVRMK01', 'SFLZ615226BQG', 2, '(272) 918-6078', 'tanner74@example.net', '32133', 4, 87, 71, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(143, 'AXEL', 'CONN', 'KSHLERIN', 'TFLA897410|RGBVM77', 'UPLN325113FJF', 1, '918-997-9620', 'kamille60@example.net', '52729', 9, 149, 29, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(144, 'NICOLAS', 'DECKOW', 'TREMBLAY', 'EVEW206254|OKATP93', 'JQBD2450066ZD', 1, '(678) 591-0058', 'lhackett@example.net', '17329', 12, 144, 125, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(145, 'JENIFER', 'DIETRICH', 'WILKINSON', 'WFEO843699|JXGWS58', 'QHGR914357RZ1', 2, '1-715-971-8882', 'robb.leuschke@example.net', '23072', 6, 12, 26, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(146, 'MARJOLAINE', 'SCHMITT', 'YOST', 'CVEL972864HCISFX24', 'XVUZ688966MSE', 1, '+1-313-352-0811', 'austin17@example.org', '46689', 9, 104, 117, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(147, 'LEXUS', 'SWANIAWSKI', 'WILDERMAN', 'MABF894523HNSXDJ12', 'BZQT7948812DV', 2, '(940) 920-2828', 'fhessel@example.com', '37435', 7, 187, 3, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(148, 'RANDI', 'KUHN', 'FISHER', 'UDCD306860MBLGVX70', 'PDYB672465VWU', 1, '+17047799640', 'torphy.willard@example.com', '56231', 13, 196, 95, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(149, 'XZAVIER', 'YUNDT', 'TOY', 'CMSC618064HUIINB75', 'IUDP9819680BH', 1, '+1.620.321.1856', 'emard.aurelia@example.org', '54805', 4, 225, 67, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(150, 'LYRIC', 'TORP', 'HEIDENREICH', 'UEGK202095HXHBZT26', 'UNNT014472JUD', 2, '+1.743.907.5084', 'gislason.ursula@example.org', '66012', 8, 33, 78, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(151, 'LAURINE', 'REMPEL', 'KING', 'EBJC145834MVLRNO34', 'CBGD915577B40', 1, '(740) 839-6983', 'vkiehn@example.net', '12870', 7, 98, 35, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(152, 'LAURIANNE', 'PRICE', 'SHIELDS', 'QLKB397440HKICCR64', 'IMKY359130OED', 2, '256.464.7648', 'hmurphy@example.com', '11677', 12, 208, 17, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(153, 'ANGELA', 'BAUMBACH', 'AUFDERHAR', 'DGYS744463MXSBYA99', 'RDAC6545590TR', 2, '(309) 268-5321', 'adella.hegmann@example.com', '65956', 3, 69, 174, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(154, 'KEVEN', 'BLANDA', 'BAILEY', 'PDHA349182|DAISJ89', 'EIXL437941WJQ', 2, '(520) 558-2311', 'lottie52@example.net', '20331', 9, 95, 146, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(155, 'LYNN', 'LUETTGEN', 'BLICK', 'CFDI212172|MGTJL11', 'IUGK387740F7F', 1, '(934) 210-0479', 'sim.watsica@example.net', '40673', 2, 193, 161, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(156, 'ELVIS', 'MOEN', 'BEAHAN', 'WHPH716711HMQCKA69', 'XCAA521450JWO', 1, '+1-775-245-0068', 'casper.americo@example.com', '62110', 1, 55, 1, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(157, 'LOUIE', 'WILDERMAN', 'HAGENES', 'GINW362565MWIPHD09', 'PNVB629302AIV', 1, '+1-346-814-4380', 'eliane40@example.org', '18449', 5, 89, 176, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(158, 'DEXTER', 'KUHLMAN', 'GLOVER', 'KHEV508355HAWGFI02', 'CUMW3592667LE', 1, '(929) 460-2714', 'bjacobson@example.com', '17574', 2, 110, 68, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(159, 'GEO', 'MARVIN', 'CORKERY', 'CXVX820603MJWICF63', 'BPQT233483LH4', 2, '+17629628310', 'stella20@example.net', '36530', 1, 99, 52, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(160, 'NEIL', 'HAND', 'ALTENWERTH', 'OCKU138955|IFJCN70', 'RLCM3141830EN', 1, '+1.630.502.3676', 'kling.faustino@example.net', '19073', 11, 151, 116, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(161, 'CHRIST', 'WEHNER', 'HESSEL', 'LDEE642602|WFIQG94', 'AAIZ3366157KC', 1, '928-220-5758', 'ursula15@example.com', '20873', 6, 30, 214, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(162, 'ADALBERTO', 'SWANIAWSKI', 'MOHR', 'JOOG975658|LFILQ91', 'XFNF337308WXX', 2, '+1.786.433.8437', 'feest.patsy@example.org', '11488', 13, 148, 15, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(163, 'JARRET', 'HOWE', 'BOEHM', 'PTOA327012|KBEIQ40', 'JPUF8515986WN', 2, '+1-302-915-3754', 'wkoepp@example.com', '32782', 9, 130, 11, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(164, 'JACE', 'MEDHURST', 'MCKENZIE', 'VUWL117166|BBSMH52', 'ADZG687180DZ6', 1, '316-727-3475', 'estroman@example.com', '65137', 9, 119, 39, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(165, 'PRISCILLA', 'GORCZANY', 'YOST', 'GGMA752146|WBLBG74', 'XDNO305645UWD', 1, '1-630-959-9445', 'wiley65@example.net', '28549', 13, 136, 198, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(166, 'GABE', 'MANN', 'KRAJCIK', 'VWNZ736592MFPMJF31', 'VCND44378413Z', 2, '+17744855035', 'sabrina.witting@example.com', '48456', 7, 128, 23, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(167, 'RICHARD', 'CASPER', 'SKILES', 'YRHX641362HKEIZK44', 'GDMH811203I73', 1, '+1.929.771.7732', 'laney.kuphal@example.org', '47642', 12, 93, 198, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(168, 'LESLEY', 'SCHADEN', 'HILLS', 'VYHR121795|WTYPH77', 'ZHMD105263PAD', 2, '+1.734.543.7960', 'ernser.troy@example.net', '50536', 3, 131, 104, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(169, 'GUIDO', 'PREDOVIC', 'SPINKA', 'EITY779570|ZNWSC39', 'XXUC214324GNH', 1, '636-317-5158', 'alva00@example.com', '49054', 4, 101, 180, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(170, 'COURTNEY', 'LANGOSH', 'PAUCEK', 'BWCN038462MVPPLI06', 'AAKT436264OZ0', 2, '509.733.5494', 'hartmann.lue@example.org', '65517', 8, 126, 25, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(171, 'DEVIN', 'BERGNAUM', 'SIPES', 'ZZCB858937HPLHCY41', 'VWWP458954C62', 1, '(240) 260-8417', 'sbaumbach@example.org', '59887', 4, 83, 107, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(173, 'BRIA', 'WALSH', 'QUIGLEY', 'WTHK138599HGOQCM18', 'VLXR563495SF6', 2, '850.977.8791', 'earlene97@example.com', '62199', 5, 86, 159, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(174, 'BLANCA', 'LYNCH', 'GOODWIN', 'KYUU159846HMFDNH24', 'HECX951844RZF', 1, '1-716-532-0890', 'julius.kuhn@example.net', '13955', 11, 1, 24, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(175, 'RUBYE', 'WINTHEISER', 'LEGROS', 'KFFY024847MFUTMP85', 'UKPH376958ZMB', 2, '+1-269-229-6338', 'celestine.goodwin@example.net', '45618', 12, 124, 97, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(176, 'BRANDI', 'TOY', 'BLICK', 'FPDB251815|AZESJ79', 'QCIW773394C5Z', 2, '(531) 869-0942', 'xdaniel@example.com', '46129', 4, 194, 93, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(177, 'REBEKAH', 'BREITENBERG', 'VOLKMAN', 'JMKZ058652|XCJFM08', 'ZGLE771941F3T', 2, '(234) 825-2446', 'thea.schumm@example.com', '51184', 3, 10, 72, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(178, 'CLINT', 'RUSSEL', 'ERNSER', 'JZTU421977HWLLNW24', 'XCVV975415SZN', 1, '+1 (863) 547-2384', 'marvin.jocelyn@example.org', '24827', 13, 143, 69, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(179, 'ROSENDO', 'MCGLYNN', 'SWIFT', 'OPWK530869HQDZVX93', 'WJND6097404NF', 2, '+12548170397', 'maiya.runolfsdottir@example.org', '17733', 7, 135, 13, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(180, 'ALF', 'KOCH', 'KUTCH', 'OAXP679480MHVXCL82', 'MFWD614504TBA', 2, '1-256-275-2453', 'dooley.carmela@example.org', '34306', 8, 114, 141, '2023-06-06 03:20:14', '2023-06-06 03:20:14'),
(181, 'LAURIANE', 'YUNDT', 'LARKIN', 'TRHX443123HLPXLF16', 'AYTB30902834O', 2, '+1 (262) 354-2711', 'jaylin47@example.org', '42934', 8, 209, 181, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(182, 'EMERY', 'DECKOW', 'AUER', 'BFLS222246|EQQMT95', 'DZMO682558MJ6', 2, '1-206-693-1192', 'farrell.astrid@example.com', '63914', 8, 8, 143, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(183, 'LEANNE', 'EICHMANN', 'MOEN', 'MDKU746460MAXGWW10', 'UCZI628570OUN', 2, '(986) 305-6595', 'jerde.mya@example.com', '39884', 1, 58, 16, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(184, 'MAGGIE', 'KASSULKE', 'SCHMELER', 'DJGX275688|BLFOH86', 'CSLF795143RNH', 1, '(325) 569-8587', 'wcronin@example.com', '48570', 6, 55, 208, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(185, 'ESTELLE', 'ANDERSON', 'TOWNE', 'QFMS552620HWNXIE59', 'QILL538802X6G', 2, '+1.430.425.1106', 'eduardo14@example.com', '23467', 1, 177, 31, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(186, 'JAMIE', 'BERNHARD', 'SCHULIST', 'WWOD857269MZLMCL54', 'CNBO030094ATD', 2, '(947) 285-9692', 'twintheiser@example.org', '46248', 3, 84, 56, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(187, 'TOD', 'CUMMINGS', 'BASHIRIAN', 'CZZX097636MFJEKO26', 'SAPK626054ALE', 1, '+1-740-266-7433', 'howe.camron@example.org', '41155', 7, 59, 117, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(188, 'VAN', 'LITTLE', 'LEGROS', 'ZNTJ319217MZIRJG09', 'BFLF329813V7W', 1, '832.309.5132', 'paolo41@example.org', '54586', 10, 212, 124, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(189, 'REBECCA', 'LEHNER', 'KUHLMAN', 'HRRA988836HSMANU69', 'CNFE10906048N', 1, '520-436-8850', 'kylee.satterfield@example.net', '49519', 7, 101, 219, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(190, 'JAIRO', 'SCHULTZ', 'REICHERT', 'NKVU228894MVNKTW44', 'SESL030105FUY', 2, '1-567-436-8183', 'okuneva.breanne@example.org', '50543', 1, 99, 206, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(191, 'JOANNY', 'SHIELDS', 'WUCKERT', 'ZZRZ502634HJLBDC48', 'OKJO83849436S', 1, '321-526-6080', 'alfonzo69@example.com', '35345', 7, 47, 125, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(192, 'EUDORA', 'PADBERG', 'CRUICKSHANK', 'DGPJ559968|NVNNK14', 'GUVT480790L3B', 1, '+1 (830) 651-1230', 'kaltenwerth@example.net', '34545', 12, 107, 212, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(193, 'EUNICE', 'SCHAMBERGER', 'SPORER', 'BDKV068563MIBOAV83', 'WVDH965834M9H', 1, '386-457-6413', 'leila25@example.net', '15324', 1, 196, 167, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(194, 'TYRA', 'SPORER', 'WUNSCH', 'KOZE431715HFJCEG16', 'QXGX376195JKW', 2, '+1.458.718.6655', 'golda.homenick@example.com', '26757', 1, 117, 199, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(195, 'CHRISTOPHE', 'ZBONCAK', 'HELLER', 'BJEN960854|DNRWS76', 'RXEG701105P3S', 1, '(940) 231-2628', 'gislason.jarrell@example.com', '32940', 5, 60, 189, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(196, 'DEANNA', 'STOKES', 'CONSIDINE', 'KZVH217661MJTDJM17', 'ZUZM874547EO3', 2, '+17042307433', 'alvina.bashirian@example.org', '29041', 5, 166, 31, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(197, 'ALANNA', 'SANFORD', 'KULAS', 'SJYJ278782HAIQEB65', 'UMIL475920D58', 1, '1-928-627-4913', 'vonrueden.leta@example.com', '40548', 6, 186, 5, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(198, 'KIARA', 'CONN', 'TERRY', 'MAOK596429|ICKZY51', 'VPOL896526CGR', 2, '(424) 345-3145', 'carli37@example.org', '65840', 11, 212, 219, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(199, 'EARNEST', 'REMPEL', 'TREUTEL', 'NJWL778693MEMHUN71', 'OSAV972672A61', 2, '1-772-952-5543', 'baumbach.franco@example.com', '22313', 10, 145, 204, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(200, 'AUDRA', 'MANTE', 'BLICK', 'CRGB000337MOZZUG50', 'KYPS898197QX3', 2, '1-903-562-7201', 'schimmel.kaitlin@example.net', '22708', 9, 151, 215, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(201, 'DECLAN', 'DURGAN', 'VANDERVORT', 'BCGI085538MTWISW51', 'AVLB971415CWI', 2, '+1-801-827-3257', 'emmerich.wendell@example.net', '66148', 12, 178, 140, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(202, 'MERTIE', 'SCHULIST', 'O\'CONNELL', 'WSDW700197HJHBPB89', 'TTVX154140K4Y', 1, '(320) 556-8408', 'monique49@example.org', '46550', 2, 145, 125, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(203, 'LAMBERT', 'TREUTEL', 'GRAHAM', 'ABHS558369HCUDMB34', 'ZDHN066705JJ0', 1, '1-934-280-2059', 'margarita68@example.org', '39127', 7, 56, 144, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(204, 'CALLIE', 'MURPHY', 'CUMMINGS', 'YPVH753666MUTFFP01', 'LNOR608123NM4', 2, '361.331.6803', 'mary.carter@example.org', '55090', 13, 17, 104, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(205, 'WELLINGTON', 'VOLKMAN', 'PACOCHA', 'PFJU751606HAHOXB00', 'YXWD427100B88', 2, '234-219-8795', 'skemmer@example.com', '66003', 6, 153, 64, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(206, 'DINA', 'WINTHEISER', 'MACEJKOVIC', 'UNKZ406576|IOGTP12', 'XFPH7017786N5', 2, '+1-980-264-2438', 'pollich.mohammad@example.org', '33403', 11, 33, 179, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(207, 'EMELIE', 'WOLF', 'DIBBERT', 'HKDZ068561MGMGWK02', 'MPUH587977C1K', 1, '+1-248-430-6328', 'larkin.violette@example.net', '12877', 9, 212, 106, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(208, 'EMIL', 'RUNOLFSSON', 'BLANDA', 'IOOL676390HGFUBX37', 'TFLD78522482N', 1, '716-318-1289', 'karina14@example.org', '59350', 5, 141, 106, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(209, 'WALDO', 'FUNK', 'WARD', 'ZHUB767324|ODPHF74', 'MZDK763278NNO', 1, '1-770-315-3671', 'dschimmel@example.com', '37891', 6, 213, 120, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(210, 'THEA', 'CONROY', 'ARMSTRONG', 'OMMZ044754|OTGKX00', 'JIEC933336OEN', 2, '+1-574-252-9358', 'torp.carlo@example.com', '32789', 6, 55, 62, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(211, 'LEDA', 'WEHNER', 'BERGE', 'AHZE565872|LSYZB70', 'MZTN9081588SO', 2, '+14059211152', 'vbahringer@example.net', '56854', 5, 167, 16, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(212, 'MADISON', 'STOKES', 'CASPER', 'WIZG475282|XXBEC84', 'ZYYV8878353UW', 1, '1-928-915-3817', 'dhackett@example.com', '19126', 6, 184, 56, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(213, 'EZEKIEL', 'GORCZANY', 'LEHNER', 'SJNV237616|PWDUL01', 'LDCS832600D2Z', 2, '+1.251.462.5370', 'shanna45@example.net', '64906', 8, 214, 205, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(214, 'REESE', 'SCHMELER', 'BAHRINGER', 'PEZE200502|WMJQM43', 'HPDX4869092RX', 1, '1-860-784-5926', 'macey85@example.net', '39279', 6, 114, 61, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(215, 'CHANDLER', 'LAKIN', 'LOWE', 'JMJR328890|YUFHJ86', 'WEBI845219SGK', 1, '1-248-450-6722', 'reichel.taurean@example.net', '25614', 1, 38, 206, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(216, 'KRYSTEL', 'ROLFSON', 'VANDERVORT', 'PLAP024845MQXUHR16', 'XSPH923965SYZ', 1, '203-369-3228', 'elliott.raynor@example.com', '57344', 9, 20, 11, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(217, 'MARGARETE', 'METZ', 'CORWIN', 'FLTA533316MIQMBV91', 'PNIO390246RSM', 2, '534-353-3699', 'grayson97@example.com', '55677', 4, 221, 163, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(218, 'DORA', 'KRIS', 'LESCH', 'IXPP314803MWGZEY36', 'QKIQ439206FWY', 2, '585.836.2193', 'joyce.hermann@example.net', '21034', 10, 33, 58, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(219, 'JEFF', 'MCKENZIE', 'RAU', 'URHT329193|RZCIX38', 'HGWZ041186MBA', 2, '510.807.6720', 'vandervort.litzy@example.org', '64686', 6, 175, 61, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(220, 'GERMAN', 'NIKOLAUS', 'TROMP', 'MTXK910980HYFUEI20', 'LGYY9459934CP', 2, '484.922.3972', 'maude.prosacco@example.com', '51191', 9, 222, 88, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(221, 'BETHEL', 'DOYLE', 'CROOKS', 'UOJM711570MSNHOD96', 'OLPC826837Z2R', 1, '+1-678-302-3703', 'hnolan@example.com', '36517', 4, 190, 31, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(222, 'EUGENE', 'DENESIK', 'FRANECKI', 'ZOEB853629MKMDWB70', 'QBMH0042385HV', 1, '754-233-7739', 'elakin@example.com', '34076', 1, 67, 88, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(223, 'MALINDA', 'HILLS', 'HUEL', 'BEPQ220917HERLIA15', 'FELN498902KRE', 2, '+1.430.522.5446', 'eveline70@example.org', '64473', 8, 3, 210, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(224, 'RODRIGO', 'WALTER', 'BERGSTROM', 'WGSI094849HMJVMQ95', 'PXQZ386974HHN', 1, '+1-512-919-1653', 'bernier.antonina@example.net', '26008', 10, 143, 210, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(225, 'HEATHER', 'QUIGLEY', 'WUNSCH', 'YXMT743910MCWOTH38', 'IVJG169844T63', 1, '(413) 900-4392', 'stillman@example.org', '50207', 11, 206, 51, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(226, 'IDELLA', 'TOWNE', 'PAUCEK', 'AQER742174|YQTGA08', 'DTDC9190193RJ', 1, '1-904-976-5399', 'wmonahan@example.net', '59302', 11, 44, 155, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(227, 'ELLIOTT', 'ZIEME', 'CRONIN', 'CRSO882004|ZXXSA08', 'JDBF556082N63', 2, '+1.770.216.4944', 'vida89@example.org', '31524', 5, 49, 216, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(228, 'SHANELLE', 'HEANEY', 'EFFERTZ', 'NXNA116391MPOOHO70', 'YUVQ7897408VU', 2, '(772) 577-4802', 'clotilde92@example.net', '56607', 1, 65, 85, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(229, 'VELDA', 'KULAS', 'BRUEN', 'ZKKW750970MZPIJY07', 'ESGL300038X44', 1, '1-516-805-6486', 'lmetz@example.com', '49587', 5, 43, 79, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(230, 'MAXIMO', 'SATTERFIELD', 'O\'CONNELL', 'OZGB435406|CUGMQ07', 'IEJR875454255', 1, '(332) 841-0552', 'hammes.trinity@example.com', '64570', 11, 199, 162, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(231, 'GARRETT', 'SPENCER', 'QUIGLEY', 'CPIO453019MJLNSP50', 'JUKS915621EVI', 2, '(505) 781-8121', 'kathleen.maggio@example.org', '30494', 4, 159, 125, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(232, 'QUENTIN', 'EBERT', 'SWANIAWSKI', 'DLCG914101HQFQGB50', 'HPRR733619IZV', 2, '+1-972-737-0507', 'blanda.mariano@example.org', '63333', 12, 131, 110, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(233, 'BEULAH', 'NADER', 'HIRTHE', 'BKPD203429|CGCQI83', 'CMFB423186ITY', 2, '+1.629.416.8746', 'hilma05@example.com', '43102', 10, 130, 142, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(234, 'JEVON', 'HODKIEWICZ', 'LIND', 'DVTR344432HFBFIQ51', 'VSGS724126C33', 2, '469-346-5863', 'colten56@example.org', '42824', 8, 197, 42, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(235, 'JOESPH', 'FRAMI', 'KOZEY', 'QBLM657753|ZFRFG46', 'RIMM183411SU0', 1, '973-756-9155', 'corwin.rey@example.net', '21678', 10, 103, 87, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(236, 'FINN', 'GLEASON', 'RYAN', 'LMHV496039MDKPYO89', 'ZFEJ430814W1G', 1, '+1-341-657-4790', 'bode.markus@example.com', '25142', 5, 155, 215, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(237, 'BRENNON', 'DANIEL', 'WEISSNAT', 'PFXG513378MAKLOW00', 'XIAF94771627S', 1, '+18638164047', 'casey.howell@example.net', '63521', 6, 33, 137, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(238, 'WILLIAM', 'BLOCK', 'MCGLYNN', 'PPGP469426HZXTXI81', 'AFPN847954HYM', 2, '+1-754-238-3523', 'wolff.graham@example.org', '32903', 7, 31, 11, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(239, 'COLE', 'WARD', 'TURNER', 'IPNA536096HMEXKX76', 'GGTF8177184OM', 2, '+1.240.921.6986', 'koelpin.jakob@example.com', '59010', 5, 144, 203, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(240, 'MIKE', 'BARTOLETTI', 'BOGISICH', 'PHDM137054|CPPQX67', 'UKOU3326044J6', 1, '+14845786514', 'thea.olson@example.org', '62743', 10, 133, 84, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(241, 'EASTER', 'ROLFSON', 'O\'KEEFE', 'JGBM297065HODNWS82', 'OLXE718517WCX', 2, '806-938-8748', 'lawson87@example.org', '45312', 2, 78, 8, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(242, 'MARLEE', 'TORP', 'KERLUKE', 'BSBL898061|WCZJI78', 'XACC135289H7H', 1, '+17709886541', 'cnitzsche@example.com', '16247', 8, 187, 85, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(243, 'BRET', 'KING', 'BASHIRIAN', 'BGMM984941MCPRRC49', 'FFSN257589ZFX', 2, '440-512-6468', 'pgraham@example.net', '57574', 6, 200, 129, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(245, 'KOBE', 'LEUSCHKE', 'SCHAMBERGER', 'XYJV593575|NCYVI71', 'XFCV9059838Y2', 2, '+1-401-788-7560', 'orville71@example.net', '33421', 9, 88, 10, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(246, 'CHASE', 'REMPEL', 'VONRUEDEN', 'ZPZL542363|CZRNJ58', 'MPJO722782V2P', 2, '341.512.2176', 'doyle.parker@example.net', '25595', 11, 55, 219, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(247, 'LOMA', 'TOWNE', 'ROBEL', 'MYRY033690HPPAQP98', 'FUWT616918BUV', 1, '(678) 877-0452', 'paxton98@example.com', '62302', 1, 6, 60, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(248, 'LAVERNE', 'MCCLURE', 'SATTERFIELD', 'HNUS135513|GUXIP17', 'PPCA5215263HR', 2, '+1 (762) 569-1884', 'sedrick.boyle@example.org', '34653', 9, 129, 89, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(249, 'JAYDON', 'MARKS', 'GIBSON', 'TTSZ084517HRYYBW99', 'RWBS624149HWJ', 1, '(770) 982-8327', 'elda.cole@example.com', '60097', 3, 188, 41, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(250, 'JEREMIE', 'HARVEY', 'LUBOWITZ', 'RMVS659963|FUIOI54', 'JPOJ587207BM8', 1, '+14057305600', 'sophie59@example.com', '48997', 12, 50, 6, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(251, 'WINFIELD', 'CHRISTIANSEN', 'BRADTKE', 'UMTO578622HVLZVC74', 'LRYJ1180857YF', 2, '(419) 265-2192', 'carli.ruecker@example.org', '24155', 9, 23, 16, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(252, 'MAGNOLIA', 'BREKKE', 'MCGLYNN', 'LWDD737389HJHHQQ97', 'KDZY2187606WT', 2, '1-351-509-5826', 'ybreitenberg@example.org', '57203', 3, 18, 99, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(253, 'SKYE', 'O\'CONNER', 'ERDMAN', 'IGQI964574HPSBHS52', 'DZDU173491TVT', 1, '706.903.6069', 'dietrich.aiden@example.com', '17700', 6, 135, 80, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(254, 'DEJON', 'ROBERTS', 'MCGLYNN', 'NGPH875694MLCQHJ37', 'CMSB951526N62', 1, '707.539.9614', 'koby74@example.org', '27470', 12, 35, 168, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(255, 'TIA', 'FUNK', 'AUER', 'UJFV029575HWLHUR38', 'GZIJ025137384', 2, '+1-570-815-3470', 'lhilpert@example.com', '27688', 5, 49, 48, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(256, 'JOVANNY', 'REICHEL', 'KIEHN', 'AZSO471912MWJQQO69', 'ISUA6869127G0', 2, '317-297-6204', 'rasheed32@example.com', '20925', 6, 181, 92, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(257, 'MAXIMILLIA', 'BINS', 'ROWE', 'KPMV376433|OMCPG64', 'QDYT0084359YI', 1, '501-727-3358', 'thand@example.org', '26415', 13, 163, 127, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(258, 'VERDA', 'HAHN', 'RICE', 'CFIW619564MCHAJO37', 'OPFT978654ZI4', 1, '+1-309-991-5798', 'roberts.rosemarie@example.com', '12411', 12, 147, 214, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(259, 'GORDON', 'KUPHAL', 'GREEN', 'ACRL440425HYTXRN08', 'LUKX44528125Q', 1, '+13374747342', 'ebert.laron@example.org', '45987', 11, 200, 28, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(260, 'AUDREY', 'TERRY', 'CRONA', 'HERZ910812|WWRHG24', 'UJSI011366MRP', 1, '+1-806-329-2426', 'retha.rath@example.org', '57725', 11, 56, 60, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(261, 'RAEGAN', 'ERDMAN', 'BLANDA', 'BOUI932885|TBWYB63', 'SMRW807126KIH', 1, '931.472.7083', 'welch.kennedi@example.com', '40198', 5, 167, 86, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(262, 'WILSON', 'HOWE', 'STROSIN', 'EEZP517828MNRDQM42', 'CTDS225116K7A', 1, '651-857-0071', 'litzy87@example.net', '13661', 7, 38, 121, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(263, 'URIEL', 'RENNER', 'HOEGER', 'ZLHP412308MFGXQP57', 'RNSV887536AMJ', 1, '+1-281-957-4683', 'welch.sierra@example.org', '38475', 10, 52, 201, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(264, 'LILLY', 'STREICH', 'OSINSKI', 'MQBY853057|NOHAJ97', 'OIDW762087SCS', 2, '1-737-565-2517', 'sporer.cecil@example.net', '38945', 12, 48, 222, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(265, 'JULIE', 'KUNZE', 'WEHNER', 'YGTD353442MDWWBG67', 'CDGA202815EI6', 1, '808.525.3249', 'alexys.white@example.org', '42780', 10, 193, 109, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(266, 'MAYMIE', 'GREENFELDER', 'BOGISICH', 'ZSBR520243HGBOEY02', 'ISRQ5951317P2', 1, '+1.220.748.0485', 'deckow.julian@example.org', '21865', 2, 187, 9, '2023-06-06 03:20:15', '2023-06-06 03:20:15');
INSERT INTO `usuario` (`id`, `nombre`, `apaterno`, `amaterno`, `curp`, `rfc`, `id_genero`, `telefono`, `email`, `npersonal`, `id_nivel`, `id_delegacion`, `id_users`, `created_at`, `updated_at`) VALUES
(267, 'HAYLEY', 'CHRISTIANSEN', 'KOEPP', 'YGLA469468MOFAEW90', 'BMOB106662UNO', 2, '229-835-2051', 'raheem.kassulke@example.net', '65363', 10, 194, 180, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(268, 'CARMEN', 'BAUMBACH', 'WIZA', 'LGEB995209MLQTMW99', 'TRPL76103516D', 1, '1-364-280-3935', 'ara.rogahn@example.net', '39861', 1, 110, 84, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(269, 'JACKELINE', 'HAAG', 'GLEICHNER', 'JBJU963842MKKHMO77', 'NLME031607Q16', 2, '+1-332-365-2929', 'celia.dubuque@example.com', '53441', 2, 190, 33, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(270, 'JEREMY', 'SCHMELER', 'EICHMANN', 'LECD768440MDWVUZ73', 'BTSP5971966HB', 1, '(920) 537-8266', 'manuel52@example.com', '44898', 11, 170, 58, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(271, 'RUTH', 'SAUER', 'YOST', 'VTDP981653MDDXKV12', 'BHBB321876QAU', 2, '303-493-0158', 'michelle.murphy@example.org', '50006', 11, 31, 51, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(272, 'LONDON', 'DECKOW', 'OBERBRUNNER', 'FSPE601540HYBDOX54', 'LSPV645798FSN', 2, '+16096718783', 'friesen.carson@example.net', '12063', 9, 132, 191, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(273, 'JEREL', 'WILLMS', 'TILLMAN', 'WWSZ241923MLDFGR71', 'XHAV2933310KD', 1, '1-941-540-9169', 'branson.von@example.com', '53317', 7, 107, 58, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(274, 'NELDA', 'CHRISTIANSEN', 'REICHERT', 'NXUM236907MMVGWY38', 'PVPC006456KC2', 1, '864-712-6957', 'tfadel@example.net', '13027', 7, 45, 76, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(275, 'APRIL', 'TERRY', 'HALEY', 'YCED780928MIWWGE72', 'LBVO671356RAC', 1, '+1 (878) 368-8316', 'joan02@example.com', '37278', 10, 166, 212, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(276, 'ORION', 'EFFERTZ', 'SPINKA', 'NAVD806922HZGBWU29', 'QLNO907209818', 1, '+1-425-594-6478', 'miller.damion@example.org', '12860', 11, 109, 26, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(277, 'GILLIAN', 'KOVACEK', 'HERMANN', 'CFDQ164765|HVJYF82', 'COWM347893KF8', 2, '1-901-567-4886', 'daphne53@example.net', '21007', 3, 147, 190, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(278, 'CRISTAL', 'BOYLE', 'ABBOTT', 'TEML434486|ZRRVD35', 'FEPF189916EMR', 2, '856-669-6537', 'runte.hettie@example.net', '56409', 13, 32, 27, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(279, 'CAITLYN', 'CROOKS', 'LAKIN', 'OOAG669217MGFNAQ84', 'HEFM153623IS3', 1, '432-550-6098', 'sydney.hayes@example.org', '39688', 4, 223, 125, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(280, 'IDA', 'WUCKERT', 'GREEN', 'GSCP100776|KAOIC01', 'TKDC692056RJA', 1, '762-884-8646', 'nicolas.hansen@example.com', '65228', 3, 106, 20, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(281, 'CHAYA', 'REICHEL', 'HUEL', 'YFAZ719459HMURUS85', 'YWDF403568016', 2, '458-568-5671', 'tking@example.org', '60915', 13, 25, 213, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(282, 'KENDALL', 'HEANEY', 'DURGAN', 'FURC092170HXYNNX87', 'XNOK530297CWJ', 2, '+19049935707', 'hermiston.madaline@example.com', '58130', 2, 38, 4, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(283, 'CURT', 'BARTOLETTI', 'KASSULKE', 'ZGGB840260HFWTVX27', 'GFFD671953IYT', 1, '+15718411036', 'adrian.fadel@example.org', '66254', 10, 177, 217, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(284, 'DEDRIC', 'CONN', 'DONNELLY', 'TPGS950294MTEWUP02', 'CXDE842844DIP', 1, '682-957-6356', 'adam35@example.org', '42570', 5, 102, 88, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(285, 'JORDANE', 'LIND', 'KIHN', 'YRHX472250MHFQKT31', 'YICL365303HAC', 1, '(907) 312-2266', 'tlangosh@example.com', '23285', 1, 212, 70, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(286, 'EVALYN', 'BOYLE', 'DARE', 'SEPM088115|XWDMZ85', 'SPQE295572SU0', 1, '+1.248.915.6178', 'celestine31@example.org', '32030', 13, 144, 79, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(287, 'VINCE', 'KOHLER', 'HANE', 'GFRC333526HGSXAE37', 'YMLF381710ZL0', 1, '+1-937-696-2120', 'mueller.arden@example.org', '60506', 11, 101, 31, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(288, 'SANFORD', 'ROHAN', 'WYMAN', 'RMLG604994MCJNCB14', 'EJUP834701F3C', 1, '(262) 563-4575', 'eliezer.ward@example.org', '26957', 7, 10, 18, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(289, 'HILDA', 'BEATTY', 'BREITENBERG', 'CYJR093888HCCIHQ72', 'VXXX447377YVK', 1, '1-678-260-2469', 'green.demarco@example.org', '14312', 3, 160, 32, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(290, 'JADE', 'WELCH', 'GOLDNER', 'AKFJ634808HQPTPC93', 'FDXB8925495HO', 2, '+1 (718) 323-2560', 'xkrajcik@example.org', '38300', 11, 4, 109, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(291, 'MICHEL', 'HYATT', 'ZIEME', 'GFCK793338|TAHEL48', 'RKYN805397MV3', 1, '+1 (406) 993-6906', 'marmstrong@example.org', '40228', 2, 164, 74, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(292, 'HASSIE', 'MULLER', 'ZEMLAK', 'NOEM494298|KEFRI86', 'FWCF390109JF1', 2, '+17088502879', 'nestor79@example.net', '64104', 13, 47, 218, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(293, 'ALBINA', 'ULLRICH', 'RITCHIE', 'NTVG839481HAXAKS40', 'NACL733487E1C', 1, '+1 (657) 823-8719', 'alfredo.heidenreich@example.net', '46533', 12, 4, 74, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(294, 'RALEIGH', 'MARQUARDT', 'OBERBRUNNER', 'LFNM202130|EWURA53', 'DLNW916683S3S', 1, '+1.231.460.5975', 'keebler.jordy@example.com', '53115', 3, 52, 61, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(295, 'MANDY', 'MRAZ', 'PACOCHA', 'VBUC346591|NKXGJ29', 'UJQW735002OCJ', 1, '727-233-0377', 'huels.niko@example.net', '33951', 7, 203, 144, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(296, 'HANNA', 'WILDERMAN', 'KEMMER', 'MOTI945176HEPLPY45', 'WHMK912061EVN', 2, '+13649341216', 'valentin32@example.net', '41745', 8, 3, 198, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(297, 'ABAGAIL', 'SENGER', 'KILBACK', 'MWYJ616331|KDOCK34', 'RCEY9684420QF', 1, '828.397.3972', 'bernadette23@example.net', '65253', 6, 69, 35, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(298, 'LAMAR', 'SWANIAWSKI', 'WINDLER', 'RGXP252986MUOALD50', 'TRLP390010XJD', 2, '662-400-6487', 'mireille.schamberger@example.net', '42336', 8, 43, 145, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(299, 'TITO', 'DICKI', 'WYMAN', 'MZXN872633|TLQSV55', 'JWPK3387417T9', 2, '+1 (346) 746-8115', 'alicia35@example.net', '33133', 3, 25, 168, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(300, 'JAYLAN', 'TREMBLAY', 'SHANAHAN', 'UNXR790798MZSVGK56', 'TYKO8308364VZ', 1, '+1-253-979-6422', 'wolff.unique@example.com', '50348', 12, 162, 151, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(301, 'ISABELLE', 'NIENOW', 'BREKKE', 'XKOD011618MPOCUM06', 'GAEK9860456ZS', 2, '+1-838-484-6851', 'jillian96@example.com', '23171', 5, 3, 87, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(302, 'ABIGAIL', 'HINTZ', 'ABBOTT', 'HPPW780115|PMSYG18', 'WKOJ597950LZQ', 2, '+1-650-359-8481', 'wolff.valentine@example.net', '64480', 5, 42, 181, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(303, 'SONNY', 'FAHEY', 'EBERT', 'EXSX566099MELXQG15', 'ZWVB629011QB4', 1, '(423) 736-2022', 'khalid82@example.com', '19851', 1, 120, 20, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(304, 'LILIANA', 'KREIGER', 'RIPPIN', 'UOUK286781MBUTPR93', 'VAKA2895938MD', 1, '+18473559699', 'rveum@example.com', '53941', 4, 130, 176, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(305, 'FREDDY', 'HALVORSON', 'HARVEY', 'QPYR575490MNQBUC45', 'UJUS221519W7T', 1, '+1.267.750.2608', 'belle.sanford@example.com', '19380', 2, 174, 102, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(306, 'JULIEN', 'FEIL', 'KRIS', 'YUCP119207MNXRDW02', 'ZCNC930716RCY', 1, '+1-315-933-5262', 'gertrude28@example.net', '21136', 6, 173, 10, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(307, 'ROSIE', 'HEIDENREICH', 'WALTER', 'FKQC697313HTVZPK47', 'AHWF575065799', 2, '+1-586-492-2223', 'vella54@example.com', '11900', 5, 80, 100, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(308, 'AHMED', 'HEIDENREICH', 'SWIFT', 'RPCE379944|FMUAC55', 'GIPB514732075', 1, '+13527049749', 'obernier@example.net', '50527', 3, 59, 129, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(309, 'MYA', 'FUNK', 'ZULAUF', 'RBGE890991|VWKEL21', 'HDCJ1203435L3', 1, '1-458-678-3928', 'angie.jast@example.com', '32749', 6, 130, 181, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(310, 'KRISTIN', 'CRUICKSHANK', 'BREITENBERG', 'DZZZ007467MBMLLW09', 'KKYK400923AAF', 2, '(314) 794-4072', 'nsauer@example.org', '64284', 5, 178, 92, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(311, 'LETHA', 'MORAR', 'HEGMANN', 'JFLT010223|UTZQQ87', 'HIRB569082SV6', 2, '503.768.9278', 'wmetz@example.com', '64817', 9, 157, 9, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(312, 'AMERICA', 'BECHTELAR', 'EFFERTZ', 'MYWG802083|BANHJ26', 'RURX775671L8Q', 2, '(984) 681-1350', 'carley.mraz@example.net', '45345', 6, 49, 50, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(313, 'KATHRYNE', 'FAHEY', 'BOEHM', 'UGRK243742HDUZHV73', 'FDXX320337G0M', 1, '+1.520.402.0728', 'efrain.will@example.net', '13231', 1, 72, 5, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(314, 'VALENTINE', 'HEIDENREICH', 'MAYERT', 'AQEG219194MJLOLQ16', 'UMRD541097WBE', 1, '984-692-6950', 'vreinger@example.com', '52270', 5, 222, 44, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(315, 'NOELIA', 'SAUER', 'PREDOVIC', 'UMUI674950MUWMCW34', 'JLLL795158EK6', 2, '+14248281436', 'yundt.antoinette@example.net', '29913', 5, 172, 108, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(316, 'BRANNON', 'ROHAN', 'FAY', 'NKOJ873783MGEAIT40', 'ZXMB671868YV7', 1, '1-657-561-3262', 'kristina57@example.com', '40936', 4, 167, 156, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(317, 'MYRTIS', 'KING', 'O\'REILLY', 'MYQY747114HGBNQK63', 'VDZA857687UV5', 2, '(234) 967-6506', 'danielle.okeefe@example.com', '36453', 1, 69, 147, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(318, 'ELEONORE', 'SENGER', 'LITTLE', 'JDOL571602HHDDWQ72', 'JTGL514007GCL', 2, '878-332-4112', 'broderick.veum@example.net', '54267', 5, 141, 198, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(319, 'LEMPI', 'MURRAY', 'HAYES', 'UGGJ791797HPVZRJ93', 'DBLJ949333DMS', 2, '+1.603.278.2807', 'oswaldo.bechtelar@example.com', '62122', 10, 131, 38, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(320, 'ANAHI', 'GRAHAM', 'CARTWRIGHT', 'EIZT400567|ZUADE08', 'YMYL509578OPO', 1, '1-484-487-7435', 'spredovic@example.com', '51643', 5, 136, 198, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(321, 'GONZALO', 'SHANAHAN', 'VEUM', 'LOTZ505750MBLAFR77', 'KFIT8017352RI', 2, '754-312-5404', 'ziemann.britney@example.net', '37347', 9, 40, 73, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(322, 'LETHA', 'DARE', 'SANFORD', 'NDLF872843|AONBJ34', 'NNSM605784PVU', 1, '(417) 894-3758', 'marion.tillman@example.com', '24576', 2, 21, 112, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(323, 'BETHANY', 'GUTKOWSKI', 'WALSH', 'UOFB992116|IWIOA79', 'ZYQL128828WR9', 1, '+1 (862) 857-1893', 'alexanne.bins@example.org', '37984', 9, 106, 44, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(324, 'EMMALEE', 'DACH', 'LABADIE', 'KPMF899374MPEYHT21', 'MDYM284662SXF', 2, '+1 (337) 815-8822', 'ukling@example.net', '32089', 4, 217, 99, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(325, 'ELEANORA', 'SCHUMM', 'EMARD', 'YRKD222034HUYIEV64', 'CAJP119618O95', 2, '404.801.3910', 'kaylie.greenholt@example.net', '13403', 5, 106, 195, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(326, 'FLAVIE', 'VEUM', 'DURGAN', 'QBSU372345MRJHYM09', 'SLCX233767VEX', 2, '253-670-9104', 'egleason@example.net', '55670', 5, 200, 210, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(327, 'APRIL', 'PARKER', 'TOWNE', 'ZWET515218|OPTGN70', 'FPHP675463CUX', 1, '740.764.6650', 'ritchie.stacy@example.net', '48418', 8, 181, 166, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(328, 'GUNNER', 'OBERBRUNNER', 'KOSS', 'TIVF203905|LBEJE55', 'COAA818292JBU', 2, '262.705.3373', 'frobel@example.net', '36780', 8, 87, 100, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(329, 'ARNULFO', 'PROHASKA', 'FEEST', 'LNLL105536|DQPOB23', 'DVUF3087775JK', 1, '1-919-587-3333', 'sfritsch@example.com', '36997', 6, 5, 214, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(330, 'MATHIAS', 'SATTERFIELD', 'KUHLMAN', 'TIBU804806|LOUXV82', 'YGKV10224920H', 1, '+1.539.479.6388', 'douglas.abigale@example.com', '57050', 11, 210, 99, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(331, 'LUCIENNE', 'CORMIER', 'HILLS', 'PXTC545075MRHBRE34', 'BGEN0053908FR', 1, '(682) 881-3310', 'schmidt.vito@example.org', '52745', 13, 217, 221, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(332, 'UBALDO', 'PROHASKA', 'LEUSCHKE', 'FVHT967192HDRZTP21', 'YRKA340465UZD', 2, '+1.870.871.6781', 'dariana.watsica@example.com', '55248', 5, 138, 93, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(333, 'JABARI', 'HALEY', 'HEGMANN', 'VHMJ359580MHCUKE14', 'ZEEM491652RII', 1, '+1-305-566-1814', 'nschuppe@example.com', '28091', 8, 219, 41, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(334, 'LISA', 'LAKIN', 'DICKI', 'YANR720917MQZQPI52', 'OAOU553401UAP', 2, '959-496-2291', 'wintheiser.leopold@example.net', '46709', 10, 204, 126, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(335, 'LOWELL', 'PURDY', 'KING', 'JGCX602803MONLRR49', 'SKFJ158556D80', 2, '1-913-916-3398', 'vida.rippin@example.com', '66427', 3, 165, 91, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(336, 'URIAH', 'DUBUQUE', 'CONNELLY', 'NGVU833752|OAVMU91', 'HJFE88532442Y', 2, '+12522050290', 'wunsch.leonie@example.net', '11648', 5, 115, 62, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(337, 'HASSAN', 'TROMP', 'MCCULLOUGH', 'BQHQ754561HHUXNS19', 'AXGZ724581QKA', 1, '+1-248-803-0840', 'price.sherwood@example.com', '37740', 12, 149, 166, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(338, 'PIERRE', 'DIETRICH', 'SCHAMBERGER', 'XBCT472605|QZIBD44', 'PUHO720449WGX', 2, '(757) 484-3427', 'neva17@example.org', '12094', 9, 54, 200, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(340, 'CHRISTOP', 'FEENEY', 'ORN', 'BAJL732573MPXZPR52', 'LFFX151230OC7', 2, '1-636-701-2670', 'schuppe.rubye@example.org', '17430', 2, 50, 154, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(341, 'DUANE', 'SPORER', 'HEANEY', 'JPXJ243335MKWLUZ05', 'WLYS4746002SS', 1, '628.748.9015', 'frieda26@example.com', '23970', 13, 209, 56, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(342, 'CYNTHIA', 'CARTER', 'GORCZANY', 'SHFP217087HLVDJO70', 'EHQF382734MR3', 2, '+19866287816', 'hassan.emmerich@example.net', '13583', 4, 57, 115, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(343, 'ANNAMAE', 'WATSICA', 'WALKER', 'XUIK427311|TUZGN56', 'IVGT175378ALP', 2, '+1 (703) 201-8253', 'block.natalia@example.net', '38747', 3, 107, 103, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(344, 'CLARK', 'DIBBERT', 'KIHN', 'AQWR221134|MGXTD63', 'NXWJ62795044X', 2, '(940) 799-1887', 'breanna.abernathy@example.net', '54725', 2, 120, 208, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(345, 'DOMINIC', 'RAU', 'MOSCISKI', 'OMSI019644HCRIXU61', 'WIAY282666OQO', 1, '(910) 397-4679', 'kessler.maynard@example.org', '18600', 7, 181, 113, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(346, 'DONNA', 'KUHIC', 'WINDLER', 'OIDN702371|XGUBR73', 'GAHL486457AKZ', 1, '+16167973888', 'marisol48@example.com', '46871', 11, 93, 46, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(347, 'ADELLA', 'STOKES', 'TRANTOW', 'IIIC526729HKMQCJ85', 'MWAA0352821PO', 2, '+1-434-934-0107', 'jacky06@example.net', '33600', 11, 81, 156, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(348, 'REYNOLD', 'KSHLERIN', 'WALSH', 'MACN863937HSUZZE75', 'NXVB283308BEC', 1, '+1-689-280-4680', 'ebba.little@example.net', '54611', 13, 18, 74, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(349, 'MEGHAN', 'PAUCEK', 'HAHN', 'OXYI138405|TKKYT38', 'DQLW343316F82', 1, '(224) 590-4721', 'letha.thiel@example.net', '63937', 3, 152, 174, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(350, 'TAMARA', 'GOTTLIEB', 'FERRY', 'LBKT208268MKHNPD82', 'TWKB992796E4V', 1, '+1.351.591.4242', 'nhills@example.com', '62748', 7, 136, 111, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(351, 'NATALIE', 'WILLIAMSON', 'MOORE', 'BHPQ671797MYEMSJ84', 'KKEF381644MRL', 2, '1-631-872-7097', 'gulgowski.don@example.com', '59024', 1, 94, 137, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(352, 'EDWARDO', 'WITTING', 'SCHAEFER', 'JMDL220649|BFGFQ90', 'EFVK054792LF2', 2, '773-771-2718', 'hickle.beulah@example.com', '12135', 8, 3, 145, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(353, 'LERA', 'KERTZMANN', 'PROHASKA', 'QNAM064109MBXHNL66', 'XHVY31490753T', 1, '1-747-504-1868', 'pfeeney@example.com', '22299', 11, 45, 39, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(354, 'COBY', 'EMMERICH', 'BOGAN', 'SAFZ595035|EZGRH62', 'SFPA70454445S', 1, '+1 (337) 616-1821', 'kgrimes@example.net', '53489', 13, 96, 59, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(355, 'JAEDEN', 'BLOCK', 'BODE', 'JFXZ532534HPEHKI30', 'ZGGF160476WOF', 2, '1-207-696-9023', 'thoeger@example.org', '41118', 5, 195, 104, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(356, 'MICHAELA', 'HAMILL', 'KOCH', 'KYRA542955MQAVFE81', 'KHFW696591A0W', 2, '337.266.7481', 'fhuels@example.org', '64429', 13, 29, 167, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(357, 'JOHNATHON', 'ZIEME', 'KING', 'YRPG059401HUYGVL09', 'TEQP530099D56', 2, '1-352-984-2928', 'dante09@example.net', '23244', 12, 190, 48, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(358, 'IKE', 'SCHINNER', 'LEHNER', 'METZ552638MGNNGB95', 'EYFB702304IE0', 1, '1-580-873-5552', 'antwon12@example.com', '17573', 4, 207, 192, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(359, 'CLAIR', 'ZIEME', 'CASPER', 'XWRW147502MCRGUV57', 'WWYV660537A5I', 2, '+14693574145', 'melvin.huel@example.org', '14556', 1, 75, 12, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(360, 'AMARA', 'DICKINSON', 'STANTON', 'MMMT642708HYWCKG96', 'VCGQ427448EBS', 2, '+1-640-631-9840', 'maudie47@example.net', '64606', 12, 37, 164, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(361, 'ENOCH', 'VOLKMAN', 'MOSCISKI', 'BOIO608993|RSOVV59', 'GPIA699081IK0', 1, '+1-785-841-6727', 'bertrand.balistreri@example.com', '50758', 1, 98, 197, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(362, 'CARRIE', 'ABSHIRE', 'UPTON', 'VILL817007HOVMNJ02', 'XNGY421900EJD', 2, '+1 (938) 936-4541', 'kozey.marty@example.com', '57032', 4, 216, 96, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(363, 'LORENZ', 'SENGER', 'BEDNAR', 'CVLK180463MQJMNO37', 'AYDD53499206S', 2, '(641) 374-4194', 'eschmitt@example.net', '46460', 5, 48, 194, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(364, 'BUFORD', 'RUSSEL', 'ADAMS', 'YESH397177|SIYXV34', 'OPEU0341342DQ', 2, '484-833-6463', 'jordane58@example.org', '36973', 2, 110, 190, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(365, 'CARMEN', 'MOORE', 'DICKENS', 'SREK875071|FSTET28', 'TUIY444253GHF', 1, '380.617.5691', 'cblanda@example.com', '41827', 12, 179, 74, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(366, 'YADIRA', 'LITTLE', 'SENGER', 'OLFH100788|BEAUE98', 'LLGL2973281QQ', 2, '503.236.0585', 'uvon@example.org', '29931', 7, 88, 157, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(367, 'DEMARCO', 'SATTERFIELD', 'WILDERMAN', 'FNZV134752MJQRGS73', 'HGGX532630CV7', 1, '435-263-4178', 'georgette.champlin@example.org', '15306', 7, 12, 52, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(368, 'KAILEE', 'HAGENES', 'BORER', 'ZBPD134744HKVMGI03', 'QFBU552400SJC', 1, '+1-918-445-2459', 'felipa62@example.org', '64499', 8, 22, 76, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(369, 'SHELDON', 'GREENFELDER', 'HERMAN', 'OJIK178668|NMQXR25', 'SGZG322866D8T', 1, '+1-269-232-7050', 'plakin@example.com', '14072', 5, 9, 56, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(370, 'CALEB', 'ERDMAN', 'GRIMES', 'GTBK243538HUAMLW80', 'ECLD693578ZRJ', 2, '737-249-6038', 'belle.jacobson@example.net', '39841', 12, 181, 123, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(371, 'JOHATHAN', 'GERLACH', 'MORISSETTE', 'KNHF146997MEUBIC26', 'JNBJ7766380OX', 1, '(781) 642-2088', 'ada.dubuque@example.org', '37745', 13, 203, 50, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(372, 'JESSIE', 'SWIFT', 'CARTER', 'WMVT397327|BVKSH30', 'MIQL986591DGK', 2, '(561) 834-8067', 'qboyle@example.org', '39221', 2, 42, 95, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(373, 'ASIA', 'STROMAN', 'NICOLAS', 'OQWQ540185MYFQSZ08', 'YTPQ623179E24', 2, '+1.534.369.5744', 'kparker@example.net', '55844', 1, 224, 73, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(374, 'JALEN', 'HICKLE', 'PFEFFER', 'TBEA374991HBJJII92', 'BNBN7711921FJ', 2, '+1-332-502-0635', 'feil.raymond@example.com', '18173', 8, 56, 141, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(375, 'FORREST', 'WALSH', 'TURNER', 'QRCY591217MNCNFX68', 'RQMZ010748SY9', 2, '+1.667.530.3294', 'nathanael83@example.com', '41931', 6, 217, 40, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(376, 'VICTORIA', 'WINDLER', 'MAGGIO', 'PWFI366142HFMPJL08', 'GOJW010117NY0', 1, '+1-802-438-0566', 'marisol.krajcik@example.com', '40745', 7, 168, 134, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(377, 'HARMONY', 'LOWE', 'ROSENBAUM', 'IDDU346928|KZQLI27', 'VNTG777668D5C', 2, '(347) 991-9270', 'warren26@example.net', '22266', 5, 47, 216, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(379, 'DOMENICO', 'BREITENBERG', 'WEIMANN', 'CWAG585862MKJVGE03', 'EFRH491401W62', 2, '347.263.7886', 'ddietrich@example.net', '42142', 3, 216, 41, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(380, 'AMAYA', 'WILL', 'TILLMAN', 'YJSC124478HSXWTG36', 'ABWQ7835284P9', 2, '(316) 335-5276', 'hklocko@example.com', '25780', 13, 163, 29, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(381, 'JAMESON', 'KIHN', 'CONNELLY', 'SPRI880120HTWZEU86', 'AFZE498828LGS', 2, '+1.916.547.3812', 'rollin.bednar@example.com', '20713', 8, 28, 69, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(382, 'RHIANNON', 'LUEILWITZ', 'CASSIN', 'AAYA146364MNFCHY54', 'EKFC5417065W4', 1, '351-699-5489', 'norris67@example.com', '51154', 12, 22, 209, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(383, 'VLADIMIR', 'BORER', 'WOLFF', 'UYEQ480168HLBWFJ60', 'LXYL180840360', 2, '+1-973-779-0577', 'jkoelpin@example.net', '42053', 13, 47, 14, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(384, 'SHANNON', 'SPORER', 'MOSCISKI', 'VBBA979638|NYNNX76', 'EAOZ12555337R', 1, '843-278-1405', 'reynold92@example.net', '56449', 2, 26, 171, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(385, 'BENNIE', 'MERTZ', 'HETTINGER', 'BEQZ723572|OKMDU86', 'FOZS9155121TF', 1, '+1-225-348-0444', 'susie.mueller@example.net', '26093', 9, 125, 76, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(386, 'BLAKE', 'GRANT', 'RITCHIE', 'ZFEL432574MREDHR28', 'GAET433149PDD', 2, '513-915-9879', 'triston22@example.com', '44696', 3, 181, 41, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(387, 'ALVERTA', 'O\'KON', 'BASHIRIAN', 'KMXA039387MCYHNB83', 'XISR100756BW4', 2, '(865) 762-7566', 'chet72@example.com', '40271', 8, 195, 185, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(388, 'KATHARINA', 'WEST', 'KEELING', 'SMHA875113HKISVJ25', 'QSTE774320MZT', 2, '325-607-2042', 'green71@example.net', '16243', 2, 152, 192, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(389, 'VERNIE', 'ORTIZ', 'GORCZANY', 'TNRX621696|BENHY89', 'JIXT4226315H4', 2, '+12833475880', 'pouros.jayme@example.com', '46608', 10, 58, 78, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(390, 'VALENTINE', 'WEST', 'WARD', 'HFAM406186MFNPIX17', 'PCLF141427A97', 1, '+1.520.437.2485', 'prosacco.xzavier@example.com', '25552', 9, 4, 195, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(391, 'GEOVANNI', 'LARKIN', 'DICKI', 'TNAW072939HEJKNA48', 'FTGC1973692I5', 2, '1-832-327-7054', 'schulist.maya@example.org', '13587', 4, 57, 74, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(392, 'ODESSA', 'FLATLEY', 'EMARD', 'ZPFR358409MJWGZL45', 'ZIFZ112570ZI0', 2, '(516) 520-8583', 'pkuphal@example.org', '19932', 9, 55, 200, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(393, 'JAMISON', 'WALTER', 'LEGROS', 'XVIW765540HZNZMM94', 'TBIU6922271OF', 1, '+1-228-245-8537', 'mia06@example.org', '12556', 10, 40, 224, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(394, 'MAUD', 'GREENHOLT', 'HERZOG', 'OFCK422138MAMUSC29', 'TUJL099141PJ1', 2, '(463) 979-8827', 'gpfannerstill@example.org', '27195', 9, 68, 8, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(395, 'VIRGIE', 'HOMENICK', 'LUEILWITZ', 'DBPI698460MEKWLE78', 'FKTN29420667O', 1, '+1-606-935-9396', 'reina.feest@example.net', '60095', 9, 83, 131, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(396, 'JARON', 'LEGROS', 'PRICE', 'FSLW123584|LHCCE50', 'AJFE891551DLQ', 2, '956-591-9410', 'larson.brain@example.com', '43937', 9, 12, 16, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(397, 'LEANN', 'TREMBLAY', 'MURAZIK', 'YDUL548827MQYPLT65', 'HCZH953361I0I', 2, '907-742-8427', 'josephine.kiehn@example.com', '36741', 3, 205, 44, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(398, 'DAHLIA', 'PADBERG', 'TROMP', 'GBCX628373MHJVYW18', 'UIJG8587584N2', 1, '(661) 490-5653', 'mcdermott.brooke@example.net', '50505', 8, 64, 62, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(399, 'JUANA', 'LEHNER', 'KIRLIN', 'ZBTX738420|IQMXX96', 'QGPX830449BDP', 2, '1-208-628-6410', 'collins.christophe@example.net', '64434', 11, 14, 164, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(400, 'KENYON', 'SANFORD', 'GREENHOLT', 'TKPP252541HLFJPF15', 'MWKB4205867SB', 2, '+13514294442', 'general.strosin@example.org', '43197', 1, 161, 10, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(401, 'AMERICO', 'BOTSFORD', 'POLLICH', 'AAMQ582026|BJNTF24', 'ILZI8071759F8', 2, '828.974.9903', 'jast.rudolph@example.org', '27695', 10, 11, 37, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(402, 'JOHANNA', 'TURNER', 'LESCH', 'BJTX845802|VOKYU09', 'QAHO620815G0U', 1, '269.906.3627', 'gboyer@example.com', '62058', 12, 147, 173, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(403, 'MITTIE', 'KULAS', 'HERMAN', 'QTJH621658MQNKQV38', 'UFXZ7318409R8', 2, '+1-872-526-6592', 'hstoltenberg@example.org', '61368', 13, 172, 81, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(404, 'JUDD', 'KULAS', 'HACKETT', 'FXGR328743MTIUZZ25', 'ELQL165215YF3', 1, '+1-984-727-9213', 'djerde@example.org', '38293', 11, 97, 185, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(405, 'CAITLYN', 'STAMM', 'MORAR', 'OTML981765HMYRDK28', 'AEXW9533773VB', 2, '754-797-5060', 'celestino01@example.net', '15754', 2, 50, 27, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(406, 'MITCHELL', 'DUBUQUE', 'TREUTEL', 'PEXR097941HFLPPM84', 'USEU299153A4L', 2, '+1-248-233-9007', 'carlotta80@example.org', '14518', 12, 116, 13, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(407, 'ROXANNE', 'MURPHY', 'ABSHIRE', 'HHPF362664|QHIFT16', 'WPUD541035EIN', 2, '1-929-715-1305', 'aniya.wintheiser@example.org', '47551', 6, 217, 88, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(408, 'ROSENDO', 'LOCKMAN', 'YUNDT', 'UBSB134411HLVTQV04', 'UMOQ480155C8H', 1, '724-383-4598', 'clint.runte@example.net', '36582', 6, 58, 85, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(409, 'MAVERICK', 'KONOPELSKI', 'KUB', 'VALP956524MDZQMI87', 'AKVY835318JY2', 1, '+1.413.230.4394', 'fparker@example.org', '45094', 11, 87, 177, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(410, 'CHADRICK', 'RICE', 'HARTMANN', 'NQFP788560HOUVBR94', 'WNID591893HPG', 1, '+1-719-271-6352', 'domingo65@example.com', '42746', 13, 222, 57, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(411, 'ELLIOT', 'GUTKOWSKI', 'RUNOLFSDOTTIR', 'ULSL606286HJEUWA23', 'JJJT382994FFB', 1, '408.931.5085', 'lemuel.daniel@example.org', '49239', 4, 148, 28, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(412, 'KOLBY', 'ZULAUF', 'FEEST', 'SWEO825281HRDRNY77', 'NYKV075238Q8X', 1, '260.419.8995', 'rudolph23@example.net', '41820', 9, 143, 90, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(413, 'WAINO', 'REICHEL', 'BEIER', 'MLHM193062MDIWCV48', 'ITQH276974CF3', 2, '1-406-223-0150', 'lehner.mack@example.com', '33469', 10, 12, 194, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(414, 'JOANA', 'STAMM', 'ARMSTRONG', 'YZGZ697712HCDRUE04', 'QWJJ410451HLE', 1, '(775) 905-9254', 'kelvin.kiehn@example.org', '20376', 4, 56, 155, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(415, 'MABEL', 'NITZSCHE', 'HICKLE', 'XBKV122974HYHMOO66', 'QLKT2208450HV', 1, '+1.260.498.4301', 'lconroy@example.com', '27658', 10, 225, 46, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(416, 'RYANN', 'JONES', 'KOELPIN', 'YIHD074533|JFLAN49', 'UUYH023305WBJ', 2, '+1.361.792.5073', 'alisha.corkery@example.net', '37001', 3, 149, 132, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(417, 'STEPHON', 'MRAZ', 'SCHOEN', 'PMBL290797|XNBZM63', 'EOLS905897TGR', 2, '+1-973-763-9631', 'josianne.kunde@example.com', '64157', 11, 114, 10, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(418, 'CLEMENT', 'GLOVER', 'MCLAUGHLIN', 'UXPE793558HYQOLA71', 'NSCI268973ATC', 2, '845-515-6418', 'mcdermott.camila@example.net', '15778', 12, 205, 186, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(419, 'LEONOR', 'VONRUEDEN', 'AUER', 'FPVX611703MBAJVC10', 'QRRF3148026YG', 1, '504-565-0252', 'mckenzie.nolan@example.com', '60716', 6, 90, 215, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(420, 'ETHAN', 'TREMBLAY', 'KRAJCIK', 'YYTW793201HYHKKJ42', 'KMOY013897C68', 2, '(810) 384-5075', 'billy47@example.org', '45460', 6, 171, 62, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(421, 'EDNA', 'JAKUBOWSKI', 'HESSEL', 'EXGP810309MXVDIE66', 'HYSX513032BCY', 1, '304.507.2948', 'ondricka.jasen@example.net', '59568', 4, 112, 75, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(422, 'ERIN', 'HILL', 'LARKIN', 'YALG035494MCDQBO63', 'UVWQ1544065K1', 2, '+18102918295', 'zbernhard@example.com', '48945', 13, 80, 191, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(423, 'JESUS', 'CRONIN', 'RAYNOR', 'OMCF832737HKICDK27', 'BGBV671634DT2', 2, '1-516-503-1724', 'jerald.lynch@example.com', '28719', 2, 92, 51, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(424, 'URBAN', 'TREUTEL', 'KOZEY', 'HNFV654779MIBWRI32', 'FYBL2972227SG', 1, '228.382.9647', 'aeichmann@example.net', '33664', 7, 140, 172, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(425, 'ARDELLA', 'KIHN', 'PACOCHA', 'EUOA886484|HAOPT78', 'QFNJ673509M6G', 2, '+19786959130', 'carmela59@example.org', '49743', 3, 43, 60, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(426, 'BERNARDO', 'KOVACEK', 'LANGWORTH', 'OKJU395733MBNNFT00', 'DBBX23095149P', 2, '(240) 774-3544', 'bradly52@example.com', '24496', 1, 81, 206, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(427, 'EMMANUELLE', 'JAKUBOWSKI', 'NITZSCHE', 'SBIP039274MWFMKP81', 'ZDMU8161197BV', 2, '+17725387971', 'deshaun32@example.com', '63904', 11, 42, 65, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(428, 'DONAVON', 'BOTSFORD', 'SCHINNER', 'WZDT521094MKGGNA39', 'DPIS640425AQD', 2, '(475) 867-3158', 'mherzog@example.net', '51253', 2, 221, 173, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(429, 'DANNY', 'LEUSCHKE', 'WHITE', 'OVXX791583MIULFK55', 'XJER296143OZE', 2, '(534) 856-5280', 'paul49@example.org', '52016', 11, 204, 84, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(430, 'CITLALLI', 'MOEN', 'WYMAN', 'PDGG100462MMWQHQ30', 'KGCV688587WG4', 1, '(952) 778-4139', 'ellsworth42@example.com', '21027', 5, 78, 25, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(431, 'EMILIANO', 'DANIEL', 'WILLIAMSON', 'RTTW674349MSUSFH32', 'GHTI5450479D5', 2, '(979) 235-9591', 'destini03@example.org', '37911', 7, 12, 67, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(432, 'ROLLIN', 'TROMP', 'GOYETTE', 'VJNK288852|JLUYL20', 'SXXR358446N7H', 1, '1-301-671-0838', 'kassulke.kayden@example.com', '44567', 8, 61, 187, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(433, 'TOY', 'JACOBI', 'TURCOTTE', 'NZWY972019|CZKCY80', 'YPGH401755Q1S', 1, '+1.919.287.4095', 'twalsh@example.com', '29831', 1, 162, 172, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(434, 'VEDA', 'WEST', 'BERGSTROM', 'VCBY025312|UDSNZ37', 'OMYV105250YEP', 2, '+1.530.725.5209', 'romaguera.toy@example.net', '15292', 11, 217, 87, '2023-06-06 03:20:15', '2023-06-06 03:20:15'),
(435, 'PEGGIE', 'HERMAN', 'BREITENBERG', 'TOVK532823HQBCQK11', 'IGSE178144LUP', 2, '831-586-7761', 'scassin@example.org', '38758', 1, 6, 47, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(436, 'FREDA', 'KOHLER', 'WUCKERT', 'VNII729682MRFZZJ77', 'JXHG624236D3M', 1, '+17858082159', 'aleen.harber@example.org', '12020', 4, 136, 199, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(437, 'SHERWOOD', 'OBERBRUNNER', 'SWANIAWSKI', 'OBNK049457MLGKUB72', 'TXZO458670RAK', 1, '520.437.6611', 'gianni.reilly@example.org', '42793', 12, 223, 138, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(438, 'ULISES', 'SCHOWALTER', 'HELLER', 'CZCI958023MXSGSG31', 'PGRA0212700W3', 2, '910-665-5200', 'nanderson@example.com', '33345', 8, 84, 140, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(439, 'LLEWELLYN', 'UPTON', 'OBERBRUNNER', 'TPUC228145HESSIU85', 'HKSR5510663GW', 1, '+1-970-591-4571', 'king.eudora@example.org', '46040', 13, 152, 94, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(440, 'ELIAS', 'SCHILLER', 'PFEFFER', 'HOKP238663|CUHXI28', 'FXFW010411VR6', 1, '1-754-723-7419', 'jedediah76@example.com', '14487', 5, 203, 145, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(441, 'IMOGENE', 'LAKIN', 'SHIELDS', 'UFBH460123HTQONW66', 'ZGAS372051HA5', 2, '+13805249749', 'fbernier@example.org', '27023', 12, 126, 123, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(442, 'ROSIE', 'MANTE', 'BORER', 'KAQT151476|PYTSD12', 'FZBW906291X7I', 1, '831-285-9030', 'eeichmann@example.org', '20786', 13, 44, 179, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(443, 'CHRISTINA', 'KLOCKO', 'HELLER', 'ZTDU960628|LKRDE61', 'EYWH089377U1G', 1, '380.822.6981', 'osinski.walter@example.org', '28011', 1, 84, 127, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(444, 'KEITH', 'QUITZON', 'SMITHAM', 'QUBQ187283HWUYTC65', 'NCFZ307308I9K', 1, '1-689-646-3419', 'rupert33@example.net', '63200', 10, 208, 141, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(445, 'CLARK', 'KULAS', 'KUHIC', 'PPNE773192HSXROW13', 'FCCO1298790VL', 2, '+1-562-286-2068', 'kmurphy@example.com', '64637', 1, 108, 164, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(446, 'ORIE', 'BEATTY', 'WEISSNAT', 'NQVL657079HGJHDE31', 'EAKG135199MRM', 2, '+1-941-607-8961', 'abel26@example.net', '25887', 11, 213, 78, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(447, 'DEONTE', 'DONNELLY', 'DICKINSON', 'ARTY223302HDISFF46', 'TOAL606241MR4', 2, '517.629.1891', 'tschneider@example.com', '59328', 11, 67, 134, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(448, 'ANTOINETTE', 'TROMP', 'ROLFSON', 'VRTZ062710|TXVXA39', 'OBUO416082W0J', 1, '720-782-6877', 'ed23@example.net', '29092', 1, 63, 40, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(449, 'JEANETTE', 'LITTLE', 'KOZEY', 'HPZK217622HEYGRJ67', 'ISKD9240543MM', 2, '1-540-313-7856', 'clinton.kutch@example.org', '29408', 10, 20, 83, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(450, 'MIKEL', 'COLLINS', 'GLOVER', 'INPD528622MCYIYU93', 'PGAO344415SGO', 2, '+1-986-532-1156', 'xmcclure@example.net', '34689', 8, 62, 14, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(451, 'LAURENCE', 'REYNOLDS', 'STEUBER', 'EGXC029805MUHMME12', 'FVWL691065B03', 1, '(321) 675-8924', 'jthompson@example.net', '64694', 8, 224, 136, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(452, 'WILBURN', 'VEUM', 'SCHMITT', 'LGMJ274515HQLVNE09', 'OSIL307684IOI', 1, '+1 (541) 744-5005', 'pcremin@example.com', '41421', 3, 180, 52, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(453, 'CHRIST', 'POLLICH', 'POUROS', 'WSTU548808|NMSHB48', 'IBOR195483RW3', 1, '+1 (410) 804-5567', 'mills.deborah@example.net', '38029', 2, 35, 173, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(454, 'NOAH', 'HIRTHE', 'ROSENBAUM', 'UXYK266014|ERYKI75', 'SWQT3110339CF', 1, '+18387036354', 'jonathon.heaney@example.net', '31531', 4, 52, 197, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(455, 'REBEKAH', 'LESCH', 'SCHINNER', 'DKYK484871HHSIWF18', 'NXTB103315Z41', 1, '+1-580-538-8856', 'rey12@example.com', '36998', 3, 134, 16, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(456, 'NAKIA', 'EMARD', 'WUNSCH', 'MZDH780830MTOHVL70', 'QSKU348009WYB', 2, '(352) 273-3489', 'mayer.eduardo@example.org', '56700', 2, 68, 76, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(457, 'DEMARCO', 'HILL', 'AUFDERHAR', 'ECFM148999MNXOUI02', 'GOWN239426WUD', 1, '1-724-203-7561', 'ziemann.hettie@example.com', '14952', 7, 100, 104, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(458, 'DIMITRI', 'KOVACEK', 'GAYLORD', 'VQSR524984MHQEEA38', 'IALI938797HAY', 1, '435-713-7460', 'ogerhold@example.com', '44679', 5, 94, 76, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(459, 'WYMAN', 'SCHUMM', 'FEENEY', 'IZLW768042|IYZVC43', 'ASWN283510AVS', 1, '564-283-4627', 'lawrence.schultz@example.net', '43642', 11, 150, 212, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(460, 'DELANEY', 'LARKIN', 'PFEFFER', 'EWBX722055MTQUOL62', 'ULFC759105ANP', 2, '(715) 245-2326', 'rowena.schoen@example.net', '61541', 3, 207, 73, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(461, 'WADE', 'NITZSCHE', 'POUROS', 'WXBF467494|ZHBGE89', 'NWTV748806HR1', 1, '+1 (903) 531-1118', 'zackary64@example.org', '14800', 10, 192, 212, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(462, 'MAKENNA', 'SPINKA', 'BUCKRIDGE', 'FAWD172608|SJWMD24', 'RMQR288998N7A', 2, '+1-820-369-1744', 'bennett.okon@example.com', '25312', 3, 225, 12, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(463, 'KEON', 'MARQUARDT', 'RICE', 'YGYC597200HXWNSJ21', 'EJYH6984227WI', 2, '+16807030649', 'angela.yundt@example.org', '14565', 11, 55, 173, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(464, 'CALLIE', 'MANN', 'CORWIN', 'XIHL673862MICGEA16', 'GYMO134159Q78', 2, '(234) 951-3282', 'jstark@example.org', '44560', 7, 200, 211, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(465, 'KEANU', 'STIEDEMANN', 'SAUER', 'DYMP067973|PDWGY35', 'ZGCB879054VT5', 2, '210-397-6601', 'fglover@example.com', '33388', 3, 37, 125, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(466, 'LETA', 'SCHULIST', 'SMITH', 'TKWM479929MAFNAK16', 'PGIQ590450BCI', 1, '678-621-6624', 'cmills@example.net', '34970', 9, 132, 61, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(467, 'GROVER', 'JACOBS', 'POWLOWSKI', 'SIFA344657HUNDCW53', 'FAAR5131866R6', 2, '520-284-5853', 'kpacocha@example.com', '45846', 11, 8, 187, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(468, 'MISTY', 'DIBBERT', 'O\'CONNELL', 'QFUC928383|XIOUG01', 'ZJQW185529OC6', 1, '509-950-8037', 'bthompson@example.net', '62454', 11, 42, 40, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(469, 'CONOR', 'WINDLER', 'MCCULLOUGH', 'VOXZ374562HSRQAX57', 'NQSD069122R6N', 1, '+1-563-618-8434', 'obrown@example.org', '35752', 4, 164, 109, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(470, 'KELSI', 'HANSEN', 'HARRIS', 'UWZW440593MAQFWM62', 'MLBI974116RNG', 1, '+1-518-517-1832', 'liza45@example.net', '25413', 12, 154, 66, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(471, 'HELGA', 'HILPERT', 'STROMAN', 'TATO978640HDBOLH44', 'AEBK7016138TH', 2, '+1-425-570-8645', 'kreiger.major@example.com', '57204', 12, 129, 158, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(472, 'IZAIAH', 'SCHOWALTER', 'ROLFSON', 'NMCI209816HLWZBU96', 'JNAU5217664AK', 1, '1-971-695-3421', 'gleason.allene@example.net', '30226', 11, 97, 108, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(473, 'GONZALO', 'MILLER', 'MANN', 'BQUZ151920|THJJU82', 'MDNX2064125S6', 2, '+1.424.484.4682', 'geo72@example.org', '53822', 10, 73, 63, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(474, 'ELIJAH', 'FERRY', 'TOWNE', 'ETGJ161190MEYESU70', 'IDBN233023TPX', 1, '1-434-824-9070', 'xberge@example.net', '12622', 10, 100, 45, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(475, 'LOREN', 'BECKER', 'BORER', 'LFME684891|YPGFV36', 'BVIT181736MP0', 1, '1-651-504-5602', 'jerel.runolfsson@example.net', '63060', 10, 101, 72, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(476, 'EILEEN', 'GREENFELDER', 'TOY', 'VIUM661253MREKLL87', 'ZHNI102925WTG', 1, '+13217788963', 'gislason.fatima@example.com', '16673', 4, 116, 113, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(477, 'CECILIA', 'CRIST', 'BLANDA', 'KQKJ722737|FYDJB31', 'ZTPF279709JBT', 2, '1-434-627-7378', 'agustina43@example.org', '34607', 10, 127, 30, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(478, 'PERRY', 'PFANNERSTILL', 'LANGOSH', 'WELM637786HYQKXO72', 'WNGO5243112WN', 2, '1-580-353-0198', 'theodore37@example.org', '60899', 2, 211, 91, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(479, 'AUBREY', 'HYATT', 'CONROY', 'JDRH584498|VMTDZ71', 'QFRF921421O6B', 1, '(678) 773-9732', 'casimir05@example.com', '44742', 12, 34, 12, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(480, 'DUANE', 'MOHR', 'GORCZANY', 'AJMK655322HPWTVF25', 'XLAT516202XJQ', 2, '725.206.6067', 'tavares.romaguera@example.net', '38911', 5, 73, 80, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(481, 'DELPHA', 'DICKENS', 'WOLFF', 'UQUB177622|PFNCN16', 'PYRG218459PMG', 2, '+1 (737) 240-7742', 'emelia73@example.com', '54092', 4, 105, 76, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(482, 'LOUVENIA', 'CORWIN', 'NOLAN', 'TZBG281240|DLYQH84', 'PMXG305711CW1', 2, '+1 (757) 556-7740', 'letitia.ryan@example.org', '63714', 2, 109, 94, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(483, 'PASQUALE', 'STARK', 'ROGAHN', 'WXRJ535119HUOFKV79', 'DTNJ2178755ZA', 2, '680.373.7455', 'craig.ledner@example.net', '41540', 2, 119, 10, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(484, 'MATHIAS', 'HAND', 'VANDERVORT', 'SHSE212131MJLAQT51', 'UMLX058853KNT', 2, '417-957-3745', 'senger.kraig@example.com', '58146', 1, 118, 190, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(485, 'BRIDGET', 'QUITZON', 'DACH', 'ALOA554450HMPYQD28', 'IXYM765073UPN', 2, '+1-707-705-7623', 'narciso01@example.com', '56512', 3, 92, 26, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(486, 'ELEONORE', 'WALTER', 'HOMENICK', 'AVQO104812MNSRYA37', 'DBCF5128780X7', 2, '+13104314721', 'kian10@example.net', '34081', 5, 128, 155, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(487, 'DOMENIC', 'WOLFF', 'SIMONIS', 'SHRD652962MHXGID47', 'NTXW16783463H', 2, '+1-281-352-6489', 'jena77@example.org', '17534', 4, 116, 109, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(488, 'REY', 'MAYERT', 'HUDSON', 'UKTL977828|EAUEB78', 'PVGT3374832O6', 2, '850.443.1945', 'alexanne.wilkinson@example.org', '15904', 3, 161, 152, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(489, 'JEREL', 'WUCKERT', 'KOEPP', 'TSHJ777467HTBKEI38', 'ZKSQ529536DJB', 1, '+1 (347) 426-1697', 'joshuah.boehm@example.org', '40819', 13, 55, 101, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(490, 'KENDALL', 'SANFORD', 'PURDY', 'GVMD266096|GIHQK21', 'IJDZ482693NNW', 1, '937.400.4467', 'percy.torp@example.org', '64082', 10, 152, 52, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(491, 'CRAWFORD', 'SAWAYN', 'KILBACK', 'ACHS128415MHWDNZ50', 'RLOG394186HF2', 2, '1-862-652-0342', 'zstreich@example.net', '35094', 3, 59, 91, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(492, 'MYRL', 'D\'AMORE', 'HAYES', 'KMXR298266HAYEHI39', 'JDYA259927AO1', 1, '318.793.9933', 'kpollich@example.org', '21052', 11, 147, 9, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(493, 'VALENTINE', 'LITTLE', 'MCGLYNN', 'QXXA445914MCITNM48', 'MBOX2434650GV', 1, '1-984-559-7386', 'kaden.friesen@example.org', '21795', 1, 59, 111, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(494, 'RETA', 'MACEJKOVIC', 'LUEILWITZ', 'DFRJ200742MPZHCO13', 'YXPN5166888EL', 2, '+1-979-362-4771', 'sanford.keeling@example.com', '42339', 3, 27, 156, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(495, 'RHETT', 'MILLS', 'FADEL', 'PATM346536|XLAIZ00', 'VOCM058461VQ1', 2, '1-781-789-2017', 'llockman@example.org', '26673', 8, 122, 180, '2023-06-06 03:20:16', '2023-06-06 03:20:16'),
(499, 'JAVIER', 'IBARRA', 'LOPEZ', 'JAVI1221', 'JAVI1221', 2, '2263265898', 'javi@email.com', '659854', 4, 242, 226, '2023-06-08 00:08:35', '2023-06-08 00:08:35'),
(500, 'ISRAEL', 'HERRERA', 'MARTINEZ', 'ISRA2121', 'ISRA2121', 2, '9856598587', 'isra@example.com', '12345', 1, 242, 226, '2023-06-08 00:09:24', '2023-06-08 00:22:49'),
(501, 'FIDEL', 'PABLO', 'MOLINA', 'FPABLOM1212', 'FPABLOM1212', 2, '5412548745', 'fpablom@email.com', '123453', 2, 242, 226, '2023-06-08 00:17:17', '2023-06-08 02:20:27'),
(503, 'ALEXA', 'MARTINEZ', 'AVILA', 'ALE12', 'ALE12', 1, '6596587458', 'ale@serv.net', '32658', 1, 242, 19, '2023-06-08 00:54:55', '2023-06-08 02:23:00'),
(504, 'DANNAE 23', 'MARTINEZ', 'AVILA', 'DANA21', 'DANA21', 1, '8545874587', 'danae@example.com', '2655', 1, 242, 19, '2023-06-08 00:56:57', '2023-06-08 02:31:24'),
(506, 'ROSA', 'DOMINGUEZ', 'DE LA MERCED', 'ROSA12', 'ROSA12', 1, '3215648548', 'rosa@email.com', '58427', 4, 5, 227, '2023-06-08 02:34:33', '2023-06-08 02:34:33'),
(507, 'DULCE', 'DOMINGUEZ', 'DE LA MERCED', 'DULCE12', 'DULCE12', 1, '5214585487', 'dulce@email.com', '45854', 2, 5, 227, '2023-06-08 02:35:15', '2023-06-08 02:42:11'),
(508, 'HUGO', 'DOMINGUEZ', 'DE LA MERCED', 'HUGO12', 'HUGO12', 2, '4521585967', 'hugo@email.com', '52658', 3, 5, 227, '2023-06-08 02:35:54', '2023-06-08 02:35:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delegaciones`
--
ALTER TABLE `delegaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delegaciones_delegacion_unique` (`delegacion`),
  ADD KEY `delegaciones_id_region_foreign` (`id_region`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_delegacion_foreign` (`id_delegacion`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_npersonal_unique` (`npersonal`),
  ADD KEY `usuario_id_genero_foreign` (`id_genero`),
  ADD KEY `usuario_id_nivel_foreign` (`id_nivel`),
  ADD KEY `usuario_id_delegacion_foreign` (`id_delegacion`),
  ADD KEY `usuario_id_users_foreign` (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delegaciones`
--
ALTER TABLE `delegaciones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delegaciones`
--
ALTER TABLE `delegaciones`
  ADD CONSTRAINT `delegaciones_id_region_foreign` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_delegacion_foreign` FOREIGN KEY (`id_delegacion`) REFERENCES `delegaciones` (`id`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_id_delegacion_foreign` FOREIGN KEY (`id_delegacion`) REFERENCES `delegaciones` (`id`),
  ADD CONSTRAINT `usuario_id_genero_foreign` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `usuario_id_nivel_foreign` FOREIGN KEY (`id_nivel`) REFERENCES `niveles` (`id`),
  ADD CONSTRAINT `usuario_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
