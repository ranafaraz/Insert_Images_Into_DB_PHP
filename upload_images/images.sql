-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2017 at 10:43 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photos`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `text`) VALUES
(18, '2016-Ford-Mustang-GT-burnout-red-tire-smoke.jpg', 'this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!vvvvv'),
(19, '2016-Ford-Mustang-GT-burnout-red-tire-smoke.jpg', 'this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!vvvvv'),
(20, '2016-Ford-Mustang-GT-burnout-red-tire-smoke.jpg', 'this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!vvvvv'),
(21, '2016-Ford-Mustang-GT-burnout-red-tire-smoke.jpg', 'this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!this car is amazing...!!!vvvvv');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
