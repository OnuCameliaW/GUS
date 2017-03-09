-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2015 at 05:38 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `clasamente`
--

CREATE TABLE IF NOT EXISTS `clasamente` (
  `Id_user` int(10) DEFAULT NULL,
  `Data_cl` date NOT NULL,
  `Score` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mesaje`
--

CREATE TABLE IF NOT EXISTS `mesaje` (
  `Id_user` int(10) NOT NULL,
  `Mesaj` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mesaje`
--

INSERT INTO `mesaje` (`Id_user`, `Mesaj`) VALUES
(3, 'Buna ! Foarte dragut jocul vostru . Bafta in continuare .'),
(2, ':*'),
(0, 'gfsfdsidgndgid hdshfijfia  awijd '),
(1, 'asdfghjkl'';gjwd  d wwyed sh gdshdshd ghsgdhs usgsdsfsg f'),
(4, ':)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `Name` varchar(20) DEFAULT NULL,
  `Pass` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Score` int(10) DEFAULT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Pass`, `Email`, `Score`, `Data`) VALUES
(0, 'Danut', 'parolamea', 'danut@yhaoo.com', NULL, NULL),
(1, 'Ionel', 'ionelpass', 'ionel.ion@yahoo.com', NULL, NULL),
(2, 'Mihai', 'parola', 'mihai.g@gmail.com', NULL, NULL),
(3, 'Camelia', 'onuc', 'onu.camelia@yahoo.com', NULL, NULL),
(4, 'Ramona', 'ramopassramo', 'turcu.ramona@yahoo.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
