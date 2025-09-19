-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2025 at 08:18 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `guesttable`
--

DROP TABLE IF EXISTS `guesttable`;
CREATE TABLE IF NOT EXISTS `guesttable` (
  `guestID` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `MI` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Birthdate` date NOT NULL,
  `Mobile` int NOT NULL,
  `Address` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`guestID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Mobile` (`Mobile`),
  UNIQUE KEY `guestID` (`guestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guesttable`
--

INSERT INTO `guesttable` (`guestID`, `name`, `MI`, `Lastname`, `Email`, `Username`, `Birthdate`, `Mobile`, `Address`, `password`) VALUES
(1, 'ryan', 'C', 'Magallanes', 'ryan@gmail.com', 'pol', '2015-09-08', 970504649, 'magdalo', 'ryan69'),
(2, 'jeremie', 'M', 'Balondon', 'jeremie@gmail.com', 'jeremy', '2015-09-06', 985299689, 'iloilo city', 'jeremie15');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guesttable`
--
ALTER TABLE `guesttable`
  ADD CONSTRAINT `guesttable_ibfk_1` FOREIGN KEY (`guestID`) REFERENCES `guesttable` (`guestID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
