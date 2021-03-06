-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2019 a las 05:35:21
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_documento_abono`
--

CREATE TABLE `partida_documento_abono` (
  `id` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_tipo_movimiento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero` int(11) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `descricion` varchar(225) NOT NULL,
  `stat` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_partida_documento` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL,
  `id_unico_insert` varchar(25) NOT NULL,
  `id_chequera` int(11) NOT NULL,
  `beneficiario` varchar(50) NOT NULL,
  `numero_cheque` int(11) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `fecha_background` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partida_documento_abono`
--

INSERT INTO `partida_documento_abono` (`id`, `id_cuenta`, `id_tipo_movimiento`, `fecha`, `numero`, `monto`, `descricion`, `stat`, `id_proveedor`, `id_partida_documento`, `id_partida`, `id_proyecto`, `id_unico_insert`, `id_chequera`, `beneficiario`, `numero_cheque`, `referencia`, `fecha_background`) VALUES
(138, 8, 8, '2018-01-05', 1, '100.00', 'PRUEBA', 14, 4103, 177, 1731, 8, '', 7, 'NEIRA POLO', 201, '', '2018-01-05 18:10:49'),
(139, 8, 8, '2018-01-10', 1, '50.00', 'CAJA MENUDA', 14, 4140, 181, 1826, 8, '', 7, 'CAJA MENUDA', 202, '', '2018-01-11 03:04:31'),
(140, 8, 8, '2018-01-11', 2, '10.00', 'CAJA MENUDA', 14, 4140, 181, 1826, 8, '', 7, 'CAJA MENUDA', 203, '', '2018-01-11 21:50:36'),
(150, 8, 8, '2018-01-24', 3, '1.00', 'CAJA MENUDA', 14, 4140, 181, 1826, 8, '', 7, 'CAJA MENUDA', 204, '', '2018-01-24 15:31:17'),
(381, 8, 0, '2018-03-02', 1, '2.00', 'ES-403 / MTTO MARZO 2018', 14, 5688, 185, 1943, 8, '', 7, 'PH ALTAMIRA GARDENS ', 0, '', '2018-03-02 22:16:19'),
(382, 8, 8, '2018-03-02', 2, '2.00', 'ES-403 / MTTO MARZO 2018', 14, 5688, 185, 1943, 8, '', 7, 'PH ALTAMIRA GARDENS ', 221, '', '2018-03-02 22:23:13'),
(423, 8, 8, '2018-01-08', 1, '525.00', ' HONORARIOS  PROFESIONALES   2018 MES DE NOV', 14, 5774, 418, 1822, 8, '', 7, 'MARIBEL GUTIERRE', 3677, '', '2018-03-23 16:42:40'),
(425, 8, 8, '2018-01-11', 1, '531.26', 'I.T.B.M. DICIEMBRE  2018 CALPE PROPERTIES', 14, 5777, 420, 1817, 8, '', 7, 'TESORO NACIONAL 2312244-1-791695 DV 28', 3680, '', '2018-03-23 17:20:52'),
(426, 8, 8, '2018-01-03', 1, '3019.29', 'REEMBOLSO  LOCAL 6  CRYSTAL  AGOSTO Y SEPTIEMBRE  2017', 14, 5778, 421, 1937, 8, '', 7, 'FELIPPO TURLI', 3681, '', '2018-03-23 17:28:52'),
(427, 8, 8, '2018-01-05', 1, '4000.00', '  PLANILLA  SALARIO ENERO  2018', 14, 5779, 422, 2015, 8, '', 7, 'ROSALDA PETTI', 3682, '', '2018-03-23 18:26:54'),
(428, 8, 8, '2018-01-05', 1, '1150.00', 'REEMBOLSO ALQUILER  AE-505 ENERO 2018\r\n', 14, 5776, 423, 2349, 8, '', 7, 'JPG', 3683, '', '2018-03-23 18:31:48'),
(429, 8, 8, '2018-01-05', 1, '396.00', 'MANTENIMIENTO AE-105  ENERO + RECARGO 2018', 16, 5690, 187, 1775, 8, '', 7, 'RAMON MARIÃ‘O', 3684, '', '2018-03-23 18:37:07'),
(430, 8, 8, '2018-01-05', 1, '396.00', 'REEMBOLSO AE-105    ENERO 2017', 14, 5690, 186, 1775, 8, '', 7, 'RAMON MARIÃ‘O', 3684, '', '2018-03-23 18:48:13'),
(431, 8, 8, '2018-01-05', 2, '1188.00', 'MANTENIMIENTO AE-105   FEBRERO  MARZO  ABRIL  MÃS  RECARGO 2017', 14, 5690, 186, 1775, 8, '', 7, 'RAMON MARIÃ‘O', 3685, '', '2018-03-23 18:49:50'),
(432, 8, 8, '2018-01-08', 1, '750.00', 'PLANILLA SALARIOS I ENERO', 14, 5773, 425, 2015, 8, '', 7, 'ANA CAROLINA FELIZOLA', 3687, '', '2018-03-23 20:11:23'),
(433, 8, 8, '2018-01-08', 1, '400.00', 'PLANILLA SALARIO    ENERO A  DICIEMBRE 2018', 14, 5698, 426, 2015, 8, '', 7, 'JESSICA LOPEZ', 3688, '', '2018-03-23 20:22:59'),
(434, 8, 8, '2018-01-08', 1, '428.49', 'PLANILLA  SALARIO  ENERO A DIC 2018', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3689, '', '2018-03-23 20:31:33'),
(435, 8, 8, '2018-01-10', 1, '1100.00', 'REEMBOLSO  BE-201  ENERO 2018', 14, 5775, 428, 1930, 8, '', 7, 'HENSA', 3690, '', '2018-03-23 20:38:20'),
(436, 8, 8, '2018-01-10', 1, '509.00', 'REEMBOLSO   LOCAL 9  PLAZA CANAIMA   ENERO 2018', 14, 5782, 429, 1940, 8, '', 7, 'WONG SHUI YUN', 3691, '', '2018-03-23 20:58:51'),
(437, 8, 8, '2018-03-23', 1, '700.00', ' MANTENIMIENTO   LOCAL 9/ LOCAL 17/ LOCAL 18/ LOCAL 18 MES DE  ENERO 2018\r\nPH PLAZA COMERCIAL CANAIMA', 14, 5782, 430, 1852, 8, '', 7, 'WONG SHUI YUN', 3692, '', '2018-03-23 21:04:28'),
(438, 8, 8, '2018-01-10', 1, '855.00', 'REEMBOLSO   ALQUILER  EN -405  ENERO 2018 ', 14, 5696, 431, 1933, 8, '', 7, 'MILAGROS RODRIGUEZ', 3693, '', '2018-03-23 21:47:34'),
(439, 8, 8, '2018-01-10', 1, '1337.50', 'REEMBOLSO  LOCAL 24 CRYSTAL  DICIEMBRE 2017', 14, 5775, 432, 2350, 8, '', 7, 'HENSA', 3694, '', '2018-03-23 21:53:35'),
(440, 8, 8, '2018-01-10', 1, '1337.50', 'REEMBOLSO LOCAL 24  DICIEMBRE 2017', 14, 5776, 433, 2349, 8, '', 7, 'JPG', 3695, '', '2018-03-23 21:54:09'),
(441, 8, 8, '2018-01-10', 1, '943.00', ' REEMBOLSO DO-301  ENERO 2018', 14, 5693, 434, 1936, 8, '', 7, 'GUILLERMO CORTEZ', 3696, '', '2018-03-23 21:59:26'),
(443, 8, 8, '2018-01-10', 1, '300.00', 'DO-202 /  DICIEMBRE 2017 Y ENERO 2018', 14, 5693, 212, 1783, 8, '', 7, 'GUILLERMO CORTEZ', 3699, '', '2018-03-26 14:34:30'),
(444, 8, 8, '2018-01-11', 1, '1419.00', 'REEMBOLSO ALQ LOCAL 23 CRYSTAL ENERO 2018', 14, 5775, 437, 2350, 8, '', 7, 'HENSA', 3705, '', '2018-03-26 14:44:15'),
(445, 8, 8, '2018-01-11', 1, '1872.50', 'REEMBOLSO ALQ  LOCAL 01 Y 02  DE  PLAZA  CANAIMA   ENERO  2018', 14, 5775, 438, 2350, 8, '', 7, 'HENSA', 3707, '', '2018-03-26 14:53:51'),
(446, 8, 8, '2018-01-11', 1, '224.00', 'MANTENIMIENTO   ES-403 DICIEMBRE ', 14, 5691, 439, 1943, 8, '', 7, 'NORAIMA HERNANDEZ', 3709, '', '2018-03-26 15:13:48'),
(447, 8, 8, '2018-01-11', 1, '971.30', 'REEMBOLSO ALQ ES-403 ENERO 2018', 14, 5691, 440, 2351, 8, '', 7, 'NORAIMA HERNANDEZ', 3712, '', '2018-03-26 15:27:09'),
(448, 8, 8, '2018-01-11', 1, '1150.00', 'REEMBOLSO  LOCAL 22 CRYSTAL   ENERO 2018', 14, 5776, 441, 2349, 8, '', 7, 'JPG', 3713, '', '2018-03-26 15:34:27'),
(449, 8, 8, '2018-01-11', 2, '189.96', 'PLANILLA  SALARIO  PRÃ‰STAMO  BANESCO ', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3714, '', '2018-03-26 15:36:24'),
(450, 8, 8, '2018-01-11', 1, '507.46', ' PLANILLA   IERA QUINCENA  DE ENERO 2018', 14, 5784, 442, 2015, 8, '', 7, 'YARISEL SANCHEZ', 3715, '', '2018-03-26 15:50:33'),
(451, 8, 8, '2018-01-01', 1, '11234.06', 'REEMBOLSO ALQ  LOCALES CRYSTAL \r\n 09/ NOV Y DIC\r\n 10/ NOV Y DIC \r\n 11/NOV Y DIC', 14, 5785, 443, 2358, 8, '', 7, 'GS VENTAS, S.A.', 3716, '', '2018-03-26 16:31:33'),
(452, 8, 8, '2018-01-01', 1, '1050.85', 'MANTENIMIENTO  LOCALES  CRYSTAL 09/10/11 ENERO 2018 ', 14, 5785, 444, 2355, 8, '', 7, 'GS VENTAS, S.A.', 3717, '', '2018-03-26 16:55:02'),
(453, 8, 8, '2018-01-10', 1, '250.00', 'MANTENIMIENTO APTO. DO-301 ENERO  2018', 14, 5693, 435, 1783, 8, '', 7, 'GUILLERMO CORTEZ', 3718, '', '2018-03-26 16:57:12'),
(454, 8, 8, '2018-01-10', 1, '436.00', ' REEMBOLSO ALQ DO-202 DIC 2017 Y  ENERO 2018\r\n ERICK BENAVIDES', 14, 5693, 436, 1936, 8, '', 7, 'GUILLERMO CORTEZ', 3719, '', '2018-03-26 20:01:01'),
(455, 8, 8, '2018-01-16', 1, '1040.20', ' PAGO  DE  SEGURO  SOCIAL \r\nPLANILLA 2018', 14, 5747, 445, 1941, 8, '', 7, 'CAJA DE SEGURO SOCIAL ', 3720, '', '2018-03-26 20:01:41'),
(456, 8, 8, '2018-01-16', 1, '170.17', '   IMPUESTOS RÃ“TULO SERVICIOS DE ADMINISTRACIÃ“N \r\nENERO  2018', 14, 5786, 446, 1817, 8, '', 7, 'MUNICIPIO DE  PANAMÃ ', 3721, '', '2018-03-26 20:07:35'),
(457, 8, 8, '2018-01-18', 1, '1508.70', '  CONFECCIÃ“N  DE  CHEQUES  PARA  TODOS  LOS  PH ', 14, 5713, 448, 1824, 8, '', 7, 'FORMAS EFICIENTES, S.A.', 3722, '', '2018-03-26 20:18:42'),
(458, 8, 8, '2018-01-18', 1, '600.00', 'HONORARIOS  PROFESIONALES   DIC  Y  ENERO   \r\nCONFECCIÃ“N  DE I.T.B.M. DECLARACIÃ“N ', 14, 5774, 447, 1822, 8, '', 7, 'MARIBEL GUTIERRE', 3723, '', '2018-03-26 20:29:50'),
(459, 8, 8, '2018-01-19', 1, '789.50', 'REEMBOLSO ALQ FN-401 FEBRERO 2018', 14, 5697, 449, 1932, 8, '', 7, 'RAUL QUEZADA', 3724, '', '2018-03-26 21:12:08'),
(460, 8, 8, '2018-01-19', 1, '250.00', 'MANT.  APTO. FN-401 ENERO 2018 ', 14, 5697, 450, 1752, 8, '', 7, 'RAUL QUEZADA', 3725, '', '2018-03-26 21:16:09'),
(461, 8, 8, '2018-01-19', 1, '1320.00', 'REEMBOLSO     ALQ. APTO. AO -104', 14, 5776, 451, 2349, 8, '', 7, 'JPG', 3726, '', '2018-03-26 21:23:56'),
(462, 8, 8, '2018-01-19', 1, '330.00', 'MANT.  APTO.  AO-104 ENERO 2018\r\nPH  ALTAMIRA', 14, 5776, 452, 1924, 8, '', 7, 'JPG', 3727, '', '2018-03-26 21:27:19'),
(463, 8, 8, '2018-01-19', 1, '1050.00', ' MANT. APTO. AO-201  ENERO 2018', 14, 5776, 454, 2349, 8, '', 7, 'JPG', 3728, '', '2018-03-26 21:32:03'),
(465, 8, 8, '2018-01-19', 1, '250.00', 'MANT. AO -201   ENERO 2018', 14, 5776, 456, 1924, 8, '', 7, 'JPG', 3729, '', '2018-03-29 13:31:42'),
(466, 8, 8, '2018-01-19', 1, '1776.00', ' REEMBOLSO  ALQ. BO-202  ENERO 2018\r\n DEL 27/12/2017  AL  26/01/2018', 14, 5776, 457, 2349, 8, '', 7, 'JPG', 3730, '', '2018-03-29 13:34:45'),
(467, 8, 8, '2018-01-19', 1, '224.00', ' MANT.  BO-202   ENERO 2018', 14, 5776, 458, 1924, 8, '', 7, 'JPG', 3731, '', '2018-03-29 13:42:40'),
(468, 8, 8, '2018-01-19', 1, '1036.00', 'REEMBOLSO ALQ  LOCAL 1 CENTRO PLAZA ENERO 2018', 14, 5775, 459, 2350, 8, '', 7, 'HENSA', 3732, '', '2018-03-29 13:46:57'),
(469, 8, 8, '2018-01-19', 1, '264.00', 'MANT.  LOCAL 1 CENTRO PLAZA   ENERO 2018', 14, 5775, 460, 1915, 8, '', 7, 'HENSA', 3733, '', '2018-03-29 14:21:19'),
(470, 8, 8, '2018-01-19', 1, '4173.00', 'REEMBOLSO ALQ. OFIB. 11  ENERO 2018', 14, 5775, 461, 2350, 8, '', 7, 'HENSA', 3734, '', '2018-03-29 14:29:38'),
(471, 8, 8, '2018-01-19', 1, '1100.00', 'REEMBOLSO  ALQ.  APTO.  GE-203  ENERO 2018', 14, 5731, 462, 2365, 8, '', 7, 'JACQUELINE PETTI', 3735, '', '2018-03-29 15:08:18'),
(472, 8, 8, '2018-01-19', 1, '6940.00', 'REEMBOLSO  GALERA 4    ENERO 2018', 14, 5787, 464, 2372, 8, '', 7, 'DESARROLLOS PLAZA  MAYOR, S.A. ', 3736, '', '2018-03-29 15:25:30'),
(473, 8, 8, '2018-01-19', 1, '560.00', ' MANT. GALERA 4.  PARQ. INDUSTRIAL ENERO 2018', 14, 5787, 465, 2371, 8, '', 7, 'DESARROLLOS PLAZA  MAYOR, S.A. ', 3737, '', '2018-03-29 15:29:58'),
(474, 8, 8, '2018-01-27', 1, '851.18', 'REEMBOLSO LOCAL 22  CRYSTAL  ENERO 2018', 14, 5776, 466, 2349, 8, '', 7, 'JPG', 3739, '', '2018-03-29 15:37:49'),
(475, 8, 8, '2018-01-27', 1, '851.18', 'REEMBOLSO ALQ. LOCAL 22 CRYSTAL  ENERO 2018', 14, 5775, 467, 2350, 8, '', 7, 'HENSA', 3740, '', '2018-03-29 15:41:37'),
(476, 8, 8, '2018-01-29', 2, '750.00', 'PLANILLA SALARIOS IIDA ENERO   2018', 14, 5773, 425, 2015, 8, '', 7, 'ANA CAROLINA FELIZOLA', 3741, '', '2018-03-29 15:47:42'),
(478, 8, 8, '2018-01-29', 1, '350.00', 'YADIRA  PLANILLA IIDA  DE  ENERO  2018', 14, 5788, 468, 2015, 8, '', 7, 'YADIRA  BELLERA ', 3742, '', '2018-03-29 16:38:56'),
(479, 8, 8, '2018-01-29', 3, '428.49', 'PLANILLA  SALARIO  IIDA  ENERO  2018', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3743, '', '2018-03-29 16:40:06'),
(480, 8, 8, '2018-01-29', 4, '189.97', 'PLANILLA  SALARIO  ENERO \r\nBANESCO ', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3744, '', '2018-03-29 16:40:57'),
(499, 8, 8, '2018-01-29', 1, '600.00', 'PLANILLA II  QUINCENA  ENERO 2018', 14, 5784, 469, 2015, 8, '', 7, 'YARISEL SANCHEZ', 3756, '', '2018-04-02 19:19:46'),
(505, 8, 8, '2018-01-30', 2, '200.00', 'PLANILLA SALARIO  ENERO ', 14, 5698, 426, 2015, 8, '', 7, 'JESSICA LOPEZ', 3757, '', '2018-04-04 19:07:38'),
(506, 8, 8, '2018-01-30', 1, '700.00', 'REEMBOLSO APTO.   FN-402  ENERO 2018', 14, 5695, 473, 2352, 8, '', 7, 'SILVANA PETTI', 3759, '', '2018-04-04 20:14:45'),
(507, 8, 8, '2018-01-30', 1, '299.91', '  GASTOS  VARIOS ENERO\r\nCHQ. HECTOR FELIZOLA', 14, 4140, 474, 1826, 8, '', 7, 'CAJA MENUDA', 3760, '', '2018-04-04 20:23:26'),
(508, 8, 8, '2018-01-31', 1, '5866.28', 'REEMBOLSO ALQ. OFIBODEGA 6  ENERO  2018', 14, 5776, 475, 2349, 8, '', 7, 'JPG', 3762, '', '2018-04-04 20:38:49'),
(509, 8, 8, '2018-01-31', 1, '224.00', ' MANT.  FN-402  DIC 2017', 14, 5695, 476, 1767, 8, '', 7, 'SILVANA PETTI', 3763, '', '2018-04-04 20:42:18'),
(510, 8, 8, '2018-01-31', 1, '850.00', ' REEMBOLSO ALQ.  AE-505 ENERO\r\n22/01/18 AL  22/02/18', 14, 5776, 477, 2349, 8, '', 7, 'JPG', 3764, '', '2018-04-04 20:52:11'),
(511, 8, 8, '2018-01-31', 1, '300.00', 'MANT.  AE-505   ENERO  2018', 14, 5776, 478, 1924, 8, '', 7, 'JPG', 3765, '', '2018-04-04 21:09:14'),
(512, 8, 8, '2018-01-31', 1, '855.00', 'REEMBOLSO  ALQ EN-405  FEBRERO  2018', 14, 5696, 479, 1933, 8, '', 7, 'MILAGROS RODRIGUEZ', 3766, '', '2018-04-04 21:20:43'),
(513, 8, 8, '2018-01-31', 1, '122.65', 'REEMBOLSO  ALQ.   EN-205 FEBRERO 2018', 14, 5694, 480, 1938, 8, '', 7, 'EURIPIDES PONTE', 3767, '', '2018-04-04 21:28:57'),
(514, 8, 8, '2018-01-31', 1, '360.00', ' MANT.  APTO.  EN -205    / Nov Y Dic 2017', 14, 5694, 238, 1813, 8, '', 7, 'EURIPIDES PONTE', 3768, '', '2018-04-04 21:39:50'),
(515, 8, 11, '2018-01-31', 1, '180.00', 'MANT. APTO.  ENE-205   ENERO  2018\r\nMAS  RECARGO  PAGADO    CHQ. 3768', 14, 5694, 239, 1813, 8, '', 7, 'EURIPIDES PONTE', 0, '', '2018-04-04 21:43:19'),
(516, 8, 11, '2018-01-31', 1, '180.00', 'MANT. APTO.  EN-205  FEBRERO   2018\r\nMAS  RECARGO  PAGADO    CHQ. 3768', 14, 5694, 240, 1813, 8, '', 7, 'EURIPIDES PONTE', 0, '', '2018-04-04 21:44:28'),
(517, 8, 8, '2018-01-31', 2, '558.00', 'MANT. APTO.  EN-205  ABRIL MAYO Y JUNIO 2017', 14, 5694, 238, 1813, 8, '', 7, 'EURIPIDES PONTE', 3769, '', '2018-04-04 21:50:20'),
(575, 8, 8, '2018-01-31', 1, '250.00', 'CUOTA  DE  MANTENIMIENTO  APTO. DO-301', 14, 5693, 491, 1783, 8, '', 7, 'GUILLERMO CORTEZ', 3770, '', '2018-04-18 19:26:25'),
(576, 8, 8, '2018-02-02', 1, '581.00', 'COMISIÃ“N  POR  ALQUILER  APTO.  AE-203', 14, 5796, 492, 2376, 8, '', 7, 'AMILCAR FIGUERA', 3771, '', '2018-04-19 20:29:27'),
(577, 8, 8, '2018-02-06', 1, '230.00', '  HONORARIOS  PROFESIONALES ', 14, 5770, 493, 1823, 8, '', 7, 'TOMAS LOPEZ', 3772, '', '2018-04-19 20:30:46'),
(578, 8, 8, '2018-02-06', 1, '250.00', 'CUOTA DE MANT, ENERO 2018 APTO  BE-201', 14, 5775, 494, 1915, 8, '', 7, 'HENSA', 3773, '', '2018-04-19 20:34:38'),
(579, 8, 8, '2018-02-06', 1, '600.00', 'REEMBOLSO ALQUILER  APTO. BE-201', 14, 5775, 495, 2350, 8, '', 7, 'HENSA', 3774, '', '2018-04-19 20:37:06'),
(580, 8, 8, '2018-02-06', 1, '250.00', ' CUOTA DE MANT. APTO BE-201 FEBRERO ', 14, 5787, 496, 1915, 8, '', 7, 'HENSA', 3775, '', '2018-04-19 20:41:39'),
(581, 8, 8, '2018-02-06', 1, '6940.00', 'REEMBOLSO  ALQUILER GALERA (4) FEBRERO ', 14, 5787, 497, 2372, 8, '', 7, 'DESARROLLOS PLAZA  MAYOR, S.A. ', 3776, '', '2018-04-19 20:42:13'),
(582, 8, 8, '2018-02-06', 1, '560.00', ' CUOTA DE MANT.   GALERA 4 FEBRERO  ', 14, 5787, 498, 2371, 8, '', 7, 'DESARROLLOS PLAZA  MAYOR, S.A. ', 3777, '', '2018-04-19 20:45:10'),
(583, 8, 8, '2018-02-06', 1, '836.00', ' REEMBOLSO  ALQUILER  APTO. ES-403 FEBRERO ', 14, 5691, 499, 1930, 8, '', 7, 'NORAIMA HERNANDEZ', 3778, '', '2018-04-19 20:48:12'),
(584, 8, 8, '2018-02-06', 1, '224.00', 'CUOTA DE MANT.  APTO. ES-403  FEBRERO 2018', 14, 5691, 500, 1943, 8, '', 7, 'NORAIMA HERNANDEZ', 3779, '', '2018-04-19 21:07:26'),
(585, 8, 8, '2018-02-06', 1, '693.00', 'REEMBOLSO  ALQUILER  APTO.  DO-202 FEBRERO\r\nERICK BENAVIDEZ', 14, 5693, 501, 1936, 8, '', 7, 'GUILLERMO CORTEZ', 3780, '', '2018-04-19 21:11:01'),
(586, 8, 8, '2018-02-06', 1, '150.00', ' CUOTA DE MANT. APTO.  DO-202 / FEB 2018 ', 14, 5693, 213, 1783, 8, '', 7, 'GUILLERMO CORTEZ', 3781, '', '2018-04-19 21:12:20'),
(587, 8, 8, '2018-02-06', 1, '1036.00', 'REEMBOLSO  ALQUILER  LOCAL 01 FEBRERO 2018', 14, 5775, 502, 2350, 8, '', 7, 'HENSA', 3782, '', '2018-04-19 21:14:59'),
(588, 8, 8, '2018-02-06', 1, '264.00', 'CUOTA DE MANT.  LOCAL 01  FEBRERO 2018', 14, 5775, 503, 1915, 8, '', 7, 'HENSA', 3783, '', '2018-04-19 21:17:44'),
(599, 8, 8, '2018-02-05', 1, '1522.50', 'REMBOLSO ALQUILER LOCAL 1 Y 2 CANAIMA FEBRERO 2018', 14, 5775, 512, 2350, 8, '', 7, 'HENSA', 3784, '', '2018-04-23 19:04:39'),
(601, 8, 8, '2018-02-05', 1, '700.00', 'PAGO DE MANTENIMIENTO DE LOCALES 1 Y 2 DE PLAZA CANAIMA', 14, 5775, 514, 1915, 8, '', 7, 'HENSA', 3785, '', '2018-04-23 19:55:13'),
(605, 8, 12, '2018-01-07', 1, '1150.00', 'REEMBOLSO LOCAL 22 CRYSTAL ENERO 2018', 14, 5775, 419, 2350, 8, '', 7, 'HENSA', 0, '', '2018-04-23 22:08:21'),
(606, 8, 8, '2018-02-05', 1, '1522.50', 'REEMBOLSO ALQUILER LOCAL 1 Y 2 PLAZA CANAIMA FEBRERO 2018', 14, 5776, 515, 2349, 8, '', 7, 'JPG', 3786, '', '2018-04-23 22:10:04'),
(607, 8, 8, '2018-02-06', 1, '5401.60', 'REMBOLSO DE ALQUILER PARQUE CENTENARIO OFIBODEGA 5 FEBRERO 2018', 14, 5775, 516, 2350, 8, '', 7, 'HENSA', 3787, '', '2018-04-23 22:12:45'),
(608, 8, 8, '2018-02-06', 1, '1425.00', 'PAGO DE CUOTA DE MANTENIMIENTO ENERO 2018 OFIBODEGA 5 Y FEBRERO 2018 OFIBODEGA 5 Y 11', 14, 5775, 517, 1915, 8, '', 7, 'HENSA', 3788, '', '2018-04-23 22:15:20'),
(609, 8, 8, '2018-02-08', 1, '1070.00', 'HONORARIOS PROFESIONALES', 14, 5804, 518, 1823, 8, '', 7, 'MARITZA CEDEÃ±O', 3789, '', '2018-04-23 22:43:40'),
(610, 8, 8, '2018-02-09', 1, '943.00', 'REEMBOLSO DE ALQUILER DO301 FEBRERO 2018', 14, 5693, 519, 1936, 8, '', 7, 'GUILLERMO CORTEZ', 3790, '', '2018-04-23 22:51:52'),
(611, 8, 8, '2018-02-09', 1, '500.00', 'CUOTA DE MANTENIMIENTO FEBRERO 2018 Y CUOTA DE MANTENIMIENTO ADICIONAL', 14, 5693, 520, 1781, 8, '', 7, 'GUILLERMO CORTEZ', 3791, '', '2018-04-23 23:01:19'),
(612, 8, 8, '2018-02-09', 1, '1003.06', 'REEMBOLSO DE ALQUILER LOCAL 23 CRYSTAL PLAZA', 14, 5776, 521, 2349, 8, '', 7, 'JPG', 3792, '', '2018-04-23 23:11:17'),
(613, 8, 8, '2018-02-09', 1, '1003.06', 'REEMBOLSO DE ALQUILER LOCAL 23 CRYSTAL', 14, 5775, 522, 2350, 8, '', 7, 'HENSA', 3793, '', '2018-04-24 17:49:25'),
(614, 8, 8, '2018-01-16', 1, '1508.70', 'CONFECCIÃ“N  DE   CHEQUES  CONTINUO', 14, 5713, 523, 1824, 8, '', 7, 'FORMAS EFICIENTES, S.A.', 3722, '', '2018-04-24 18:03:43'),
(615, 8, 8, '2018-02-09', 1, '415.94', ' CUOTA DE MANT.  LOCAL 23  PH CRYSTAL PLAZA  MALL   ENERO  Y  FEBRERO 2018', 14, 5776, 524, 1924, 8, '', 7, 'JPG', 3794, '', '2018-04-24 18:15:37'),
(616, 8, 11, '2018-02-09', 1, '415.94', ' CUOTA DE MANTENIMIENTO  LOCAL 23  ENERO Y  FEBRERO    PH  CRYSTAL  PLAZA  CHEQUE  3794', 14, 5775, 525, 1915, 8, '', 7, 'HENSA', 0, '', '2018-04-24 18:16:50'),
(617, 8, 8, '2018-02-10', 5, '428.49', 'PLANILLA  SALARIO I ERAS  QUINCENA  DE  FEBRERO ', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3797, '', '2018-04-24 18:20:58'),
(618, 8, 8, '2018-02-10', 6, '189.96', 'PLANILLA  SALARIO   BANESCO \r\nCECILIA  RIOS', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3798, '', '2018-04-24 18:23:19'),
(619, 8, 8, '2018-02-10', 2, '1770.00', '  PLANILLA  SALARIO FEBRERO 2018', 14, 5779, 422, 2015, 8, '', 7, 'ROSALDA PETTI', 3800, '', '2018-04-24 19:27:02'),
(620, 8, 8, '2018-02-10', 2, '350.00', 'YADIRA  PLANILLA 2018  IERA  DE FEBRERO ', 14, 5788, 468, 2015, 8, '', 7, 'YADIRA  BELLERA ', 3801, '', '2018-04-24 19:27:53'),
(621, 8, 8, '2018-02-10', 3, '750.00', 'PLANILLA SALARIOS IERA  DE   FEBRERO ', 14, 5773, 425, 2015, 8, '', 7, 'ANA CAROLINA FELIZOLA', 3802, '', '2018-04-24 19:29:03'),
(622, 8, 8, '2018-02-10', 1, '210.00', '  COMPRA  DE  CARTELES   MARIA  LUISA  ZAMBRANO ', 14, 5724, 526, 1824, 8, '', 7, 'HECTOR FELIZOLA', 3803, '', '2018-04-24 19:32:13'),
(623, 8, 8, '2018-02-15', 1, '1200.00', ' PRESTAMO ', 14, 5773, 527, 2015, 8, '', 7, 'ANA CAROLINA FELIZOLA', 3805, '', '2018-04-24 19:53:47'),
(624, 8, 8, '2018-02-15', 1, '1500.00', 'YARISEL  SANCHEZ', 14, 5784, 528, 2015, 8, '', 7, 'YARISEL SANCHEZ', 3806, '', '2018-04-24 19:55:16'),
(625, 8, 8, '2018-03-15', 3, '200.00', 'PLANILLA SALARIO    EI ERA  QUINCENA  DE  FEBRERO', 14, 5698, 426, 2015, 8, '', 7, 'JESSICA LOPEZ', 3807, '', '2018-04-24 19:58:22'),
(626, 8, 8, '2018-02-15', 2, '600.00', 'PLANILLA 2018  FEBRERO ', 14, 5784, 469, 2015, 8, '', 7, 'YARISEL SANCHEZ', 3808, '', '2018-04-24 20:00:29'),
(627, 8, 8, '2018-02-15', 3, '1200.00', 'PLANILLA  VACACIONES  CORRESpondiente  a  2018', 14, 5784, 469, 2015, 8, '', 7, 'YARISEL SANCHEZ', 3809, '', '2018-04-24 20:51:18'),
(628, 8, 8, '2018-02-15', 7, '428.49', 'PLANILLA  SALARIO  IERA  QUINCENA  DE  FEBRERO ', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3810, '', '2018-04-24 20:52:48'),
(629, 8, 8, '2018-02-16', 1, '631.45', 'PLANILLA IERA  QUINCENA  DE FEBRERO ', 14, 5805, 530, 2015, 8, '', 7, 'DARWING SILVA', 3812, '', '2018-04-24 21:00:32'),
(630, 8, 8, '2018-02-16', 1, '224.00', ' CUOTA  DE MANT. FN-402  / FEB 2018', 14, 5695, 263, 1767, 8, '', 7, 'SILVANA PETTI', 3814, '', '2018-04-24 21:06:25'),
(631, 8, 8, '2018-02-16', 1, '1050.00', '  REEMBOLSO   ALQ.  APTO.   AO  201   FEBRERO 2018', 14, 5776, 532, 2349, 8, '', 7, 'JPG', 3815, '', '2018-04-24 21:10:29'),
(632, 8, 8, '2018-02-16', 1, '1320.00', 'REEMBOLSO  ALQUILER  APTO.   AO-104  FEBRERO ', 14, 5776, 534, 2349, 8, '', 7, 'JPG', 3817, '', '2018-04-24 21:26:23'),
(633, 8, 8, '2018-02-16', 1, '330.00', 'CUOTA  DE MANT  APTO.   AO-104', 14, 5776, 533, 1924, 8, '', 7, 'JPG', 3818, '', '2018-04-24 21:27:26'),
(635, 8, 8, '2018-02-16', 1, '1100.00', 'REEMBOLSO  ALQUILER  APTO.  GE-203 FEBRERO ', 14, 5731, 535, 2365, 8, '', 7, 'JACQUELINE PETTI', 3819, '', '2018-04-24 21:34:03'),
(636, 8, 8, '2018-02-16', 1, '286.00', '   REEMBOLSO   DIFERENCIA  ENERO   2018  MAS  RECARGO  CUOTA  DE MANT.  ENERO   2018', 14, 5695, 536, 2352, 8, '', 7, 'SILVANA PETTI', 3820, '', '2018-04-24 21:36:52'),
(637, 8, 8, '2018-02-16', 1, '250.00', 'CUOTA DE MANT.   APTO.  AO-201 FEBRERO  2018  ', 14, 5776, 537, 1924, 8, '', 7, 'JPG', 3821, '', '2018-04-24 21:39:47'),
(638, 8, 8, '2018-02-16', 1, '781.00', 'REEMBOLSO LOCAL 34  GALERIA  FEBRERO 2018', 14, 5776, 539, 2349, 8, '', 7, 'JPG', 3822, '', '2018-04-24 21:55:02'),
(639, 8, 8, '2018-02-19', 1, '7500.00', ' REEMBOLSO  CUOTA  DE MANT GALERA 4 PARQUE \r\n INDUSTRIAL CANAIMA   FEBRERO 2018 ', 14, 5787, 540, 2372, 8, '', 7, 'DESARROLLOS PLAZA  MAYOR, S.A. ', 3823, '', '2018-04-24 21:57:58'),
(640, 8, 8, '2018-02-19', 1, '150.00', 'COUOTA DE MANTENIMIENTO AE203 FEBRERO 2018', 14, 5796, 541, 2378, 8, '', 7, 'AMILCAR FIGUERA', 3824, '', '2018-04-25 13:34:12'),
(641, 8, 8, '2018-01-31', 1, '150.00', 'CUOTA DE MANTENIMIENTO CO502', 14, 5775, 542, 1915, 8, '', 7, 'HENSA', 3825, '', '2018-04-25 13:36:34'),
(642, 8, 8, '2018-01-31', 1, '150.00', 'CUOTA DE MANTENIMIENTO CO502 ENERO 2018', 14, 5775, 543, 1915, 8, '', 7, 'HENSA', 3826, '', '2018-04-25 13:38:27'),
(643, 8, 8, '2018-02-21', 1, '300.00', 'CERTIFICADO PAGADO POR NACIMIENTO DE HIJO', 14, 5784, 544, 1826, 8, '', 7, 'YARISEL SANCHEZ', 3828, '', '2018-04-25 13:58:33'),
(644, 8, 8, '2018-02-21', 1, '782.28', 'CUOTA DE MANTENIMIENTO FEBRERO Y MARZO 2018 LOCAL 6 CRYTAL', 14, 5778, 546, 1791, 8, '', 7, 'FELIPPO TURLI', 3829, '', '2018-04-25 14:14:48'),
(645, 8, 8, '2018-02-21', 1, '1200.00', 'PRESTAMO JESSICA LOPEZ', 14, 5698, 547, 1941, 8, '', 7, 'JESSICA LOPEZ', 3830, '', '2018-04-25 14:16:29'),
(646, 8, 8, '2018-02-21', 1, '1016.99', 'PAGO DE CUOTA DE MANTENIMIENTO LOCAL 14 Y 18 CRYSTAL PLAZA FEBRERO 2018', 14, 5778, 548, 1791, 8, '', 7, 'FELIPPO TURLI', 3831, '', '2018-04-25 14:20:55'),
(647, 8, 8, '2018-02-21', 1, '388.04', 'REEMBOLSO DE ALQUILER LOCAL 6 CRYSTAL DICIEMBRE 2017', 14, 5778, 549, 1937, 8, '', 7, 'FELIPPO TURLI', 3832, '', '2018-04-25 14:21:41'),
(648, 8, 8, '2018-02-21', 1, '727.54', 'PAGO DE CUOTA DE MANTENIMIENTO LOCAL 8 CRYTAL FEBRERO Y MARZO 2018', 14, 5761, 550, 2385, 8, '', 7, 'MARIA LUISA SANCHEZ', 3835, '', '2018-04-25 14:49:14'),
(649, 8, 8, '2018-02-21', 1, '396.50', 'CUOTA  DE MANT  LOCAL  21 PH CRYSTAL\r\n FEBRERO  Y  MARZO 2018', 14, 5775, 551, 1915, 8, '', 7, 'HENSA', 3836, '', '2018-04-25 19:45:51'),
(650, 8, 11, '2018-02-21', 1, '396.50', 'CUOTA DE MANT  LOCAL 21  PH  CRYSTAL    FEBRERO  Y  MARZO\r\nCHEQUE  3836', 14, 5776, 552, 1924, 8, '', 7, 'JPG', 0, '', '2018-04-25 19:46:47'),
(651, 8, 8, '2018-02-21', 1, '797.00', ' REEMBOLSO  ALQ. LOCAL 21  PH CRYSTAL    MEDUCA  DICIEMBRE  ', 14, 5776, 553, 2349, 8, '', 7, 'JPG', 3837, '', '2018-04-25 19:56:26'),
(652, 8, 8, '2018-02-21', 1, '797.90', 'REEMBOLSO  ALQ.  LOCAL 21 PH  CRYSTAL  MEDUCA  DICIEMBRE 2017', 14, 5775, 554, 2350, 8, '', 7, 'HENSA', 3838, '', '2018-04-25 19:57:03'),
(653, 8, 8, '2018-04-26', 11, '1.00', 'PLANILLA 2018 ', 14, 5806, 555, 2389, 8, '', 10, 'JESSICA LOPEZ', 3839, '', '2018-04-26 14:53:39'),
(654, 8, 8, '2018-02-22', 12, '3850.34', 'REEMBOLSO  ALQUILER  LOCAL 54 CRYSTAL MEDUCA   DICIEMBRE 2017', 14, 5806, 555, 2389, 8, '', 7, 'JESUS  GOMEZ  TORO', 3839, '', '2018-04-26 14:58:38'),
(655, 8, 8, '2018-02-21', 1, '693.22', 'CUOTA DE MANT.  PH CRYSTAL LOCAL 61 MEDUCA FEBRERO  Y  MARZO', 14, 5807, 556, 2393, 8, '', 7, 'INVERSIONES  YEPEZ BLANCO ', 3840, '', '2018-04-26 15:27:50'),
(656, 8, 8, '2018-02-21', 1, '1175.28', 'REEMBOLSO ALQ.   LOCAL 61 MEDUCA   DICIEMBRE ', 14, 5807, 557, 2392, 8, '', 7, 'INVERSIONES  YEPEZ BLANCO ', 3841, '', '2018-04-26 15:36:44'),
(657, 8, 8, '2018-02-21', 1, '1975.15', 'REEMBOLSO  ALQUILER  LOCAL 58   MEDUCA  DICIEMBRE 2017', 14, 5810, 558, 2395, 8, '', 7, 'DANIEL  DUPRET', 3842, '', '2018-04-26 16:01:51'),
(658, 8, 8, '2018-02-09', 1, '1368.67', 'REEMBOLSO  ALQUILER  LOCAL 70  MEDUCA   DICIEMBRE ', 14, 5779, 559, 2399, 8, '', 7, 'ROSALDA PETTI', 3843, '', '2018-04-26 16:17:01'),
(659, 8, 8, '2018-02-21', 1, '1938.98', 'REEMBOLSO  ALQUILER    LOCAL  81 MEDUCA   DICIEMBRE 2017', 14, 5809, 560, 2401, 8, '', 7, 'JUAN CARLOS  ZUHLSDORF', 3844, '', '2018-04-26 16:29:33'),
(661, 8, 8, '2018-02-21', 1, '738.34', '  CUOTA  DE MANT.  LOCAL 70 PH CRYSTAL  FEBRERO  Y  MARZO   ', 14, 5779, 561, 2400, 8, '', 7, 'ROSALDA PETTI', 3845, '', '2018-04-27 17:37:32'),
(662, 8, 8, '2018-02-21', 1, '1076.00', 'CUOTA DE MANT  LOCAL   81  PH  CRYSTAL   FEBRERO  Y  MARZO ', 14, 5809, 562, 2402, 8, '', 7, 'JUAN CARLOS  ZUHLSDORF', 3846, '', '2018-04-27 17:41:17'),
(663, 8, 8, '2018-02-21', 1, '879.78', 'CUOTA DE MANT. LOCAL  67  PH CRYSTAL  ENERO  FEBRERO  Y  MARZO', 14, 5809, 563, 2402, 8, '', 7, 'JUAN CARLOS  ZUHLSDORF', 3847, '', '2018-04-27 17:44:14'),
(664, 8, 8, '2018-02-21', 1, '1159.57', 'REEMBOLSO  DE  ALQ.  LOCAL  67   MEDUCA CRYSTAL  DICIEMBRE', 14, 5809, 564, 2401, 8, '', 7, 'JUAN CARLOS  ZUHLSDORF', 3848, '', '2018-04-27 19:06:50'),
(665, 8, 8, '2018-02-21', 1, '2653.85', 'REEMBOLSO ALQ.   LOCAL 76   MEDUCA  CRYSTAL  DICIEMBRE ', 14, 5811, 565, 2404, 8, '', 7, 'ADOLFO  SILVA', 3849, '', '2018-04-27 19:08:33'),
(666, 8, 8, '2018-02-22', 1, '224.00', 'CUOTA  DE MANT.  APTO.  BO-202  FEBRERO 2018', 14, 5776, 566, 1924, 8, '', 7, 'JPG', 3851, '', '2018-04-27 19:16:04'),
(667, 8, 8, '2018-02-22', 1, '448.00', ' CUOTA  DE MANT.  APTO.  AO-502  ENERO  Y  FEBRERO ', 14, 5776, 567, 1924, 8, '', 7, 'JPG', 3852, '', '2018-04-27 19:18:26'),
(668, 8, 8, '2018-02-22', 1, '300.00', ' CUOTA DE MANT.  APTO  AE-505   FEBRERO ', 14, 5776, 568, 1924, 8, '', 7, 'JPG', 3853, '', '2018-04-27 19:20:54'),
(670, 8, 8, '2018-02-22', 1, '701.48', 'CUOTA DE MANT.  LOCAL 11  MEDUCA  CRYSTAL    FEBRERO  Y  MARZO', 14, 5785, 570, 2355, 8, '', 7, 'GS VENTAS, S.A.', 3856, '', '2018-04-27 19:50:33'),
(671, 8, 8, '2018-02-22', 1, '701.48', 'CUOTA MANT.  LOCAL 10  MEDUCA  CRYSTAL   FEBRERO  Y  MARZO ', 14, 5785, 571, 2355, 8, '', 7, 'GS VENTAS, S.A.', 3857, '', '2018-04-27 19:59:54'),
(672, 8, 8, '2018-02-22', 1, '698.76', 'CUOTA DE MANT.  LOCAL 9 MEDUCA  CRYSTAL   FEBRERO  Y  MARZO ', 14, 5785, 572, 2355, 8, '', 7, 'GS VENTAS, S.A.', 3858, '', '2018-04-27 20:09:21'),
(673, 8, 8, '2018-03-26', 3, '2000.00', '  PLANILLA  SALARIO ENERO  A  DICIEMBRE  2018', 14, 5779, 422, 2015, 8, '', 7, 'ROSALDA PETTI', 3859, '', '2018-04-27 20:24:59'),
(674, 8, 8, '2018-02-21', 1, '1345.92', 'REEMBOLSO  ALQ. LOCAL 8 MEDUCA CRYSTAL  DICIEMBRE ', 14, 5813, 573, 2382, 8, '', 7, 'LUGRAZAM CORP.', 3860, '', '2018-04-27 20:42:03'),
(707, 8, 8, '2018-03-22', 1, '1297.80', 'REEMBOLSO  ALQ.  LOCAL 10 MEDUCA  DICIEMBRE ', 14, 5785, 574, 2358, 8, '', 7, 'GS VENTAS, S.A.', 3861, '', '2018-05-16 14:09:39'),
(708, 8, 8, '2018-02-22', 1, '1292.54', 'CUOTA    DE MANTENIMIENTO  LOCAL  9  MEDUCA  DICIEMBRE 2017', 14, 5785, 592, 2358, 8, '', 7, 'GS VENTAS, S.A.', 3862, '', '2018-05-16 14:14:18'),
(709, 8, 8, '2018-02-22', 1, '1297.80', '      REEMBOLSO  DE  ALQUILER    LOCAL 11  DICIEMBRE', 14, 5785, 594, 2358, 8, '', 7, 'GS VENTAS, S.A.', 3863, '', '2018-05-16 14:20:48'),
(710, 8, 8, '2018-03-27', 2, '300.00', ' HONORARIOS  PROFESIONALES   2018  MES  DE ENERO ', 14, 5774, 418, 1822, 8, '', 7, 'MARIBEL GUTIERRE', 3864, '', '2018-05-16 14:21:44'),
(711, 8, 8, '2018-03-27', 4, '600.00', 'PLANILLA SALARIOS ENE A DIC 2018\r\n\r\n II DA  PLANILLA  DE  FEBRERO ', 14, 5773, 425, 2015, 8, '', 7, 'ANA CAROLINA FELIZOLA', 3865, '', '2018-05-16 14:22:40'),
(712, 8, 8, '2018-02-27', 8, '428.49', 'PLANILLA  SALARIO  ENERO A DIC 2018\r\n\r\nPLANILLA  IIDA  DE  FEBRERO 2018', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3866, '', '2018-05-16 14:23:40'),
(713, 8, 8, '2018-03-27', 3, '350.00', 'YADIRA  PLANILLA 2018\r\nII DA  PLANILLA  DE   FEBRERO 2018 ', 14, 5788, 468, 2015, 8, '', 7, 'YADIRA  BELLERA ', 3867, '', '2018-05-16 14:24:35'),
(714, 8, 8, '2018-02-27', 4, '200.00', 'PLANILLA SALARIO    ENERO A  DICIEMBRE 2018\r\n\r\nII DA  PLANILLA  DE  FEBRERO 2018', 14, 5698, 426, 2015, 8, '', 7, 'JESSICA LOPEZ', 3868, '', '2018-05-16 14:26:21'),
(715, 8, 8, '2018-02-27', 9, '189.96', 'PLANILLA  SALARIO  ENERO A DIC 2018\r\n  DESCUENTO  DE  BANESCO  CECILIA  RIOS  MES DE   FEBRERO  ', 14, 5781, 427, 2015, 8, '', 7, 'CECILIA RIOS ', 3869, '', '2018-05-16 14:27:35'),
(716, 8, 8, '2018-02-28', 1, '91.43', 'REEMBOLSO   COMPRA  D E  LETRERO  PARA  PUBLICIDAD CALPE', 14, 5819, 595, 1826, 8, '', 7, 'ANA  PAULA DE PETTI', 3872, '', '2018-05-16 14:59:02'),
(717, 8, 8, '2018-03-27', 1, '2129.55', 'REEMBOLSO   MEDUCA  LOCAL  70  MES  DE   DICIEMBRE', 14, 5779, 596, 2399, 8, '', 7, 'ROSALDA PETTI', 3873, '', '2018-05-16 15:09:48'),
(860, 8, 8, '2018-02-28', 1, '85.60', 'Reparacion de Aire', 14, 5840, 660, 1776, 8, '', 7, 'MUNDO COOL', 3875, '', '2018-07-16 13:47:06'),
(861, 8, 0, '2018-02-28', 1, '30.00', 'INSTALACION DE EXTRATOR APT AO502', 14, 5770, 661, 1925, 8, '', 7, 'TOMAS LOPEZ', 0, '', '2018-07-16 13:58:30'),
(862, 8, 8, '2018-02-28', 1, '64.20', 'AE203 MANTENIMIENTO DE EQUIPO DE AIRE ACONDICIONADO', 14, 5840, 662, 2375, 8, '', 7, 'MUNDO COOL', 3877, '', '2018-07-16 14:06:29'),
(863, 8, 8, '2018-02-28', 1, '191.43', 'PINTURA APT BE405 MANO DE OBRA, REMBOLSO POR PUBLICIDAD PAULA PETTI', 14, 4921, 663, 2419, 8, '', 7, 'HECTOR FELIZOLA', 3878, '', '2018-07-16 14:12:06'),
(864, 8, 8, '2018-02-28', 4, '600.00', 'PLANILLA 2018', 14, 5784, 469, 2015, 8, '', 7, 'YARISEL SANCHEZ', 3880, '', '2018-07-16 15:38:20'),
(865, 8, 8, '2018-02-28', 1, '134.00', 'REPARACIONES GENERALES DE MUEBLES DEL AE105 TOMAS LOPEZ', 14, 5770, 664, 1925, 8, '', 7, 'TOMAS LOPEZ', 3883, '', '2018-07-16 16:59:50'),
(866, 8, 8, '2018-02-28', 1, '256.80', 'REMBOLSO A YARISEL POR PAGO A FRANCO Y ASOCIADO POR MANTENIMIENTO DE SISTEMA ADMINISTRATIVO', 14, 5784, 665, 2419, 8, '', 7, 'YARISEL SANCHEZ', 3884, '', '2018-07-16 17:03:20'),
(867, 8, 8, '2018-02-28', 1, '42.80', 'ASESORIA PEACHTREE POR ACCESO REMOTO', 14, 5845, 666, 2419, 8, '', 7, 'R.A FRANCO Y ASOCIADOS', 3886, '', '2018-07-16 17:12:23'),
(868, 8, 8, '2018-03-01', 1, '300.00', 'CUOTA DE MANTENIMIENTO AE505', 14, 5688, 667, 1924, 8, '', 7, 'PH ALTAMIRA GARDENS ', 3888, '', '2018-07-16 17:16:14'),
(869, 8, 8, '2018-03-01', 1, '464.34', 'REMBOLZO DE ALQUILER MARZO 2018 AE505', 14, 5676, 668, 2349, 8, '', 7, 'LUIS PETTI', 3890, '', '2018-07-16 20:54:30'),
(870, 8, 8, '2018-03-01', 1, '600.00', 'REMBOLZO DE ALQUILER CO502', 14, 5775, 669, 2350, 8, '', 7, 'HENSA', 3891, '', '2018-07-16 20:56:38'),
(871, 8, 8, '2018-03-01', 1, '789.50', 'REMBOLZO DE ALQUILER FN01 DEL 15 FEB AL 15 MARZO', 14, 5697, 670, 1932, 8, '', 7, 'RAUL QUEZADA', 3892, '', '2018-07-16 21:00:04'),
(872, 8, 8, '2018-03-01', 1, '250.00', 'FN-401 / FEBRERO 2018', 14, 5697, 291, 1752, 8, '', 7, 'RAUL QUEZADA', 3893, '', '2018-07-16 21:01:46'),
(873, 8, 8, '2018-03-02', 1, '1298.00', 'DEVOLUCION DE ALQUILER AO502 FEBRERO Y MARZO', 14, 5776, 671, 2349, 8, '', 7, 'JPG', 3894, '', '2018-07-16 21:04:47'),
(874, 8, 8, '2018-03-02', 1, '224.00', 'PAGO DE CUOTA DE MANTENIMIENTO MARZO 2018 AO502', 14, 5688, 672, 1924, 8, '', 7, 'PH ALTAMIRA GARDENS ', 3895, '', '2018-07-16 21:09:00'),
(875, 8, 8, '2018-03-03', 1, '1502.36', 'DEVOLUCION DE ALQUILER  FEBRERO Y MARZO LOCAL 22 CRYSTAL PLAZA', 14, 5776, 673, 2349, 8, '', 7, 'JPG', 3896, '', '2018-07-16 21:15:55'),
(876, 8, 8, '2018-03-03', 1, '1502.36', 'DEVOLUCION DE ALQUILER LOCAL 22 FEBRERO Y MARZO 2018', 14, 5775, 674, 2350, 8, '', 7, 'HENSA', 3897, '', '2018-07-16 21:19:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partida_documento_abono`
--
ALTER TABLE `partida_documento_abono`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partida_documento_abono`
--
ALTER TABLE `partida_documento_abono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1327;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
