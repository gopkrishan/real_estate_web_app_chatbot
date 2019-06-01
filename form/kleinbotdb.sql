-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 01:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

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
  `NUMBER_OF_ROOMS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`ID`, `USER_ID`, `CITY`, `AREA`, `STREET`, `STREET_NUMBER`, `SIZE`, `NUMBER_OF_ROOMS`) VALUES
(1, 1, 'Thessaloniki', 'Thermi', 'Kapetan Chapsa', 5, 45, 4),
(2, 2, 'Thessaloniki', 'Thermi', 'Kapenta Chapsa', 12, 87, 5),
(3, 3, 'Thessaloniki', 'Thermi', 'Kileler', 15, 130, 4),
(4, 4, 'Thessaloniki', 'Thermi', 'Kileler', 10, 140, 3),
(5, 5, 'Thessaloniki', 'Kalamaria', 'Sofouli', 24, 200, 3),
(6, 6, 'Thessaloniki', 'Kalamaria', 'Sofouli', 13, 150, 6),
(7, 7, 'Thessaloniki', 'Kalamaria', 'Pontou', 5, 160, 5),
(8, 8, 'Thessaloniki', 'Kalamaria', 'Pontou', 10, 90, 4),
(9, 9, 'Thessaloniki', 'Evosmos', 'Kyprou', 19, 195, 4),
(10, 10, 'Thessaloniki', 'Evosmos', 'Kyprou', 12, 70, 4),
(11, 11, 'Thessaloniki', 'Evosmos', 'Maiandrou', 11, 60, 4),
(12, 12, 'Thessaloniki', 'Evosmos', 'Maiandrou', 1, 180, 3),
(13, 13, 'Thessaloniki', 'Touba', 'Papafi', 12, 120, 4),
(14, 14, 'Thessaloniki', 'Touba', 'Papafi', 21, 120, 5),
(15, 15, 'Thessaloniki', 'Touba', 'Markou Mpotsari', 19, 40, 6),
(16, 16, 'Thessaloniki', 'Touba', 'Markou Mpotsari', 3, 50, 4),
(17, 17, 'Thessaloniki', 'Charilaou', 'Glynou', 9, 90, 2),
(18, 18, 'Thessaloniki', 'Charilaou', 'Glynou', 10, 90, 4),
(19, 19, 'Thessaloniki', 'Charilaou', 'Anaximandrou', 100, 150, 3),
(20, 20, 'Thessaloniki', 'Charilaou', 'Anaximandrou', 101, 110, 3);

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
(1, 11, 110, '\"From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone d'),
(2, 12, 100, '\"The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The s'),
(3, 13, 130, '\"The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke o'),
(4, 14, 140, '\"The house itself is surrounded by a well kept garden'),
(5, 15, 199, '\"The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around '),
(6, 16, 241, '\"From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone d'),
(7, 17, 200, '\"The house itself is surrounded by a well kept garden'),
(8, 18, 130, 'The building is cool'),
(9, 19, 300, 'Very nice garden'),
(10, 20, 100, 'Magnificent view. Parking space');

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
(1, 1, 110000, '\"From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone d'),
(2, 2, 100000, '\"The building is rectangular shaped. The house is half surrounded by glass overhanging panels. The s'),
(3, 3, 130000, '\"The roof is high and pyramid shaped and is covered with black roof tiles. Two large chimneys poke o'),
(4, 4, 140000, '\"The house itself is surrounded by a well kept garden'),
(5, 5, 199000, '\"The building is shaped like a T. The two extensions are linked by cloth sunscreens circling around '),
(6, 6, 241000, '\"From the outside this house looks cozy. It has been built with yellow pine wood and has tan stone d'),
(7, 7, 200000, '\"The house itself is surrounded by a well kept garden'),
(8, 8, 130000, 'The building is cool'),
(9, 9, 300000, 'Very nice garden'),
(10, 10, 10000, 'Magnificent view. Parking space');

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
(20, 'Isaac', 'Newton', '6988435346', 'mmjsar@gmail.com');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROPERTY_ID` (`PROPERTY_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

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
