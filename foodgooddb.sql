-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2024 at 09:13 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodgooddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `Message` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `Name`, `Email`, `Message`) VALUES
(2, '象璐璐', 'sweli@gmail.com', '送货啦');

-- --------------------------------------------------------

--
-- Table structure for table `drinklist`
--

DROP TABLE IF EXISTS `drinklist`;
CREATE TABLE IF NOT EXISTS `drinklist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `Price` int NOT NULL,
  `Description` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drinklist`
--

INSERT INTO `drinklist` (`ID`, `Name`, `Price`, `Description`, `img`) VALUES
(5, 'Latus', 2000, 'fresh', 'latus.jpg'),
(6, 'Tomatos', 4000, '1kg', 'tojpg.jpg'),
(7, 'Potato', 5500, '1kg', 'arlu.jpg'),
(8, 'Red Chili', 5000, '1kg', 'cl.jpg'),
(9, 'Gourd leaves', 1500, '1pic', 'ayjpg.jpg'),
(10, 'Chayote', 4500, '1viss', 'gg.jpg'),
(11, 'Eggplant', 3500, '1kg', 'ky.jpg'),
(12, 'Bamboo Shoot', 2000, '1pic', 'mc.jpg'),
(13, 'Cilantro', 1000, '1pic', 'nn.jpg'),
(14, 'Chinese Sour food', 4500, '1kg', 'mn.jpg'),
(15, 'Honey', 7500, '1pic', 'py.jpg'),
(16, ' Cauliflower', 2000, '1pic', 'pp.jpg'),
(17, 'Yobaday', 3500, '1kg', 'yy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foodlist`
--

DROP TABLE IF EXISTS `foodlist`;
CREATE TABLE IF NOT EXISTS `foodlist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Price` int NOT NULL,
  `Description` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodlist`
--

INSERT INTO `foodlist` (`ID`, `Name`, `Price`, `Description`, `img`) VALUES
(8, 'apple', 3500, 'very sweet', 'hot-2.png'),
(9, 'Banana', 3500, 'Shan state banana', 'bn.jpg'),
(10, 'Sour Papaya', 1500, 'fresh ', 'mu.jpg'),
(11, 'Plum', 7000, '1kg', 'mm.jpg'),
(12, 'Green Banana', 3500, '1pic', 'bnn.jpg'),
(13, 'Honey Orange', 6500, '1kg', 'orn.jpg'),
(14, 'Sugar Orange', 7500, '1kg', 'orng1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Address` varchar(1100) COLLATE utf8mb4_general_ci NOT NULL,
  `P_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID`, `Name`, `Phone`, `Address`, `P_name`, `Price`) VALUES
(6, '象璐璐', '09693265945', 'Hledan Street', ' Cauliflower', 2000),
(7, 'lulu', '69810110', 'u kyaw hla', 'Green Banana', 3500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
