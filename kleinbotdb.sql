-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 03:04 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kleinbotdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `IMAGE_NAME` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `PROPERTY_ID`, `IMAGE_NAME`) VALUES
(1, 1, 'living_room_1.jpg'),
(2, 1, 'kitchen_1.jpg'),
(3, 1, 'bathroom_1.jpg'),
(4, 1, 'bedroom_1.jpg'),
(5, 2, 'living_room_2.jpg'),
(6, 2, 'kitchen_2.jpg'),
(7, 2, 'bathroom_2.jpg'),
(8, 2, 'bedroom_2.jpg'),
(9, 3, 'living_room_3.jpg'),
(10, 3, 'kitchen_3.jpg'),
(11, 3, 'bathroom_3.jpg'),
(12, 3, 'bedroom_3.jpg'),
(13, 4, 'living_room_4.jpg'),
(14, 4, 'kitchen_4.jpg'),
(15, 4, 'bathroom_4.jpg'),
(16, 4, 'bedroom_4.jpg'),
(17, 5, 'living_room_5.jpg'),
(18, 5, 'kitchen_.jpg5'),
(19, 5, 'bathroom_.jpg5'),
(20, 5, 'bedroom_5.jpg'),
(21, 6, 'living_room_6.jpg'),
(22, 6, 'kitchen_6.jpg'),
(23, 6, 'bathroom_6.jpg'),
(24, 6, 'bedroom_6.jpg'),
(25, 7, 'living_room_7.jpg'),
(26, 7, 'kitchen_7.jpg'),
(27, 7, 'bathroom_7.jpg'),
(28, 7, 'bedroom_7.jpg'),
(29, 8, 'living_room_8.jpg'),
(30, 8, 'kitchen_8.jpg'),
(31, 8, 'bathroom_8.jpg'),
(32, 8, 'bedroom_8.jpg'),
(33, 9, 'living_room_9.jpg'),
(34, 9, 'kitchen_9.jpg'),
(35, 9, 'bathroom_9.jpg'),
(36, 9, 'bedroom_9.jpg'),
(37, 10, 'living_room_10.jpg'),
(38, 10, 'kitchen_10.jpg'),
(39, 10, 'bathroom_10.jpg'),
(40, 10, 'bedroom_10.jpg'),
(41, 11, 'living_room_11.jpg'),
(42, 11, 'kitchen_1.jpg'),
(43, 11, 'bathroom_1.jpg'),
(44, 11, 'bedroom_1.jpg'),
(45, 12, 'living_room_12.jpg'),
(46, 12, 'kitchen_2.jpg'),
(47, 12, 'bathroom_2.jpg'),
(48, 12, 'bedroom_2.jpg'),
(49, 13, 'living_room_13.jpg'),
(50, 13, 'kitchen_3.jpg'),
(51, 13, 'bathroom_3.jpg'),
(52, 13, 'bedroom_3.jpg'),
(53, 14, 'living_room_14.jpg'),
(54, 14, 'kitchen_4.jpg'),
(55, 14, 'bathroom_4.jpg'),
(56, 14, 'bedroom_4.jpg'),
(57, 15, 'living_room_15.jpg'),
(58, 15, 'kitchen_5.jpg'),
(59, 15, 'bathroom_5.jpg'),
(60, 15, 'bedroom_5.jpg'),
(61, 16, 'living_room_16.jpg'),
(62, 16, 'kitchen_6.jpg'),
(63, 16, 'bathroom_6.jpg'),
(64, 16, 'bedroom_6.jpg'),
(65, 17, 'living_room_17.jpg'),
(66, 17, 'kitchen_7.jpg'),
(67, 17, 'bathroom_7.jpg'),
(68, 17, 'bedroom_7.jpg'),
(69, 18, 'living_room_18.jpg'),
(70, 18, 'kitchen_8.jpg'),
(71, 18, 'bathroom_8.jpg'),
(72, 18, 'bedroom_8.jpg'),
(73, 19, 'living_room_19.jpg'),
(74, 19, 'kitchen_9.jpg'),
(75, 19, 'bathroom_9.jpg'),
(76, 19, 'bedroom_9.jpg'),
(77, 20, 'living_room_20.jpg'),
(78, 20, 'kitchen_10.jpg'),
(79, 20, 'bathroom_10.jpg'),
(80, 20, 'bedroom_10.jpg'),
(81, 21, 'living_room_1.jpg'),
(82, 21, 'kitchen_1.jpg'),
(83, 21, 'bathroom_1.jpg'),
(84, 21, 'bedroom_1.jpg'),
(85, 22, 'living_room_2.jpg'),
(86, 22, 'kitchen_2.jpg'),
(87, 22, 'bathroom_2.jpg'),
(88, 22, 'bedroom_2.jpg'),
(89, 23, 'living_room_3.jpg'),
(90, 23, 'kitchen_3.jpg'),
(91, 23, 'bathroom_3.jpg'),
(92, 23, 'bedroom_3.jpg'),
(93, 24, 'living_room_4.jpg'),
(94, 24, 'kitchen_4.jpg'),
(95, 24, 'bathroom_4.jpg'),
(96, 24, 'bedroom_4.jpg'),
(97, 25, 'living_room_5.jpg'),
(98, 25, 'kitchen_.jpg5'),
(99, 25, 'bathroom_.jpg5'),
(100, 25, 'bedroom_5.jpg'),
(101, 26, 'living_room_6.jpg'),
(102, 26, 'kitchen_6.jpg'),
(103, 26, 'bathroom_6.jpg'),
(104, 26, 'bedroom_6.jpg'),
(105, 27, 'living_room_7.jpg'),
(106, 27, 'kitchen_7.jpg'),
(107, 27, 'bathroom_7.jpg'),
(108, 27, 'bedroom_7.jpg'),
(109, 28, 'living_room_8.jpg'),
(110, 28, 'kitchen_8.jpg'),
(111, 8, 'bathroom_8.jpg'),
(112, 28, 'bedroom_8.jpg'),
(113, 29, 'living_room_9.jpg'),
(114, 29, 'kitchen_9.jpg'),
(115, 9, 'bathroom_9.jpg'),
(116, 29, 'bedroom_9.jpg'),
(117, 30, 'living_room_10.jpg'),
(118, 30, 'kitchen_10.jpg'),
(119, 30, 'bathroom_10.jpg'),
(120, 30, 'bedroom_10.jpg'),
(121, 31, 'living_room_11.jpg'),
(122, 31, 'kitchen_1.jpg'),
(123, 31, 'bathroom_1.jpg'),
(124, 31, 'bedroom_1.jpg'),
(125, 32, 'living_room_12.jpg'),
(126, 32, 'kitchen_2.jpg'),
(127, 32, 'bathroom_2.jpg'),
(128, 32, 'bedroom_2.jpg'),
(129, 33, 'living_room_13.jpg'),
(130, 33, 'kitchen_3.jpg'),
(131, 33, 'bathroom_3.jpg'),
(132, 33, 'bedroom_3.jpg'),
(133, 34, 'living_room_14.jpg'),
(134, 34, 'kitchen_4.jpg'),
(135, 34, 'bathroom_4.jpg'),
(136, 34, 'bedroom_4.jpg'),
(137, 35, 'living_room_15.jpg'),
(138, 35, 'kitchen_5.jpg'),
(139, 35, 'bathroom_5.jpg'),
(140, 35, 'bedroom_5.jpg'),
(141, 36, 'living_room_16.jpg'),
(142, 36, 'kitchen_6.jpg'),
(143, 36, 'bathroom_6.jpg'),
(144, 36, 'bedroom_6.jpg'),
(145, 37, 'living_room_17.jpg'),
(146, 37, 'kitchen_7.jpg'),
(147, 37, 'bathroom_7.jpg'),
(148, 37, 'bedroom_7.jpg'),
(149, 38, 'living_room_18.jpg'),
(150, 38, 'kitchen_8.jpg'),
(151, 38, 'bathroom_8.jpg'),
(152, 38, 'bedroom_8.jpg'),
(153, 39, 'living_room_19.jpg'),
(154, 39, 'kitchen_9.jpg'),
(155, 39, 'bathroom_9.jpg'),
(156, 39, 'bedroom_9.jpg'),
(157, 40, 'living_room_20.jpg'),
(158, 40, 'kitchen_10.jpg'),
(159, 40, 'bathroom_10.jpg'),
(160, 40, 'bedroom_10.jpg'),
(161, 41, 'living_room_11.jpg'),
(162, 41, 'kitchen_1.jpg'),
(163, 41, 'bathroom_1.jpg'),
(164, 41, 'bedroom_1.jpg'),
(165, 42, 'living_room_12.jpg'),
(166, 42, 'kitchen_2.jpg'),
(167, 42, 'bathroom_2.jpg'),
(168, 42, 'bedroom_2.jpg'),
(169, 43, 'living_room_13.jpg'),
(170, 43, 'kitchen_3.jpg'),
(171, 43, 'bathroom_3.jpg'),
(172, 43, 'bedroom_3.jpg'),
(173, 44, 'living_room_14.jpg'),
(174, 44, 'kitchen_4.jpg'),
(175, 44, 'bathroom_4.jpg'),
(176, 44, 'bedroom_4.jpg'),
(177, 45, 'living_room_15.jpg'),
(178, 45, 'kitchen_5.jpg'),
(179, 45, 'bathroom_5.jpg'),
(180, 45, 'bedroom_5.jpg'),
(181, 46, 'living_room_16.jpg'),
(182, 46, 'kitchen_6.jpg'),
(183, 46, 'bathroom_6.jpg'),
(184, 46, 'bedroom_6.jpg'),
(185, 47, 'living_room_17.jpg'),
(186, 47, 'kitchen_7.jpg'),
(187, 47, 'bathroom_7.jpg'),
(188, 47, 'bedroom_7.jpg'),
(189, 48, 'living_room_18.jpg'),
(190, 48, 'kitchen_8.jpg'),
(191, 48, 'bathroom_8.jpg'),
(192, 48, 'bedroom_8.jpg'),
(193, 49, 'living_room_19.jpg'),
(194, 49, 'kitchen_9.jpg'),
(195, 49, 'bathroom_9.jpg'),
(196, 49, 'bedroom_9.jpg'),
(197, 50, 'living_room_20.jpg'),
(198, 50, 'kitchen_10.jpg'),
(199, 50, 'bathroom_10.jpg'),
(200, 50, 'bedroom_10.jpg'),
(201, 51, 'living_room_1.jpg'),
(202, 51, 'kitchen_1.jpg'),
(203, 51, 'bathroom_1.jpg'),
(204, 51, 'bedroom_1.jpg'),
(205, 52, 'living_room_2.jpg'),
(206, 52, 'kitchen_2.jpg'),
(207, 52, 'bathroom_2.jpg'),
(208, 52, 'bedroom_2.jpg'),
(209, 53, 'living_room_3.jpg'),
(210, 53, 'kitchen_3.jpg'),
(211, 53, 'bathroom_3.jpg'),
(212, 53, 'bedroom_3.jpg'),
(213, 54, 'living_room_4.jpg'),
(214, 54, 'kitchen_4.jpg'),
(215, 54, 'bathroom_4.jpg'),
(216, 54, 'bedroom_4.jpg'),
(217, 55, 'living_room_5.jpg'),
(218, 55, 'kitchen_.jpg5'),
(219, 55, 'bathroom_.jpg5'),
(220, 55, 'bedroom_5.jpg'),
(221, 56, 'living_room_6.jpg'),
(222, 56, 'kitchen_6.jpg'),
(223, 56, 'bathroom_6.jpg'),
(224, 56, 'bedroom_6.jpg'),
(225, 57, 'living_room_7.jpg'),
(226, 57, 'kitchen_7.jpg'),
(227, 57, 'bathroom_7.jpg'),
(228, 57, 'bedroom_7.jpg'),
(229, 58, 'living_room_8.jpg'),
(230, 58, 'kitchen_8.jpg'),
(231, 59, 'bathroom_1.jpg'),
(232, 59, 'bedroom_6.jpg'),
(233, 59, 'kitchen_11.jpg'),
(234, 59, 'living_room_17.jpg'),
(235, 60, 'bathroom_9.jpg'),
(236, 60, 'bedroom_8.jpg'),
(237, 60, 'kitchen_12.jpg'),
(238, 60, 'living_room_17.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `AREA` varchar(100) DEFAULT NULL,
  `STREET` varchar(100) NOT NULL,
  `STREET_NUMBER` int(4) NOT NULL,
  `SIZE` int(10) DEFAULT NULL,
  `NUMBER_OF_ROOMS` int(11) NOT NULL,
  `IMAGE_NAME` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`ID`, `USER_ID`, `CITY`, `AREA`, `STREET`, `STREET_NUMBER`, `SIZE`, `NUMBER_OF_ROOMS`, `IMAGE_NAME`) VALUES
(1, 1, 'Thessaloniki', 'Thermi', 'Kapetan Chapsa', 5, 45, 4, 'living_room_1.jpg'),
(2, 2, 'Thessaloniki', 'Thermi', 'Kapenta Chapsa', 12, 87, 5, 'living_room_2.jpg'),
(3, 3, 'Thessaloniki', 'Thermi', 'Kileler', 15, 130, 4, 'living_room_3.jpg'),
(4, 4, 'Thessaloniki', 'Thermi', 'Kileler', 10, 140, 3, 'living_room_4.jpg'),
(5, 5, 'Thessaloniki', 'Kalamaria', 'Sofouli', 24, 200, 3, 'living_room_5.jpg'),
(6, 6, 'Thessaloniki', 'Kalamaria', 'Sofouli', 13, 150, 6, 'living_room_6.jpg'),
(7, 7, 'Thessaloniki', 'Kalamaria', 'Pontou', 5, 160, 5, 'living_room_7.jpg'),
(8, 8, 'Thessaloniki', 'Kalamaria', 'Pontou', 10, 90, 4, 'living_room_8.jpg'),
(9, 9, 'Thessaloniki', 'Evosmos', 'Kyprou', 19, 195, 4, 'living_room_9.jpg'),
(10, 10, 'Thessaloniki', 'Evosmos', 'Kyprou', 12, 70, 4, 'living_room_10.jpg'),
(11, 11, 'Thessaloniki', 'Evosmos', 'Maiandrou', 11, 60, 4, 'living_room_11.jpg'),
(12, 12, 'Thessaloniki', 'Evosmos', 'Maiandrou', 1, 180, 3, 'living_room_12.jpg'),
(13, 13, 'Thessaloniki', 'Touba', 'Papafi', 12, 120, 4, 'living_room_13.jpg'),
(14, 14, 'Thessaloniki', 'Touba', 'Papafi', 21, 120, 5, 'living_room_14.jpg'),
(15, 15, 'Thessaloniki', 'Touba', 'Markou Mpotsari', 19, 40, 6, 'living_room_15.jpg'),
(16, 16, 'Thessaloniki', 'Touba', 'Markou Mpotsari', 3, 50, 4, 'living_room_16.jpg'),
(17, 17, 'Thessaloniki', 'Charilaou', 'Glynou', 9, 90, 2, 'living_room_17.jpg'),
(18, 18, 'Thessaloniki', 'Charilaou', 'Glynou', 10, 90, 4, 'living_room_18.jpg'),
(19, 19, 'Thessaloniki', 'Charilaou', 'Anaximandrou', 100, 150, 3, 'living_room_19.jpg'),
(20, 20, 'Thessaloniki', 'Charilaou', 'Anaximandrou', 101, 110, 3, 'living_room_20.jpg'),
(21, 21, 'Thessaloniki', 'Thermi', 'Kapetan Chapsa', 5, 45, 4, 'kitchen_1.jpg'),
(22, 22, 'Thessaloniki', 'Thermi', 'Kapenta Chapsa', 12, 87, 5, 'kitchen_2.jpg'),
(23, 23, 'Thessaloniki', 'Thermi', 'Kileler', 15, 130, 4, 'kitchen_3.jpg'),
(24, 24, 'Thessaloniki', 'Thermi', 'Kileler', 10, 140, 3, 'kitchen_6.jpg'),
(25, 25, 'Thessaloniki', 'Kalamaria', 'Sofouli', 24, 200, 3, 'bathroom_1.jpg'),
(26, 26, 'Thessaloniki', 'Kalamaria', 'Sofouli', 13, 150, 6, 'bathroom_4.jpg'),
(27, 27, 'Thessaloniki', 'Kalamaria', 'Pontou', 5, 160, 5, 'living_room_7.jpg'),
(28, 28, 'Thessaloniki', 'Kalamaria', 'Pontou', 10, 90, 4, 'living_room_8.jpg'),
(29, 29, 'Thessaloniki', 'Evosmos', 'Kyprou', 19, 195, 4, 'bedroom_8.jpg'),
(30, 30, 'Thessaloniki', 'Evosmos', 'Kyprou', 12, 70, 4, 'bedroom_9.jpg'),
(31, 31, 'Thessaloniki', 'Evosmos', 'Maiandrou', 11, 60, 4, 'bedroom_1.jpg'),
(32, 32, 'Thessaloniki', 'Evosmos', 'Maiandrou', 1, 180, 3, 'living_room_12.jpg'),
(33, 33, 'Thessaloniki', 'Touba', 'Papafi', 12, 120, 4, 'living_room_13.jpg'),
(34, 34, 'Thessaloniki', 'Touba', 'Papafi', 21, 120, 5, 'living_room_14.jpg'),
(35, 35, 'Thessaloniki', 'Touba', 'Markou Mpotsari', 19, 40, 6, 'living_room_15.jpg'),
(36, 36, 'Thessaloniki', 'Touba', 'Markou Mpotsari', 3, 50, 4, 'living_room_16.jpg'),
(37, 37, 'Thessaloniki', 'Charilaou', 'Glynou', 9, 90, 2, 'living_room_17.jpg'),
(38, 38, 'Thessaloniki', 'Charilaou', 'Glynou', 10, 90, 4, 'bathroom_23.jpg'),
(39, 39, 'Thessaloniki', 'Charilaou', 'Anaximandrou', 100, 150, 3, 'bathroom_3.jpg'),
(40, 40, 'Thessaloniki', 'Charilaou', 'Anaximandrou', 101, 110, 3, 'living_room_10.jpg'),
(41, 41, 'Thessaloniki', 'Thermi', 'Kapetan Chapsa', 5, 45, 4, 'kitchen_1.jpg'),
(42, 42, 'Thessaloniki', 'Thermi', 'Kapenta Chapsa', 12, 87, 5, 'bathroom_2.jpg'),
(43, 43, 'Thessaloniki', 'Thermi', 'Kileler', 15, 130, 4, 'bedroom_3.jpg'),
(44, 44, 'Thessaloniki', 'Thermi', 'Kileler', 10, 140, 3, 'bedroom_4.jpg'),
(45, 45, 'Thessaloniki', 'Kalamaria', 'Sofouli', 24, 200, 3, 'living_room_5.jpg'),
(46, 46, 'Thessaloniki', 'Kalamaria', 'Sofouli', 13, 150, 6, 'living_room_16.jpg'),
(47, 47, 'Thessaloniki', 'Kalamaria', 'Pontou', 5, 160, 5, 'living_room_17.jpg'),
(48, 48, 'Thessaloniki', 'Kalamaria', 'Pontou', 10, 90, 4, 'living_room_18.jpg'),
(49, 49, 'Thessaloniki', 'Thermi', 'Kapetan Chapsa', 5, 45, 4, 'kitchen_8.jpg'),
(50, 50, 'Thessaloniki', 'Thermi', 'Kapenta Chapsa', 12, 87, 5, 'living_room_2.jpg'),
(51, 51, 'Thessaloniki', 'Thermi', 'Kileler', 15, 130, 4, 'bathroom_2.jpg'),
(52, 52, 'Thessaloniki', 'Thermi', 'Kileler', 10, 140, 3, 'living_room_4.jpg'),
(53, 53, 'Thessaloniki', 'Kalamaria', 'Sofouli', 24, 200, 3, 'living_room_15.jpg'),
(54, 54, 'Thessaloniki', 'Kalamaria', 'Sofouli', 13, 150, 6, 'bedroom_6.jpg'),
(55, 55, 'Thessaloniki', 'Kalamaria', 'Pontou', 5, 160, 5, 'living_room_7.jpg'),
(56, 56, 'Thessaloniki', 'Kalamaria', 'Pontou', 10, 90, 4, 'living_room_8.jpg'),
(57, 57, 'Thessaloniki', 'Thermi', 'Kileler', 15, 130, 4, 'kitchen_5.jpg'),
(58, 58, 'Thessaloniki', 'Thermi', 'Kileler', 10, 140, 3, 'living_room_4.jpg'),
(59, 59, 'Thessaloniki', 'Evosmos', 'M. Aleksandrou', 1, 90, 3, 'bathroom_1.jpg'),
(60, 60, 'Thessaloniki', 'Toumpa', 'M. Aleksandrou', 1, 90, 3, 'bathroom_9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `PRICE` int(100) DEFAULT NULL,
  `PROPERTY_DESCRIPTION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`ID`, `PROPERTY_ID`, `PRICE`, `PROPERTY_DESCRIPTION`) VALUES
(1, 11, 110, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone dry well'),
(2, 12, 100, 'The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The shot is cool'),
(3, 13, 130, 'The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke omicron'),
(4, 14, 140, 'The house itself is surrounded by a well kept garden'),
(5, 15, 199, 'The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around the clock'),
(6, 16, 241, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone daa'),
(7, 17, 200, 'The house itself is surrounded by a well kept garden'),
(8, 18, 130, 'The building is cool'),
(9, 19, 300, 'Very nice garden'),
(10, 20, 100, 'Magnificent view. Parking space'),
(11, 31, 110, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone daa'),
(12, 32, 100, 'The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The soup look yummy'),
(13, 33, 130, 'The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke of my head'),
(14, 34, 140, 'The house itself is surrounded by a well kept garden'),
(15, 35, 199, 'The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around the country'),
(16, 36, 241, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone do make everything great again.'),
(17, 37, 200, 'The house itself is surrounded by a well kept garden'),
(18, 38, 130, 'The building is cool'),
(19, 39, 300, 'Very nice garden'),
(20, 40, 100, 'Magnificent view. Parking space'),
(21, 59, 449, 'Very good apartment!');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `PRICE` int(100) DEFAULT NULL,
  `PROPERTY_DESCRIPTION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`ID`, `PROPERTY_ID`, `PRICE`, `PROPERTY_DESCRIPTION`) VALUES
(0, 1, 110000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone do make a perfect enviroment'),
(0, 2, 100000, 'The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The such a thing called love'),
(0, 3, 130000, 'The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke oh my GOD'),
(0, 4, 140000, 'The house itself is surrounded by a well kept garden'),
(0, 5, 199000, 'The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around '),
(0, 6, 241000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone d'),
(0, 7, 200000, 'The house itself is surrounded by a well kept garden'),
(0, 8, 130000, 'The building is cool'),
(0, 9, 300000, 'Very nice garden'),
(0, 10, 10000, 'Magnificent view. Parking space'),
(0, 21, 110000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone da'),
(0, 22, 100000, 'The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The sofa is cool'),
(0, 23, 130000, 'The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke out of roof'),
(0, 24, 140000, 'The house itself is surrounded by a well kept garden'),
(0, 25, 199000, 'The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around the block'),
(0, 26, 241000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone darling'),
(0, 27, 200000, 'The house itself is surrounded by a well kept garden'),
(0, 28, 130000, 'The building is cool'),
(0, 29, 300000, 'Very nice garden'),
(0, 30, 10000, 'Magnificent view. Parking space'),
(0, 41, 110000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone do make a perfect enviroment'),
(0, 42, 100000, 'The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The such a thing called love'),
(0, 43, 130000, 'The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke oh my GOD'),
(0, 44, 140000, 'The house itself is surrounded by a well kept garden'),
(0, 45, 199000, 'The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around '),
(0, 46, 241000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone d'),
(0, 47, 200000, 'The house itself is surrounded by a well kept garden'),
(0, 48, 130000, 'The building is cool'),
(0, 49, 300000, 'Very nice garden'),
(0, 50, 10000, 'Magnificent view. Parking space'),
(0, 51, 110000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone da'),
(0, 52, 100000, 'The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The sofa is cool'),
(0, 53, 130000, 'The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke out of roof'),
(0, 54, 140000, 'The house itself is surrounded by a well kept garden'),
(0, 55, 199000, 'The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around the block'),
(0, 56, 241000, 'From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone darling'),
(0, 57, 200000, 'The house itself is surrounded by a well kept garden'),
(0, 58, 130000, 'The building is cool'),
(0, 60, 49000, 'The best house!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(100) DEFAULT NULL,
  `LAST_NAME` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`, `EMAIL`) VALUES
(1, 'Bill', 'Gates', '6988736543', 'sar@gmail.com'),
(2, 'Bruce', 'Dickinson', '6982635423', 'kal@gmail.com'),
(3, 'Zach', 'Galifianakis', '6937460052', 'lemr@gmail.com'),
(4, 'Jeff', 'Bezos', '6905746251', 'sjfhar@gmail.com'),
(5, 'Dennis', 'Richie', '6900394872', 'sljsar@gmail.com'),
(6, 'George', 'Clooney', '6987364452', 'sacvnhr@gmail.com'),
(7, 'John', 'Snow', '6955009384', 'str@gmail.com'),
(8, 'Elon', 'Musk', '6976448372', 'bgfsar@gmail.com'),
(9, 'Angelina', 'Jolie', '6988773264', 'satyur@gmail.com'),
(10, 'Kim', 'Kardashian', '6913887543', 'cxxsar@gmail.com'),
(11, 'Terry', 'Crews', '6904997866', 'saetrr@gmail.com'),
(12, 'Marilyn', 'Manson', '6987634557', 'safdvvdr@gmail.com'),
(13, 'Nikola', 'Tesla', '6987348537', 'dddsar@gmail.com'),
(14, 'Steve', 'Jobs', '6983737445', 'sagfhgr@gmail.com'),
(15, 'Albert', 'Einstein', '6983772552', 'oiiosar@gmail.com'),
(16, 'Paris', 'Hilton', '6900177972', 'svbmvar@gmail.com'),
(17, 'Alan', 'Turing', '6922213174', 'sddswar@gmail.com'),
(18, 'Stephen', 'Hawking', '6926253444', 'jgjfsar@gmail.com'),
(19, 'Alice', 'Cooper', '6943625166', 'nnnbsar@gmail.com'),
(20, 'Isaac', 'Newton', '6988435346', 'mmjsar@gmail.com'),
(21, 'Bill', 'Gates', '6988736543', 'sar@gmail.com'),
(22, 'Bruce', 'Dickinson', '6982635423', 'kal@gmail.com'),
(23, 'Zach', 'Galifianakis', '6937460052', 'lemr@gmail.com'),
(24, 'Jeff', 'Bezos', '6905746251', 'sjfhar@gmail.com'),
(25, 'Dennis', 'Richie', '6900394872', 'sljsar@gmail.com'),
(26, 'George', 'Clooney', '6987364452', 'sacvnhr@gmail.com'),
(27, 'John', 'Snow', '6955009384', 'str@gmail.com'),
(28, 'Elon', 'Musk', '6976448372', 'bgfsar@gmail.com'),
(29, 'Angelina', 'Jolie', '6988773264', 'satyur@gmail.com'),
(30, 'Kim', 'Kardashian', '6913887543', 'cxxsar@gmail.com'),
(31, 'Terry', 'Crews', '6904997866', 'saetrr@gmail.com'),
(32, 'Marilyn', 'Manson', '6987634557', 'safdvvdr@gmail.com'),
(33, 'Nikola', 'Tesla', '6987348537', 'dddsar@gmail.com'),
(34, 'Steve', 'Jobs', '6983737445', 'sagfhgr@gmail.com'),
(35, 'Albert', 'Einstein', '6983772552', 'oiiosar@gmail.com'),
(36, 'Paris', 'Hilton', '6900177972', 'svbmvar@gmail.com'),
(37, 'Alan', 'Turing', '6922213174', 'sddswar@gmail.com'),
(38, 'Stephen', 'Hawking', '6926253444', 'jgjfsar@gmail.com'),
(39, 'Alice', 'Cooper', '6943625166', 'nnnbsar@gmail.com'),
(40, 'Isaac', 'Newton', '6988435346', 'mmjsar@gmail.com'),
(41, 'Bill', 'Gates', '6988736543', 'sar@gmail.com'),
(42, 'Bruce', 'Dickinson', '6982635423', 'kal@gmail.com'),
(43, 'Zach', 'Galifianakis', '6937460052', 'lemr@gmail.com'),
(44, 'Jeff', 'Bezos', '6905746251', 'sjfhar@gmail.com'),
(45, 'Dennis', 'Richie', '6900394872', 'sljsar@gmail.com'),
(46, 'George', 'Clooney', '6987364452', 'sacvnhr@gmail.com'),
(47, 'John', 'Snow', '6955009384', 'str@gmail.com'),
(48, 'Elon', 'Musk', '6976448372', 'bgfsar@gmail.com'),
(49, 'Angelina', 'Jolie', '6988773264', 'satyur@gmail.com'),
(50, 'Kim', 'Kardashian', '6913887543', 'cxxsar@gmail.com'),
(51, 'Terry', 'Crews', '6904997866', 'saetrr@gmail.com'),
(52, 'Marilyn', 'Manson', '6987634557', 'safdvvdr@gmail.com'),
(53, 'Nikola', 'Tesla', '6987348537', 'dddsar@gmail.com'),
(54, 'Steve', 'Jobs', '6983737445', 'sagfhgr@gmail.com'),
(55, 'Albert', 'Einstein', '6983772552', 'oiiosar@gmail.com'),
(56, 'Paris', 'Hilton', '6900177972', 'svbmvar@gmail.com'),
(57, 'Alan', 'Turing', '6922213174', 'sddswar@gmail.com'),
(58, 'Stephen', 'Hawking', '6926253444', 'jgjfsar@gmail.com'),
(59, 'Nikos', 'Misofis', '6989742934', 'nikomiso92@gmail.com'),
(60, 'Nikos', 'Misofis', '6989742934', 'nikomiso92@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROPERTY_ID` (`PROPERTY_ID`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROPERTY_ID` (`PROPERTY_ID`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`PROPERTY_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `PROPERTY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`PROPERTY_ID`) REFERENCES `properties` (`ID`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`PROPERTY_ID`) REFERENCES `properties` (`ID`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`PROPERTY_ID`) REFERENCES `properties` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
